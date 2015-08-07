//
//  APIManager.h
//  Shoot Your Dream
//
//  Created by Arie Prasetyo on 7/24/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface APIManager : AFHTTPSessionManager
+ (instancetype)sharedClient;
@end

