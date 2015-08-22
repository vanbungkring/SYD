//
//  DatabaseManager.m
//  Shoot Your Dream
//
//  Created by Arie Prasetyo on 7/21/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import "DatabaseManager.h"

const NSInteger REALM_SCHEMA_VERSION = 0;

@implementation DatabaseManager

+ (DatabaseManager *)manager {
    static DatabaseManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc] init];
    });
    return manager;
}

- (instancetype)init {
    self = [super init];
    if (self) {
        [self migrate];
    }
    return self;
}

- (void)migrate {
    [RLMRealm setSchemaVersion:REALM_SCHEMA_VERSION forRealmAtPath:[RLMRealm defaultRealmPath] withMigrationBlock:^(RLMMigration *migration, uint64_t oldSchemaVersion) {
        
//        [migration enumerateObjects:Airport.className block:^(RLMObject *oldObject, RLMObject *newObject) {
//            if (oldSchemaVersion < 1) {
//                newObject[@"longitude"] = [NSNumber numberWithDouble:[oldObject[@"longitude"] doubleValue]];
//                newObject[@"latitude"] = [NSNumber numberWithDouble:[oldObject[@"latitude"] doubleValue]];
//            }
//            if (oldSchemaVersion < 2){
//                newObject[@"country"] = @"";
//            }
//        }];
        
    }];
    [RLMRealm defaultRealm];
}

- (void)writeObjects:(NSArray*)objects {
    [[RLMRealm defaultRealm] beginWriteTransaction];
    [[RLMRealm defaultRealm] addObjects:objects];
    [[RLMRealm defaultRealm] commitWriteTransaction];
}

- (void)writeObject:(RLMObject*)object {
    [[RLMRealm defaultRealm] beginWriteTransaction];
    [[RLMRealm defaultRealm] addObject:object];
    [[RLMRealm defaultRealm] commitWriteTransaction];
}

- (void)deleteObjects:(NSArray*) objects {
    [[RLMRealm defaultRealm] beginWriteTransaction];
    [[RLMRealm defaultRealm] deleteObjects:objects];
    [[RLMRealm defaultRealm] commitWriteTransaction];
}

- (void)deleteObjectsRLMResults:(RLMResults*)objects {
    [[RLMRealm defaultRealm] beginWriteTransaction];
    [[RLMRealm defaultRealm] deleteObjects:objects];
    [[RLMRealm defaultRealm] commitWriteTransaction];
}

- (void)updateWithBlock:(void(^)())updateBlock {
    if (updateBlock) {
        [[RLMRealm defaultRealm] beginWriteTransaction];
        updateBlock();
        [[RLMRealm defaultRealm] commitWriteTransaction];
    }
}

- (void)writeOrUpdateObject:(RLMObject *)object {
    [[RLMRealm defaultRealm] beginWriteTransaction];
    [[object class] createOrUpdateInRealm:[RLMRealm defaultRealm] withObject:object];
    [[RLMRealm defaultRealm] commitWriteTransaction];
}

@end