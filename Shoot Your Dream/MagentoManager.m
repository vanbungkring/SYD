//
//  MagentoManager.m
//  Shoot Your Dream
//
//  Created by Arie Prasetyo on 7/25/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import "MagentoManager.h"
#import <NSDictionary+BDBOAuth1Manager.h>
@implementation MagentoManager
static MagentoManager *_sharedClient = nil;

+ (instancetype)initWithConsumserKey:(NSString *)apiKey secret:(NSString *)secret{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedClient = [[[self class] alloc] initWithConsumerKey:apiKey sceret:secret];
    });
    
    return _sharedClient;
}

- (id)initWithConsumerKey:(NSString *)key sceret:(NSString *)secret {
    self = [super init];
    
    if (self) {
        NSURL *baseURL = [NSURL URLWithString:BASE_URL];
        
        _networkManager = [[BDBOAuth1SessionManager alloc] initWithBaseURL:baseURL consumerKey:key consumerSecret:secret];
    }
    
    return self;
}
+ (instancetype)sharedClient {
    NSAssert(_sharedClient, @"BDBFlickrClient not initialized. [BDBFlickrClient createWithAPIKey:secret:] must be called first.");
    
    return _sharedClient;
}
- (void)authorize {
    [self.networkManager fetchRequestTokenWithPath:[NSString stringWithFormat:@"%@%@",BASE_URL,REQUEST_TOKEN_URL]
                                            method:@"GET"
                                       callbackURL:@"http://httpbin.org/get"
                                             scope:nil
                                           success:^(BDBOAuth1Credential *requestToken) {
                                               // Perform Authorization via MobileSafari
                                               NSString *authURLString = [[NSString stringWithFormat:@"%@%@",BASE_URL,ACCESS_TOKEN_URL] stringByAppendingFormat:@"?oauth_token=%@", requestToken.token];
                                               NSLog(@"autjURl->%@",authURLString);
                                               [[UIApplication sharedApplication] openURL:[NSURL URLWithString:authURLString]];
                                           }
                                           failure:^(NSError *error) {
                                               NSLog(@"Error: %@", error.userInfo);
                                               
                                               dispatch_async(dispatch_get_main_queue(), ^{
                                                   [[[UIAlertView alloc] initWithTitle:NSLocalizedString(@"Error", nil)
                                                                               message:NSLocalizedString(@"Could not acquire OAuth request token. Please try again later.", nil)
                                                                              delegate:self
                                                                     cancelButtonTitle:NSLocalizedString(@"Dismiss", nil)
                                                                     otherButtonTitles:nil] show];
                                               });
                                           }];
}
+ (BOOL)isAuthorizationCallbackURL:(NSURL *)url {
    NSURL *callbackURL = [NSURL URLWithString:LOCAL_AUTORIZE_CALLBACK];
    
    return _sharedClient && [url.scheme isEqualToString:callbackURL.scheme] && [url.host isEqualToString:callbackURL.host];
}

- (BOOL)isAuthorized {
    return self.networkManager.authorized;
}

- (BOOL)handleAuthorizationCallbackURL:(NSURL *)url {
    NSLog(@"URL->%@",url.query);
    NSDictionary *parameters = [NSDictionary bdb_dictionaryFromQueryString:url.query];
    NSLog(@"params->%@",parameters);
    
    if (parameters[BDBOAuth1OAuthTokenParameter] && parameters[BDBOAuth1OAuthVerifierParameter]) {
        [self.networkManager fetchAccessTokenWithPath:AUTHORIZE_URL
                                               method:@"GET"
                                         requestToken:[BDBOAuth1Credential credentialWithQueryString:url.query]
                                              success:^(BDBOAuth1Credential *accessToken) {
                                                  NSLog(@"access token->%@",accessToken.userInfo);
                                                  [[NSNotificationCenter defaultCenter] postNotificationName:@"DATA"
                                                                                                      object:self
                                                                                                    userInfo:accessToken.userInfo];
                                              }
                                              failure:^(NSError *error) {
                                                  NSLog(@"Error: %@", error.localizedDescription);
                                                  
                                                  dispatch_async(dispatch_get_main_queue(), ^{
                                                      [[[UIAlertView alloc] initWithTitle:NSLocalizedString(@"Error", nil)
                                                                                  message:NSLocalizedString(@"Could not acquire OAuth access token. Please try again later.", nil)
                                                                                 delegate:self
                                                                        cancelButtonTitle:NSLocalizedString(@"Dismiss", nil)
                                                                        otherButtonTitles:nil] show];
                                                  });
                                              }];
        
        return YES;
    }
    
    return NO;
}

@end
