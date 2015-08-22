//
//  ItemInstallment.h
//
//  Created by Ratna Kumalasari on 8/22/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface ItemInstallment : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) double tenor;
@property (nonatomic, assign) double monthlyInstallment;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
