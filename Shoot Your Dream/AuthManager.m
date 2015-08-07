//
//  AuthManager.m
//  Shoot Your Dream
//
//  Created by Arie Prasetyo on 8/7/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import "AuthManager.h"

@implementation AuthManager

+ (NSURLSessionDataTask *)requestToken:(NSDictionary *)parameters completionBlock:(void(^)(NSArray *json,NSError *error))block {
    return [[APIManager sharedClient]GET:REQUEST_TOKEN_URL parameters:parameters success:^(NSURLSessionDataTask *task, id responseObject) {
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        
    }];
}

@end
