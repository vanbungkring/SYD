//
//  ItemResponse.h
//
//  Created by Ratna Kumalasari on 8/22/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface ItemResponse : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) BOOL error;
@property (nonatomic, strong) NSArray *result;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;
+ (NSURLSessionDataTask *)getProductByCategories:(NSString *)categories parameters:(NSDictionary *)parameters completionBlock:(void(^)(NSArray *json,NSError *error))completionBlock;
@end
