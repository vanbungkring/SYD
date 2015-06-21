//
//  ConnectionManager.m
//  WSUP
//
//  Created by Arie Prasetyo on 5/21/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import "ConnectionManager.h"

@implementation ConnectionManager

+ (instancetype) sharedClient {
    static ConnectionManager *_sharedClient = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[ConnectionManager alloc] initWithBaseURL:[NSURL URLWithString:BASE_URL]];
        _sharedClient.securityPolicy = [AFSecurityPolicy policyWithPinningMode:AFSSLPinningModeNone];
        _sharedClient.requestSerializer = [AFJSONRequestSerializer serializer];
        _sharedClient.responseSerializer = [AFJSONResponseSerializer serializer];
        [_sharedClient.responseSerializer setAcceptableContentTypes:[_sharedClient.responseSerializer.acceptableContentTypes setByAddingObject:@"text/html"]];
        [_sharedClient.responseSerializer setAcceptableContentTypes:[_sharedClient.responseSerializer.acceptableContentTypes setByAddingObject:@"application/json"]];
        [_sharedClient.responseSerializer setAcceptableContentTypes:[_sharedClient.responseSerializer.acceptableContentTypes setByAddingObject:@"text/plain"]];
        [_sharedClient.requestSerializer setValue:@"application/json" forHTTPHeaderField:@"Content-Type"];
    });
    
    return _sharedClient;
}

@end
