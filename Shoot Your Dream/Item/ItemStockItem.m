//
//  ItemStockItem.m
//
//  Created by Ratna Kumalasari on 8/22/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "ItemStockItem.h"


NSString *const kItemStockItemIsInStock = @"is_in_stock";


@interface ItemStockItem ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ItemStockItem

@synthesize isInStock = _isInStock;


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
            self.isInStock = [self objectOrNilForKey:kItemStockItemIsInStock fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.isInStock forKey:kItemStockItemIsInStock];

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

    self.isInStock = [aDecoder decodeObjectForKey:kItemStockItemIsInStock];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_isInStock forKey:kItemStockItemIsInStock];
}

- (id)copyWithZone:(NSZone *)zone
{
    ItemStockItem *copy = [[ItemStockItem alloc] init];
    
    if (copy) {

        copy.isInStock = [self.isInStock copyWithZone:zone];
    }
    
    return copy;
}


@end
