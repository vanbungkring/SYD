//
//  ItemMediaGallery.m
//
//  Created by Ratna Kumalasari on 8/7/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "ItemMediaGallery.h"
#import "ItemImages.h"


NSString *const kItemMediaGalleryImages = @"images";
NSString *const kItemMediaGalleryValues = @"values";


@interface ItemMediaGallery ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ItemMediaGallery

@synthesize images = _images;
@synthesize values = _values;


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
    NSObject *receivedItemImages = [dict objectForKey:kItemMediaGalleryImages];
    NSMutableArray *parsedItemImages = [NSMutableArray array];
    if ([receivedItemImages isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedItemImages) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedItemImages addObject:[ItemImages modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedItemImages isKindOfClass:[NSDictionary class]]) {
       [parsedItemImages addObject:[ItemImages modelObjectWithDictionary:(NSDictionary *)receivedItemImages]];
    }

    self.images = [NSArray arrayWithArray:parsedItemImages];
            self.values = [self objectOrNilForKey:kItemMediaGalleryValues fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    NSMutableArray *tempArrayForImages = [NSMutableArray array];
    for (NSObject *subArrayObject in self.images) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForImages addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForImages addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForImages] forKey:kItemMediaGalleryImages];
    NSMutableArray *tempArrayForValues = [NSMutableArray array];
    for (NSObject *subArrayObject in self.values) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForValues addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForValues addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForValues] forKey:kItemMediaGalleryValues];

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

    self.images = [aDecoder decodeObjectForKey:kItemMediaGalleryImages];
    self.values = [aDecoder decodeObjectForKey:kItemMediaGalleryValues];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_images forKey:kItemMediaGalleryImages];
    [aCoder encodeObject:_values forKey:kItemMediaGalleryValues];
}

- (id)copyWithZone:(NSZone *)zone
{
    ItemMediaGallery *copy = [[ItemMediaGallery alloc] init];
    
    if (copy) {

        copy.images = [self.images copyWithZone:zone];
        copy.values = [self.values copyWithZone:zone];
    }
    
    return copy;
}


@end
