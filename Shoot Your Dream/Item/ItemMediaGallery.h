//
//  ItemMediaGallery.h
//
//  Created by Ratna Kumalasari on 8/7/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface ItemMediaGallery : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSArray *images;
@property (nonatomic, strong) NSArray *values;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
