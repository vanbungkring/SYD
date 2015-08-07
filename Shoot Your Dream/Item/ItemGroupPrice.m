//
//  ItemGroupPrice.m
//
//  Created by Ratna Kumalasari on 8/7/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "ItemGroupPrice.h"


NSString *const kItemGroupPriceCustGroup = @"cust_group";
NSString *const kItemGroupPricePriceId = @"price_id";
NSString *const kItemGroupPriceAllGroups = @"all_groups";
NSString *const kItemGroupPricePrice = @"price";
NSString *const kItemGroupPriceWebsiteId = @"website_id";
NSString *const kItemGroupPriceWebsitePrice = @"website_price";


@interface ItemGroupPrice ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ItemGroupPrice

@synthesize custGroup = _custGroup;
@synthesize priceId = _priceId;
@synthesize allGroups = _allGroups;
@synthesize price = _price;
@synthesize websiteId = _websiteId;
@synthesize websitePrice = _websitePrice;


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
            self.custGroup = [self objectOrNilForKey:kItemGroupPriceCustGroup fromDictionary:dict];
            self.priceId = [self objectOrNilForKey:kItemGroupPricePriceId fromDictionary:dict];
            self.allGroups = [self objectOrNilForKey:kItemGroupPriceAllGroups fromDictionary:dict];
            self.price = [self objectOrNilForKey:kItemGroupPricePrice fromDictionary:dict];
            self.websiteId = [self objectOrNilForKey:kItemGroupPriceWebsiteId fromDictionary:dict];
            self.websitePrice = [self objectOrNilForKey:kItemGroupPriceWebsitePrice fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.custGroup forKey:kItemGroupPriceCustGroup];
    [mutableDict setValue:self.priceId forKey:kItemGroupPricePriceId];
    [mutableDict setValue:self.allGroups forKey:kItemGroupPriceAllGroups];
    [mutableDict setValue:self.price forKey:kItemGroupPricePrice];
    [mutableDict setValue:self.websiteId forKey:kItemGroupPriceWebsiteId];
    [mutableDict setValue:self.websitePrice forKey:kItemGroupPriceWebsitePrice];

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

    self.custGroup = [aDecoder decodeObjectForKey:kItemGroupPriceCustGroup];
    self.priceId = [aDecoder decodeObjectForKey:kItemGroupPricePriceId];
    self.allGroups = [aDecoder decodeObjectForKey:kItemGroupPriceAllGroups];
    self.price = [aDecoder decodeObjectForKey:kItemGroupPricePrice];
    self.websiteId = [aDecoder decodeObjectForKey:kItemGroupPriceWebsiteId];
    self.websitePrice = [aDecoder decodeObjectForKey:kItemGroupPriceWebsitePrice];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_custGroup forKey:kItemGroupPriceCustGroup];
    [aCoder encodeObject:_priceId forKey:kItemGroupPricePriceId];
    [aCoder encodeObject:_allGroups forKey:kItemGroupPriceAllGroups];
    [aCoder encodeObject:_price forKey:kItemGroupPricePrice];
    [aCoder encodeObject:_websiteId forKey:kItemGroupPriceWebsiteId];
    [aCoder encodeObject:_websitePrice forKey:kItemGroupPriceWebsitePrice];
}

- (id)copyWithZone:(NSZone *)zone
{
    ItemGroupPrice *copy = [[ItemGroupPrice alloc] init];
    
    if (copy) {

        copy.custGroup = [self.custGroup copyWithZone:zone];
        copy.priceId = [self.priceId copyWithZone:zone];
        copy.allGroups = [self.allGroups copyWithZone:zone];
        copy.price = [self.price copyWithZone:zone];
        copy.websiteId = [self.websiteId copyWithZone:zone];
        copy.websitePrice = [self.websitePrice copyWithZone:zone];
    }
    
    return copy;
}


@end
