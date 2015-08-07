//
//  ItemTierPrice.m
//
//  Created by Ratna Kumalasari on 8/7/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "ItemTierPrice.h"


NSString *const kItemTierPriceCustGroup = @"cust_group";
NSString *const kItemTierPricePriceId = @"price_id";
NSString *const kItemTierPricePrice = @"price";
NSString *const kItemTierPriceWebsitePrice = @"website_price";
NSString *const kItemTierPriceWebsiteId = @"website_id";
NSString *const kItemTierPricePriceQty = @"price_qty";
NSString *const kItemTierPriceAllGroups = @"all_groups";


@interface ItemTierPrice ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ItemTierPrice

@synthesize custGroup = _custGroup;
@synthesize priceId = _priceId;
@synthesize price = _price;
@synthesize websitePrice = _websitePrice;
@synthesize websiteId = _websiteId;
@synthesize priceQty = _priceQty;
@synthesize allGroups = _allGroups;


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
            self.custGroup = [self objectOrNilForKey:kItemTierPriceCustGroup fromDictionary:dict];
            self.priceId = [self objectOrNilForKey:kItemTierPricePriceId fromDictionary:dict];
            self.price = [self objectOrNilForKey:kItemTierPricePrice fromDictionary:dict];
            self.websitePrice = [self objectOrNilForKey:kItemTierPriceWebsitePrice fromDictionary:dict];
            self.websiteId = [self objectOrNilForKey:kItemTierPriceWebsiteId fromDictionary:dict];
            self.priceQty = [self objectOrNilForKey:kItemTierPricePriceQty fromDictionary:dict];
            self.allGroups = [self objectOrNilForKey:kItemTierPriceAllGroups fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.custGroup forKey:kItemTierPriceCustGroup];
    [mutableDict setValue:self.priceId forKey:kItemTierPricePriceId];
    [mutableDict setValue:self.price forKey:kItemTierPricePrice];
    [mutableDict setValue:self.websitePrice forKey:kItemTierPriceWebsitePrice];
    [mutableDict setValue:self.websiteId forKey:kItemTierPriceWebsiteId];
    [mutableDict setValue:self.priceQty forKey:kItemTierPricePriceQty];
    [mutableDict setValue:self.allGroups forKey:kItemTierPriceAllGroups];

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

    self.custGroup = [aDecoder decodeObjectForKey:kItemTierPriceCustGroup];
    self.priceId = [aDecoder decodeObjectForKey:kItemTierPricePriceId];
    self.price = [aDecoder decodeObjectForKey:kItemTierPricePrice];
    self.websitePrice = [aDecoder decodeObjectForKey:kItemTierPriceWebsitePrice];
    self.websiteId = [aDecoder decodeObjectForKey:kItemTierPriceWebsiteId];
    self.priceQty = [aDecoder decodeObjectForKey:kItemTierPricePriceQty];
    self.allGroups = [aDecoder decodeObjectForKey:kItemTierPriceAllGroups];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_custGroup forKey:kItemTierPriceCustGroup];
    [aCoder encodeObject:_priceId forKey:kItemTierPricePriceId];
    [aCoder encodeObject:_price forKey:kItemTierPricePrice];
    [aCoder encodeObject:_websitePrice forKey:kItemTierPriceWebsitePrice];
    [aCoder encodeObject:_websiteId forKey:kItemTierPriceWebsiteId];
    [aCoder encodeObject:_priceQty forKey:kItemTierPricePriceQty];
    [aCoder encodeObject:_allGroups forKey:kItemTierPriceAllGroups];
}

- (id)copyWithZone:(NSZone *)zone
{
    ItemTierPrice *copy = [[ItemTierPrice alloc] init];
    
    if (copy) {

        copy.custGroup = [self.custGroup copyWithZone:zone];
        copy.priceId = [self.priceId copyWithZone:zone];
        copy.price = [self.price copyWithZone:zone];
        copy.websitePrice = [self.websitePrice copyWithZone:zone];
        copy.websiteId = [self.websiteId copyWithZone:zone];
        copy.priceQty = [self.priceQty copyWithZone:zone];
        copy.allGroups = [self.allGroups copyWithZone:zone];
    }
    
    return copy;
}


@end
