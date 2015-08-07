//
//  AuthManager.h
//  Shoot Your Dream
//
//  Created by Arie Prasetyo on 8/7/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AuthManager : NSObject
+ (NSURLSessionDataTask *)requestToken:(NSDictionary *)parameters completionBlock:(void(^)(NSArray *json,NSError *error))block;
@end
