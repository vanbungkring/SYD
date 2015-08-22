//
//  CategoryChild.h
//
//  Created by Ratna Kumalasari on 8/22/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface CategoryChild : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *requestPath;
@property (nonatomic, strong) NSString *position;
@property (nonatomic, strong) NSString *parentId;
@property (nonatomic, strong) NSString *createdAt;
@property (nonatomic, strong) NSString *childrenCount;
@property (nonatomic, strong) NSString *entityTypeId;
@property (nonatomic, strong) NSString *attributeSetId;
@property (nonatomic, strong) NSString *path;
@property (nonatomic, strong) NSString *entityId;
@property (nonatomic, strong) NSString *level;
@property (nonatomic, strong) NSString *isActive;
@property (nonatomic, strong) NSString *urlKey;
@property (nonatomic, strong) NSString *updatedAt;
@property (nonatomic, strong) NSString *isAnchor;
@property (nonatomic, strong) NSString *name;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
