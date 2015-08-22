//
//  CustomerResponse.m
//
//  Created by Ratna Kumalasari on 8/7/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "CustomerResponse.h"


NSString *const kCustomerResponseLastname = @"lastname";
NSString *const kCustomerResponseDefaultShipping = @"default_shipping";
NSString *const kCustomerResponseSuffix = @"suffix";
NSString *const kCustomerResponseWebsiteId = @"website_id";
NSString *const kCustomerResponseFirstname = @"firstname";
NSString *const kCustomerResponseAttributeSetId = @"attribute_set_id";
NSString *const kCustomerResponseEntityId = @"entity_id";
NSString *const kCustomerResponseGroupId = @"group_id";
NSString *const kCustomerResponseUpdatedAt = @"updated_at";
NSString *const kCustomerResponseStoreId = @"store_id";
NSString *const kCustomerResponsePasswordHash = @"password_hash";
NSString *const kCustomerResponseIncrementId = @"increment_id";
NSString *const kCustomerResponseIsActive = @"is_active";
NSString *const kCustomerResponseDefaultBilling = @"default_billing";
NSString *const kCustomerResponseTaxvat = @"taxvat";
NSString *const kCustomerResponseEmail = @"email";
NSString *const kCustomerResponsePrefix = @"prefix";
NSString *const kCustomerResponseDisableAutoGroupChange = @"disable_auto_group_change";
NSString *const kCustomerResponseMiddlename = @"middlename";
NSString *const kCustomerResponseCreatedAt = @"created_at";
NSString *const kCustomerResponseCreatedIn = @"created_in";
NSString *const kCustomerResponseEntityTypeId = @"entity_type_id";


@interface CustomerResponse ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation CustomerResponse

