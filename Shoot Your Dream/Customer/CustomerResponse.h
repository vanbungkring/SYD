//
//  CustomerResponse.h
//
//  Created by Ratna Kumalasari on 8/7/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CustomerResponse : BaseModel <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *lastname;
@property (nonatomic, strong) NSString *defaultShipping;
@property (nonatomic, assign) id suffix;
@property (nonatomic, strong) NSString *websiteId;
@property (nonatomic, strong) NSString *firstname;
@property (nonatomic, strong) NSString *attributeSetId;
@property (nonatomic, strong) NSString *entityId;
@property (nonatomic, strong) NSString *groupId;
@property (nonatomic, strong) NSString *updatedAt;
@property (nonatomic, strong) NSString *storeId;
@property (nonatomic, strong) NSString *passwordHash;
@property (nonatomic, assign) id incrementId;
@property (nonatomic, strong) NSString *isActive;
@property (nonatomic, strong) NSString *defaultBilling;
@property (nonatomic, assign) id taxvat;
@property (nonatomic, strong) NSString *email;
@property (nonatomic, assign) id prefix;
@property (nonatomic, strong) NSString *disableAutoGroupChange;
@property (nonatomic, assign) id middlename;
@property (nonatomic, strong) NSString *createdAt;
@property (nonatomic, strong) NSString *createdIn;
@property (nonatomic, strong) NSString *entityTypeId;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;
+ (NSURLSessionDataTask *)requestUserDetail:(NSDictionary *)parameters completionBlock:(void(^)(NSArray *json,NSError *error))block;
@end
