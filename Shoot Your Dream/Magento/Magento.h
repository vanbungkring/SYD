//
//  Magento.h
//
//  Created by Rex Sheng on 9/5/12.
//  Copyright (c) 2012 Log(n) LLC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSObject+Soap.h"

@class MagentoClient;
@class AFHTTPRequestOperation;

@interface Magento : NSObject
{
	@protected
	MagentoClient *client;
}
@property (nonatomic, strong) id customerID;
@property (nonatomic, strong) id customerName;
@property (nonatomic, strong) id storeID;
@property (nonatomic, strong) id cartID;
@property (nonatomic) NSTimeInterval cacheInterval;

+ (Magento *)service;
- (void)createCart:(void(^)(NSNumber *cart))block;

- (id)cachedResponseForCall:(NSArray *)call;
- (void)cacheResponse:(id)value forCall:(NSArray *)call;
- (void)clearCache;

- (void)inSession:(void (^)(NSString *session))block;
- (void)renewSession;
+ (void)call:(NSArray *)args success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;
+ (void)multiCall:(NSArray *)args success:(void (^)(AFHTTPRequestOperation *operation, id responseObject))success failure:(void (^)(AFHTTPRequestOperation *operation, NSError *error))failure;
+ (void)getImageAndPrice:(NSMutableDictionary *)item completion:(void (^)(BOOL immediate))completion;
+ (void)getImages:(NSString *)productId completion:(void (^)(NSArray *imageURLs))completion;

@end