@synthesize lastname = _lastname;
@synthesize defaultShipping = _defaultShipping;
@synthesize suffix = _suffix;
@synthesize websiteId = _websiteId;
@synthesize firstname = _firstname;
@synthesize attributeSetId = _attributeSetId;
@synthesize entityId = _entityId;
@synthesize groupId = _groupId;
@synthesize updatedAt = _updatedAt;
@synthesize storeId = _storeId;
@synthesize passwordHash = _passwordHash;
@synthesize incrementId = _incrementId;
@synthesize isActive = _isActive;
@synthesize defaultBilling = _defaultBilling;
@synthesize taxvat = _taxvat;
@synthesize email = _email;
@synthesize prefix = _prefix;
@synthesize disableAutoGroupChange = _disableAutoGroupChange;
@synthesize middlename = _middlename;
@synthesize createdAt = _createdAt;
@synthesize createdIn = _createdIn;
@synthesize entityTypeId = _entityTypeId;


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
            self.lastname = [self objectOrNilForKey:kCustomerResponseLastname fromDictionary:dict];
            self.defaultShipping = [self objectOrNilForKey:kCustomerResponseDefaultShipping fromDictionary:dict];
            self.suffix = [self objectOrNilForKey:kCustomerResponseSuffix fromDictionary:dict];
            self.websiteId = [self objectOrNilForKey:kCustomerResponseWebsiteId fromDictionary:dict];
            self.firstname = [self objectOrNilForKey:kCustomerResponseFirstname fromDictionary:dict];
            self.attributeSetId = [self objectOrNilForKey:kCustomerResponseAttributeSetId fromDictionary:dict];
            self.entityId = [self objectOrNilForKey:kCustomerResponseEntityId fromDictionary:dict];
            self.groupId = [self objectOrNilForKey:kCustomerResponseGroupId fromDictionary:dict];
            self.updatedAt = [self objectOrNilForKey:kCustomerResponseUpdatedAt fromDictionary:dict];
            self.storeId = [self objectOrNilForKey:kCustomerResponseStoreId fromDictionary:dict];
            self.passwordHash = [self objectOrNilForKey:kCustomerResponsePasswordHash fromDictionary:dict];
            self.incrementId = [self objectOrNilForKey:kCustomerResponseIncrementId fromDictionary:dict];
            self.isActive = [self objectOrNilForKey:kCustomerResponseIsActive fromDictionary:dict];
            self.defaultBilling = [self objectOrNilForKey:kCustomerResponseDefaultBilling fromDictionary:dict];
            self.taxvat = [self objectOrNilForKey:kCustomerResponseTaxvat fromDictionary:dict];
            self.email = [self objectOrNilForKey:kCustomerResponseEmail fromDictionary:dict];
            self.prefix = [self objectOrNilForKey:kCustomerResponsePrefix fromDictionary:dict];
            self.disableAutoGroupChange = [self objectOrNilForKey:kCustomerResponseDisableAutoGroupChange fromDictionary:dict];
            self.middlename = [self objectOrNilForKey:kCustomerResponseMiddlename fromDictionary:dict];
            self.createdAt = [self objectOrNilForKey:kCustomerResponseCreatedAt fromDictionary:dict];
            self.createdIn = [self objectOrNilForKey:kCustomerResponseCreatedIn fromDictionary:dict];
            self.entityTypeId = [self objectOrNilForKey:kCustomerResponseEntityTypeId fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.lastname forKey:kCustomerResponseLastname];
    [mutableDict setValue:self.defaultShipping forKey:kCustomerResponseDefaultShipping];
    [mutableDict setValue:self.suffix forKey:kCustomerResponseSuffix];
    [mutableDict setValue:self.websiteId forKey:kCustomerResponseWebsiteId];
    [mutableDict setValue:self.firstname forKey:kCustomerResponseFirstname];
    [mutableDict setValue:self.attributeSetId forKey:kCustomerResponseAttributeSetId];
    [mutableDict setValue:self.entityId forKey:kCustomerResponseEntityId];
    [mutableDict setValue:self.groupId forKey:kCustomerResponseGroupId];
    [mutableDict setValue:self.updatedAt forKey:kCustomerResponseUpdatedAt];
    [mutableDict setValue:self.storeId forKey:kCustomerResponseStoreId];
    [mutableDict setValue:self.passwordHash forKey:kCustomerResponsePasswordHash];
    [mutableDict setValue:self.incrementId forKey:kCustomerResponseIncrementId];
    [mutableDict setValue:self.isActive forKey:kCustomerResponseIsActive];
    [mutableDict setValue:self.defaultBilling forKey:kCustomerResponseDefaultBilling];
    [mutableDict setValue:self.taxvat forKey:kCustomerResponseTaxvat];
    [mutableDict setValue:self.email forKey:kCustomerResponseEmail];
    [mutableDict setValue:self.prefix forKey:kCustomerResponsePrefix];
    [mutableDict setValue:self.disableAutoGroupChange forKey:kCustomerResponseDisableAutoGroupChange];
    [mutableDict setValue:self.middlename forKey:kCustomerResponseMiddlename];
    [mutableDict setValue:self.createdAt forKey:kCustomerResponseCreatedAt];
    [mutableDict setValue:self.createdIn forKey:kCustomerResponseCreatedIn];
    [mutableDict setValue:self.entityTypeId forKey:kCustomerResponseEntityTypeId];

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

    self.lastname = [aDecoder decodeObjectForKey:kCustomerResponseLastname];
    self.defaultShipping = [aDecoder decodeObjectForKey:kCustomerResponseDefaultShipping];
    self.suffix = [aDecoder decodeObjectForKey:kCustomerResponseSuffix];
    self.websiteId = [aDecoder decodeObjectForKey:kCustomerResponseWebsiteId];
    self.firstname = [aDecoder decodeObjectForKey:kCustomerResponseFirstname];
    self.attributeSetId = [aDecoder decodeObjectForKey:kCustomerResponseAttributeSetId];
    self.entityId = [aDecoder decodeObjectForKey:kCustomerResponseEntityId];
    self.groupId = [aDecoder decodeObjectForKey:kCustomerResponseGroupId];
    self.updatedAt = [aDecoder decodeObjectForKey:kCustomerResponseUpdatedAt];
    self.storeId = [aDecoder decodeObjectForKey:kCustomerResponseStoreId];
    self.passwordHash = [aDecoder decodeObjectForKey:kCustomerResponsePasswordHash];
    self.incrementId = [aDecoder decodeObjectForKey:kCustomerResponseIncrementId];
    self.isActive = [aDecoder decodeObjectForKey:kCustomerResponseIsActive];
    self.defaultBilling = [aDecoder decodeObjectForKey:kCustomerResponseDefaultBilling];
    self.taxvat = [aDecoder decodeObjectForKey:kCustomerResponseTaxvat];
    self.email = [aDecoder decodeObjectForKey:kCustomerResponseEmail];
    self.prefix = [aDecoder decodeObjectForKey:kCustomerResponsePrefix];
    self.disableAutoGroupChange = [aDecoder decodeObjectForKey:kCustomerResponseDisableAutoGroupChange];
    self.middlename = [aDecoder decodeObjectForKey:kCustomerResponseMiddlename];
    self.createdAt = [aDecoder decodeObjectForKey:kCustomerResponseCreatedAt];
    self.createdIn = [aDecoder decodeObjectForKey:kCustomerResponseCreatedIn];
    self.entityTypeId = [aDecoder decodeObjectForKey:kCustomerResponseEntityTypeId];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_lastname forKey:kCustomerResponseLastname];
    [aCoder encodeObject:_defaultShipping forKey:kCustomerResponseDefaultShipping];
    [aCoder encodeObject:_suffix forKey:kCustomerResponseSuffix];
    [aCoder encodeObject:_websiteId forKey:kCustomerResponseWebsiteId];
    [aCoder encodeObject:_firstname forKey:kCustomerResponseFirstname];
    [aCoder encodeObject:_attributeSetId forKey:kCustomerResponseAttributeSetId];
    [aCoder encodeObject:_entityId forKey:kCustomerResponseEntityId];
    [aCoder encodeObject:_groupId forKey:kCustomerResponseGroupId];
    [aCoder encodeObject:_updatedAt forKey:kCustomerResponseUpdatedAt];
    [aCoder encodeObject:_storeId forKey:kCustomerResponseStoreId];
    [aCoder encodeObject:_passwordHash forKey:kCustomerResponsePasswordHash];
    [aCoder encodeObject:_incrementId forKey:kCustomerResponseIncrementId];
    [aCoder encodeObject:_isActive forKey:kCustomerResponseIsActive];
    [aCoder encodeObject:_defaultBilling forKey:kCustomerResponseDefaultBilling];
    [aCoder encodeObject:_taxvat forKey:kCustomerResponseTaxvat];
    [aCoder encodeObject:_email forKey:kCustomerResponseEmail];
    [aCoder encodeObject:_prefix forKey:kCustomerResponsePrefix];
    [aCoder encodeObject:_disableAutoGroupChange forKey:kCustomerResponseDisableAutoGroupChange];
    [aCoder encodeObject:_middlename forKey:kCustomerResponseMiddlename];
    [aCoder encodeObject:_createdAt forKey:kCustomerResponseCreatedAt];
    [aCoder encodeObject:_createdIn forKey:kCustomerResponseCreatedIn];
    [aCoder encodeObject:_entityTypeId forKey:kCustomerResponseEntityTypeId];
}

