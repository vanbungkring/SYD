//
//  ModelManager.h
//  WSUP
//
//  Created by Arie Prasetyo on 5/21/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import "RLMRealm.h"

@interface ModelManager : RLMRealm
+ (ModelManager *)sharedMORealmSingleton;
- (void)deleteRealm;
@property (nonatomic, strong) RLMRealm *realm;
@end
