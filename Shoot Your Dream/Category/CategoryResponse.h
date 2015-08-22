//
//  CategoryResponse.h
//
//  Created by Ratna Kumalasari on 8/22/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface CategoryResponse : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) BOOL error;
@property (nonatomic, strong) NSArray *result;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;
+ (NSURLSessionDataTask *)getAllCategories:(NSDictionary *)parameters completionBlock:(void(^)(NSArray *json,NSError *error))completionBlock;
+ (NSArray *)getAllChild:(NSArray *)array;
@end
