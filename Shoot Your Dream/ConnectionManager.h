//
//  ConnectionManager.h
//  WSUP
//
//  Created by Arie Prasetyo on 5/21/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFHTTPSessionManager.h"
@interface ConnectionManager : AFHTTPSessionManager
+ (instancetype)sharedClient;
@end
