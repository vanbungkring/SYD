//
//  MagentoManager.h
//  Shoot Your Dream
//
//  Created by Arie Prasetyo on 7/25/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <BDBOAuth1RequestOperationManager.h>
#import <BDBOAuth1SessionManager.h>
@interface MagentoManager : NSObject
@property (nonatomic) BDBOAuth1SessionManager *networkManager;
+ (instancetype)initWithConsumserKey:(NSString *)apiKey secret:(NSString *)secret;
+ (instancetype)sharedClient;
- (BOOL)isAuthorized;
+ (BOOL)isAuthorizationCallbackURL:(NSURL *)url;
- (void)authorize;
- (BOOL)handleAuthorizationCallbackURL:(NSURL *)url;
- (void)deauthorize;
@end
