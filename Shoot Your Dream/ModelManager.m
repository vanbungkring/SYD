//
//  ModelManager.m
//  WSUP
//
//  Created by Arie Prasetyo on 5/21/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import "ModelManager.h"

@implementation ModelManager
static dispatch_once_t pred;
static ModelManager *shared = nil;
+ (ModelManager *)sharedMORealmSingleton {
    static dispatch_once_t pred;
    static ModelManager *shared = nil;
    
    dispatch_once(&pred, ^{
        shared = [[ModelManager alloc] init];
    });
    return shared;
}
- (id)init {
    self = [super init];
    if(self) {
        //        [GVUserDefaults standardUserDefaults].databaseVersion = 1;
        //        [self performMigrationIfNeeded];
        _realm = [RLMRealm defaultRealm];
    }
    return self;
}
-(void)deleteRealm{
    [_realm beginWriteTransaction];
    [_realm commitWriteTransaction];
}
@end
