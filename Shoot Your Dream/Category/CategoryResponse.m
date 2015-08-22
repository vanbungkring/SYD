//
//  CategoryResponse.m
//
//  Created by Ratna Kumalasari on 8/22/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "CategoryResponse.h"
#import "CategoryResult.h"


NSString *const kCategoryResponseError = @"error";
NSString *const kCategoryResponseResult = @"result";


@interface CategoryResponse ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation CategoryResponse

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
            self.error = [[self objectOrNilForKey:kCategoryResponseError fromDictionary:dict] boolValue];
    NSObject *receivedCategoryResult = [dict objectForKey:kCategoryResponseResult];
    NSMutableArray *parsedCategoryResult = [NSMutableArray array];
    if ([receivedCategoryResult isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedCategoryResult) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedCategoryResult addObject:[CategoryResult modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedCategoryResult isKindOfClass:[NSDictionary class]]) {
       [parsedCategoryResult addObject:[CategoryResult modelObjectWithDictionary:(NSDictionary *)receivedCategoryResult]];
    }

    self.result = [NSArray arrayWithArray:parsedCategoryResult];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithBool:self.error] forKey:kCategoryResponseError];
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
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForResult] forKey:kCategoryResponseResult];

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

    self.error = [aDecoder decodeBoolForKey:kCategoryResponseError];
    self.result = [aDecoder decodeObjectForKey:kCategoryResponseResult];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeBool:_error forKey:kCategoryResponseError];
    [aCoder encodeObject:_result forKey:kCategoryResponseResult];
}

- (id)copyWithZone:(NSZone *)zone
{
    CategoryResponse *copy = [[CategoryResponse alloc] init];
    
    if (copy) {

        copy.error = self.error;
        copy.result = [self.result copyWithZone:zone];
    }
    
    return copy;
}
+ (NSURLSessionDataTask *)getAllCategories:(NSDictionary *)parameters completionBlock:(void(^)(NSArray *json,NSError *error))completionBlock {
    return [[APIManager sharedClient]GET:[NSString stringWithFormat:@"%@%@category",BASE_URL,API_HOST] parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
        CategoryResponse *response = [[CategoryResponse alloc]initWithDictionary:responseObject];
        NSMutableArray *data = [[NSMutableArray alloc]init];
        if (!response.error) {
            for (NSDictionary *dict in [responseObject valueForKey:@"result"]) {
                CategoryResult *result = [[CategoryResult alloc]initWithDictionary:dict];
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
- (NSArray *)combineChild:(NSDictionary *)child {
    return nil;
}
@end
