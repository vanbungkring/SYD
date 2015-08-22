//
//  ItemImages.h
//
//  Created by Ratna Kumalasari on 8/7/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface ItemImages : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *position;
@property (nonatomic, strong) NSString *positionDefault;
@property (nonatomic, strong) NSString *disabledDefault;
@property (nonatomic, strong) NSString *file;
@property (nonatomic, strong) NSString *valueId;
@property (nonatomic, strong) NSString *label;
@property (nonatomic, strong) NSString *disabled;
@property (nonatomic, assign) id labelDefault;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