- (id)copyWithZone:(NSZone *)zone
{
    CustomerResponse *copy = [[CustomerResponse alloc] init];
    
    if (copy) {

        copy.lastname = [self.lastname copyWithZone:zone];
        copy.defaultShipping = [self.defaultShipping copyWithZone:zone];
        copy.suffix = [self.suffix copyWithZone:zone];
        copy.websiteId = [self.websiteId copyWithZone:zone];
        copy.firstname = [self.firstname copyWithZone:zone];
        copy.attributeSetId = [self.attributeSetId copyWithZone:zone];
        copy.entityId = [self.entityId copyWithZone:zone];
        copy.groupId = [self.groupId copyWithZone:zone];
        copy.updatedAt = [self.updatedAt copyWithZone:zone];
        copy.storeId = [self.storeId copyWithZone:zone];
        copy.passwordHash = [self.passwordHash copyWithZone:zone];
        copy.incrementId = [self.incrementId copyWithZone:zone];
        copy.isActive = [self.isActive copyWithZone:zone];
        copy.defaultBilling = [self.defaultBilling copyWithZone:zone];
        copy.taxvat = [self.taxvat copyWithZone:zone];
        copy.email = [self.email copyWithZone:zone];
        copy.prefix = [self.prefix copyWithZone:zone];
        copy.disableAutoGroupChange = [self.disableAutoGroupChange copyWithZone:zone];
        copy.middlename = [self.middlename copyWithZone:zone];
        copy.createdAt = [self.createdAt copyWithZone:zone];
        copy.createdIn = [self.createdIn copyWithZone:zone];
        copy.entityTypeId = [self.entityTypeId copyWithZone:zone];
    }
    
    return copy;
}
+ (NSURLSessionDataTask *)requestUserDetail:(NSDictionary *)parameters completionBlock:(void(^)(NSArray *json,NSError *error))block {
    NSLog(@"params->%@",[NSString stringWithFormat:@"%@%@customer/1",BASE_URL,API_HOST]);
    return [[APIManager sharedClient]GET:[NSString stringWithFormat:@"%@%@customer/1",BASE_URL,API_HOST] parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
        NSLog(@"response Object->%@",responseObject);
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"error-->%@",error);
    }];
}

@end
