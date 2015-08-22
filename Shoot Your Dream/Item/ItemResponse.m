//
//  ItemResponse.m
//
//  Created by Ratna Kumalasari on 8/22/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "ItemResponse.h"
#import "ItemResult.h"


NSString *const kItemResponseError = @"error";
NSString *const kItemResponseResult = @"result";


@interface ItemResponse ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ItemResponse

@synthesize error = _error;
@synthesize result = _result;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.error = [[self objectOrNilForKey:kItemResponseError fromDictionary:dict] boolValue];
    NSObject *receivedItemResult = [dict objectForKey:kItemResponseResult];
    NSMutableArray *parsedItemResult = [NSMutableArray array];
    if ([receivedItemResult isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedItemResult) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedItemResult addObject:[ItemResult modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedItemResult isKindOfClass:[NSDictionary class]]) {
       [parsedItemResult addObject:[ItemResult modelObjectWithDictionary:(NSDictionary *)receivedItemResult]];
    }

    self.result = [NSArray arrayWithArray:parsedItemResult];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithBool:self.error] forKey:kItemResponseError];
    NSMutableArray *tempArrayForResult = [NSMutableArray array];
    for (NSObject *subArrayObject in self.result) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForResult addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForResult addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForResult] forKey:kItemResponseResult];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.error = [aDecoder decodeBoolForKey:kItemResponseError];
    self.result = [aDecoder decodeObjectForKey:kItemResponseResult];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeBool:_error forKey:kItemResponseError];
    [aCoder encodeObject:_result forKey:kItemResponseResult];
}

- (id)copyWithZone:(NSZone *)zone
{
    ItemResponse *copy = [[ItemResponse alloc] init];
    
    if (copy) {

        copy.error = self.error;
        copy.result = [self.result copyWithZone:zone];
    }
    
    return copy;
}
+ (NSURLSessionDataTask *)getProductByCategories:(NSString *)categories parameters:(NSDictionary *)parameters completionBlock:(void(^)(NSArray *json,NSError *error))completionBlock {
    return [[APIManager sharedClient]GET:[NSString stringWithFormat:@"%@%@product/category/%@",BASE_URL,API_HOST,categories] parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
        ItemResponse *response = [[ItemResponse alloc]initWithDictionary:responseObject];
        NSMutableArray *data = [[NSMutableArray alloc]init];
        if (!response.error) {
            for (NSDictionary *dict in [responseObject valueForKey:@"result"]) {
                ItemResult *result = [[ItemResult alloc]initWithDictionary:dict];
                [data addObject:result];
            }
            if (completionBlock) {
                completionBlock([NSArray arrayWithArray:data], nil);
            }
        }

        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        [Common readErrorResponse:error response:task];
        completionBlock([NSArray array], error);
        
    }];
}

@end
