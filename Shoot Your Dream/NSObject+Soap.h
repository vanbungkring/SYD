//
//  NSObject+Soap.h
//  Shoot Your Dream
//
//  Created by Arie Prasetyo on 7/15/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CXMLElement;
@interface NSObject (Soap)
- (NSString *)serialize;
- (NSString *)serialize:(NSString **)xsi;
- (NSString *)serializeWithNodeName:(NSString *)name;
+ (id)deserialize:(CXMLElement *)root;
- (BOOL)isFault:(NSError **)error;
@end
