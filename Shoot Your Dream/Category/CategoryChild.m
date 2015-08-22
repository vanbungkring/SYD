//
//  CategoryChild.m
//
//  Created by Ratna Kumalasari on 8/22/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "CategoryChild.h"


NSString *const kCategoryChildRequestPath = @"request_path";
NSString *const kCategoryChildPosition = @"position";
NSString *const kCategoryChildParentId = @"parent_id";
NSString *const kCategoryChildCreatedAt = @"created_at";
NSString *const kCategoryChildChildrenCount = @"children_count";
NSString *const kCategoryChildEntityTypeId = @"entity_type_id";
NSString *const kCategoryChildAttributeSetId = @"attribute_set_id";
NSString *const kCategoryChildPath = @"path";
NSString *const kCategoryChildEntityId = @"entity_id";
NSString *const kCategoryChildLevel = @"level";
NSString *const kCategoryChildIsActive = @"is_active";
NSString *const kCategoryChildUrlKey = @"url_key";
NSString *const kCategoryChildUpdatedAt = @"updated_at";
NSString *const kCategoryChildIsAnchor = @"is_anchor";
NSString *const kCategoryChildName = @"name";


@interface CategoryChild ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation CategoryChild

@synthesize requestPath = _requestPath;
@synthesize position = _position;
@synthesize parentId = _parentId;
@synthesize createdAt = _createdAt;
@synthesize childrenCount = _childrenCount;
@synthesize entityTypeId = _entityTypeId;
@synthesize attributeSetId = _attributeSetId;
@synthesize path = _path;
@synthesize entityId = _entityId;
@synthesize level = _level;
@synthesize isActive = _isActive;
@synthesize urlKey = _urlKey;
@synthesize updatedAt = _updatedAt;
@synthesize isAnchor = _isAnchor;
@synthesize name = _name;


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
            self.requestPath = [self objectOrNilForKey:kCategoryChildRequestPath fromDictionary:dict];
            self.position = [self objectOrNilForKey:kCategoryChildPosition fromDictionary:dict];
            self.parentId = [self objectOrNilForKey:kCategoryChildParentId fromDictionary:dict];
            self.createdAt = [self objectOrNilForKey:kCategoryChildCreatedAt fromDictionary:dict];
            self.childrenCount = [self objectOrNilForKey:kCategoryChildChildrenCount fromDictionary:dict];
            self.entityTypeId = [self objectOrNilForKey:kCategoryChildEntityTypeId fromDictionary:dict];
            self.attributeSetId = [self objectOrNilForKey:kCategoryChildAttributeSetId fromDictionary:dict];
            self.path = [self objectOrNilForKey:kCategoryChildPath fromDictionary:dict];
            self.entityId = [self objectOrNilForKey:kCategoryChildEntityId fromDictionary:dict];
            self.level = [self objectOrNilForKey:kCategoryChildLevel fromDictionary:dict];
            self.isActive = [self objectOrNilForKey:kCategoryChildIsActive fromDictionary:dict];
            self.urlKey = [self objectOrNilForKey:kCategoryChildUrlKey fromDictionary:dict];
            self.updatedAt = [self objectOrNilForKey:kCategoryChildUpdatedAt fromDictionary:dict];
            self.isAnchor = [self objectOrNilForKey:kCategoryChildIsAnchor fromDictionary:dict];
            self.name = [self objectOrNilForKey:kCategoryChildName fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.requestPath forKey:kCategoryChildRequestPath];
    [mutableDict setValue:self.position forKey:kCategoryChildPosition];
    [mutableDict setValue:self.parentId forKey:kCategoryChildParentId];
    [mutableDict setValue:self.createdAt forKey:kCategoryChildCreatedAt];
    [mutableDict setValue:self.childrenCount forKey:kCategoryChildChildrenCount];
    [mutableDict setValue:self.entityTypeId forKey:kCategoryChildEntityTypeId];
    [mutableDict setValue:self.attributeSetId forKey:kCategoryChildAttributeSetId];
    [mutableDict setValue:self.path forKey:kCategoryChildPath];
    [mutableDict setValue:self.entityId forKey:kCategoryChildEntityId];
    [mutableDict setValue:self.level forKey:kCategoryChildLevel];
    [mutableDict setValue:self.isActive forKey:kCategoryChildIsActive];
    [mutableDict setValue:self.urlKey forKey:kCategoryChildUrlKey];
    [mutableDict setValue:self.updatedAt forKey:kCategoryChildUpdatedAt];
    [mutableDict setValue:self.isAnchor forKey:kCategoryChildIsAnchor];
    [mutableDict setValue:self.name forKey:kCategoryChildName];

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

    self.requestPath = [aDecoder decodeObjectForKey:kCategoryChildRequestPath];
    self.position = [aDecoder decodeObjectForKey:kCategoryChildPosition];
    self.parentId = [aDecoder decodeObjectForKey:kCategoryChildParentId];
    self.createdAt = [aDecoder decodeObjectForKey:kCategoryChildCreatedAt];
    self.childrenCount = [aDecoder decodeObjectForKey:kCategoryChildChildrenCount];
    self.entityTypeId = [aDecoder decodeObjectForKey:kCategoryChildEntityTypeId];
    self.attributeSetId = [aDecoder decodeObjectForKey:kCategoryChildAttributeSetId];
    self.path = [aDecoder decodeObjectForKey:kCategoryChildPath];
    self.entityId = [aDecoder decodeObjectForKey:kCategoryChildEntityId];
    self.level = [aDecoder decodeObjectForKey:kCategoryChildLevel];
    self.isActive = [aDecoder decodeObjectForKey:kCategoryChildIsActive];
    self.urlKey = [aDecoder decodeObjectForKey:kCategoryChildUrlKey];
    self.updatedAt = [aDecoder decodeObjectForKey:kCategoryChildUpdatedAt];
    self.isAnchor = [aDecoder decodeObjectForKey:kCategoryChildIsAnchor];
    self.name = [aDecoder decodeObjectForKey:kCategoryChildName];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_requestPath forKey:kCategoryChildRequestPath];
    [aCoder encodeObject:_position forKey:kCategoryChildPosition];
    [aCoder encodeObject:_parentId forKey:kCategoryChildParentId];
    [aCoder encodeObject:_createdAt forKey:kCategoryChildCreatedAt];
    [aCoder encodeObject:_childrenCount forKey:kCategoryChildChildrenCount];
    [aCoder encodeObject:_entityTypeId forKey:kCategoryChildEntityTypeId];
    [aCoder encodeObject:_attributeSetId forKey:kCategoryChildAttributeSetId];
    [aCoder encodeObject:_path forKey:kCategoryChildPath];
    [aCoder encodeObject:_entityId forKey:kCategoryChildEntityId];
    [aCoder encodeObject:_level forKey:kCategoryChildLevel];
    [aCoder encodeObject:_isActive forKey:kCategoryChildIsActive];
    [aCoder encodeObject:_urlKey forKey:kCategoryChildUrlKey];
    [aCoder encodeObject:_updatedAt forKey:kCategoryChildUpdatedAt];
    [aCoder encodeObject:_isAnchor forKey:kCategoryChildIsAnchor];
    [aCoder encodeObject:_name forKey:kCategoryChildName];
}

- (id)copyWithZone:(NSZone *)zone
{
    CategoryChild *copy = [[CategoryChild alloc] init];
    
    if (copy) {

        copy.requestPath = [self.requestPath copyWithZone:zone];
        copy.position = [self.position copyWithZone:zone];
        copy.parentId = [self.parentId copyWithZone:zone];
        copy.createdAt = [self.createdAt copyWithZone:zone];
        copy.childrenCount = [self.childrenCount copyWithZone:zone];
        copy.entityTypeId = [self.entityTypeId copyWithZone:zone];
        copy.attributeSetId = [self.attributeSetId copyWithZone:zone];
        copy.path = [self.path copyWithZone:zone];
        copy.entityId = [self.entityId copyWithZone:zone];
        copy.level = [self.level copyWithZone:zone];
        copy.isActive = [self.isActive copyWithZone:zone];
        copy.urlKey = [self.urlKey copyWithZone:zone];
        copy.updatedAt = [self.updatedAt copyWithZone:zone];
        copy.isAnchor = [self.isAnchor copyWithZone:zone];
        copy.name = [self.name copyWithZone:zone];
    }
    
    return copy;
}


@end
