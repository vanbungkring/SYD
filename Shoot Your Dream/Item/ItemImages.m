//
//  ItemImages.m
//
//  Created by Ratna Kumalasari on 8/7/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "ItemImages.h"


NSString *const kItemImagesPosition = @"position";
NSString *const kItemImagesPositionDefault = @"position_default";
NSString *const kItemImagesDisabledDefault = @"disabled_default";
NSString *const kItemImagesFile = @"file";
NSString *const kItemImagesValueId = @"value_id";
NSString *const kItemImagesLabel = @"label";
NSString *const kItemImagesDisabled = @"disabled";
NSString *const kItemImagesLabelDefault = @"label_default";


@interface ItemImages ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ItemImages

@synthesize position = _position;
@synthesize positionDefault = _positionDefault;
@synthesize disabledDefault = _disabledDefault;
@synthesize file = _file;
@synthesize valueId = _valueId;
@synthesize label = _label;
@synthesize disabled = _disabled;
@synthesize labelDefault = _labelDefault;


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
            self.position = [self objectOrNilForKey:kItemImagesPosition fromDictionary:dict];
            self.positionDefault = [self objectOrNilForKey:kItemImagesPositionDefault fromDictionary:dict];
            self.disabledDefault = [self objectOrNilForKey:kItemImagesDisabledDefault fromDictionary:dict];
            self.file = [self objectOrNilForKey:kItemImagesFile fromDictionary:dict];
            self.valueId = [self objectOrNilForKey:kItemImagesValueId fromDictionary:dict];
            self.label = [self objectOrNilForKey:kItemImagesLabel fromDictionary:dict];
            self.disabled = [self objectOrNilForKey:kItemImagesDisabled fromDictionary:dict];
            self.labelDefault = [self objectOrNilForKey:kItemImagesLabelDefault fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.position forKey:kItemImagesPosition];
    [mutableDict setValue:self.positionDefault forKey:kItemImagesPositionDefault];
    [mutableDict setValue:self.disabledDefault forKey:kItemImagesDisabledDefault];
    [mutableDict setValue:self.file forKey:kItemImagesFile];
    [mutableDict setValue:self.valueId forKey:kItemImagesValueId];
    [mutableDict setValue:self.label forKey:kItemImagesLabel];
    [mutableDict setValue:self.disabled forKey:kItemImagesDisabled];
    [mutableDict setValue:self.labelDefault forKey:kItemImagesLabelDefault];

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

    self.position = [aDecoder decodeObjectForKey:kItemImagesPosition];
    self.positionDefault = [aDecoder decodeObjectForKey:kItemImagesPositionDefault];
    self.disabledDefault = [aDecoder decodeObjectForKey:kItemImagesDisabledDefault];
    self.file = [aDecoder decodeObjectForKey:kItemImagesFile];
    self.valueId = [aDecoder decodeObjectForKey:kItemImagesValueId];
    self.label = [aDecoder decodeObjectForKey:kItemImagesLabel];
    self.disabled = [aDecoder decodeObjectForKey:kItemImagesDisabled];
    self.labelDefault = [aDecoder decodeObjectForKey:kItemImagesLabelDefault];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_position forKey:kItemImagesPosition];
    [aCoder encodeObject:_positionDefault forKey:kItemImagesPositionDefault];
    [aCoder encodeObject:_disabledDefault forKey:kItemImagesDisabledDefault];
    [aCoder encodeObject:_file forKey:kItemImagesFile];
    [aCoder encodeObject:_valueId forKey:kItemImagesValueId];
    [aCoder encodeObject:_label forKey:kItemImagesLabel];
    [aCoder encodeObject:_disabled forKey:kItemImagesDisabled];
    [aCoder encodeObject:_labelDefault forKey:kItemImagesLabelDefault];
}

- (id)copyWithZone:(NSZone *)zone
{
    ItemImages *copy = [[ItemImages alloc] init];
    
    if (copy) {

        copy.position = [self.position copyWithZone:zone];
        copy.positionDefault = [self.positionDefault copyWithZone:zone];
        copy.disabledDefault = [self.disabledDefault copyWithZone:zone];
        copy.file = [self.file copyWithZone:zone];
        copy.valueId = [self.valueId copyWithZone:zone];
        copy.label = [self.label copyWithZone:zone];
        copy.disabled = [self.disabled copyWithZone:zone];
        copy.labelDefault = [self.labelDefault copyWithZone:zone];
    }
    
    return copy;
}


@end
