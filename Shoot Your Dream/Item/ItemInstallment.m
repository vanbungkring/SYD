//
//  ItemInstallment.m
//
//  Created by Ratna Kumalasari on 8/22/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "ItemInstallment.h"


NSString *const kItemInstallmentTenor = @"tenor";
NSString *const kItemInstallmentMonthlyInstallment = @"monthly_installment";


@interface ItemInstallment ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ItemInstallment

@synthesize tenor = _tenor;
@synthesize monthlyInstallment = _monthlyInstallment;


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
            self.tenor = [[self objectOrNilForKey:kItemInstallmentTenor fromDictionary:dict] doubleValue];
            self.monthlyInstallment = [[self objectOrNilForKey:kItemInstallmentMonthlyInstallment fromDictionary:dict] doubleValue];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:[NSNumber numberWithDouble:self.tenor] forKey:kItemInstallmentTenor];
    [mutableDict setValue:[NSNumber numberWithDouble:self.monthlyInstallment] forKey:kItemInstallmentMonthlyInstallment];

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

    self.tenor = [aDecoder decodeDoubleForKey:kItemInstallmentTenor];
    self.monthlyInstallment = [aDecoder decodeDoubleForKey:kItemInstallmentMonthlyInstallment];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeDouble:_tenor forKey:kItemInstallmentTenor];
    [aCoder encodeDouble:_monthlyInstallment forKey:kItemInstallmentMonthlyInstallment];
}

- (id)copyWithZone:(NSZone *)zone
{
    ItemInstallment *copy = [[ItemInstallment alloc] init];
    
    if (copy) {

        copy.tenor = self.tenor;
        copy.monthlyInstallment = self.monthlyInstallment;
    }
    
    return copy;
}


@end
