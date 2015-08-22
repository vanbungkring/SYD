//
//  ItemGroupPrice.h
//
//  Created by Ratna Kumalasari on 8/7/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface ItemGroupPrice : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *custGroup;
@property (nonatomic, strong) NSString *priceId;
@property (nonatomic, strong) NSString *allGroups;
@property (nonatomic, strong) NSString *price;
@property (nonatomic, strong) NSString *websiteId;
@property (nonatomic, strong) NSString *websitePrice;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
