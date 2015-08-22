//
//  Common.h
//  WSUP
//
//  Created by Arie Prasetyo on 5/7/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AlertHelper.h"
@interface Common : NSObject

+ (UIColor*)colorWithHexString:(NSString*)hex;
+ (NSString *)hardwareString;
+ (NSString *)uniqueIdentifier;
+ (NSDate *)currentDate;
+ (CGSize)screenSize;
+ (NSString *)boolToString:(BOOL)boolean;
+ (BOOL)stringToBool:(NSString *)string;
+ (BOOL)isNullValue:(id)value;
+ (BOOL)isAlphabetCharactersOnlyFromText:(NSString *)text;
+ (BOOL)validatePhoneNumber:(NSString *)candidate;
+ (BOOL)validateAllNumber:(NSString *)candidate;
+ (BOOL)validateEmail:(NSString *)candidate;
+ (NSString *)stringFromJSON:(id)json;
+ (NSString *)dateStringFromTimestamp:(NSString *)timestamp;
+ (NSDate *)dateFromString:(NSString *)dateString withFormat:(NSString *)dateFormat;
+ (NSString *)dateStringFromTimestamp:(NSString *)timestamp usingDateFormat:(NSString *)dateFormat;
+ (UIImage *)imageFromColor:(UIColor *)color forSize:(CGSize)size withCornerRadius:(CGFloat)radius;
+ (NSDictionary *)commonParams;
+ (NSString *)formattedCurrencyWithCurrencySign:(NSString *)currencySign value:(NSInteger)value;
+ (void)readErrorResponse:(NSError *)error response:(NSURLSessionDataTask *)taskResponse;
+ (void)storeUserToken:(NSString *)userToken;
+ (void)storeLoginToken:(NSString *)loginToken;
+ (NSString *)getUserToken;
+ (NSString *)getLoginToken;
+ (void)deleteUserToken;
+ (void)deleteLoginToken;
@end
