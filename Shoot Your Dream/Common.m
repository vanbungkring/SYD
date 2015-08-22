//
//  Common.m
//  WSUP
//
//  Created by Arie Prasetyo on 5/7/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import "Common.h"

@implementation Common

+ (UIColor*)colorWithHexString:(NSString*)hex {
    
    NSString *cString = [[hex stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    // String should be 6 or 8 characters
    if ([cString length] < 6) return [UIColor grayColor];
    
    // strip 0X if it appears
    if ([cString hasPrefix:@"0X"]) cString = [cString substringFromIndex:2];
    
    if ([cString length] != 6) return  [UIColor grayColor];
    
    // Separate into r, g, b substrings
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:1.0f];
}

+ (UIImage *)imageFromColor:(UIColor *)color forSize:(CGSize)size withCornerRadius:(CGFloat)radius
{
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    // Begin a new image that will be the new image with the rounded corners
    // (here with the size of an UIImageView)
    UIGraphicsBeginImageContext(size);
    
    // Add a clip before drawing anything, in the shape of an rounded rect
    [[UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:radius] addClip];
    // Draw your image
    [image drawInRect:rect];
    
    // Get the image, here setting the UIImageView image
    image = UIGraphicsGetImageFromCurrentImageContext();
    
    // Lets forget about that we were drawing
    UIGraphicsEndImageContext();
    
    return image;
}
+ (BOOL)isNullValue:(id)value {
    return (value ==(NSString *)[NSNull null]);
}

+ (BOOL)validateEmail:(NSString *)candidate {
    NSString *emailRegex =
    @"(?:[a-z0-9!#$%\\&'*+/=?\\^_`{|}~-]+(?:\\.[a-z0-9!#$%\\&'*+/=?\\^_`{|}"
    @"~-]+)*|\"(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21\\x23-\\x5b\\x5d-\\"
    @"x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])*\")@(?:(?:[a-z0-9](?:[a-"
    @"z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\\[(?:(?:25[0-5"
    @"]|2[0-4][0-9]|[01]?[0-9][0-9]?)\\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-"
    @"9][0-9]?|[a-z0-9-]*[a-z0-9]:(?:[\\x01-\\x08\\x0b\\x0c\\x0e-\\x1f\\x21"
    @"-\\x5a\\x53-\\x7f]|\\\\[\\x01-\\x09\\x0b\\x0c\\x0e-\\x7f])+)\\])";
    
    NSPredicate *emailTest = [NSPredicate predicateWithFormat:@"SELF MATCHES[c] %@", emailRegex];
    
    return [emailTest evaluateWithObject:candidate];
}
+ (NSString *)dateStringFromTimestamp:(NSString *)timestamp {
    NSTimeInterval timeInterval = [timestamp doubleValue] / 1000;
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setLocale:[NSLocale currentLocale]];
    [dateFormatter setDateFormat:@"d MMM yyyy"];
    
    return [dateFormatter stringFromDate:date];
}
+ (NSString *)dateStringFromTimestamp:(NSString *)timestamp usingDateFormat:(NSString *)dateFormat {
    NSTimeInterval timeInterval = [timestamp doubleValue] / 1000;
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:timeInterval];
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:dateFormat];
    
    return [dateFormatter stringFromDate:date];
}
+ (NSDate *)dateFromString:(NSString *)dateString withFormat:(NSString *)dateFormat {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setLocale:[NSLocale localeWithLocaleIdentifier:@"ID"]];
    /// NSTimeZone *timeZone = [NSTimeZone timeZoneWithName:@"UTC"];
    [dateFormatter setDateFormat:dateFormat];
    [dateFormatter setTimeZone:[NSTimeZone localTimeZone]];
    NSDate *d =[dateFormatter dateFromString:dateString];
    int hoursToAdd = 7;
    NSDate *newDate1 = [d dateByAddingTimeInterval:60*60*hoursToAdd];
    return newDate1;
}
+ (NSString *)formattedCurrencyWithCurrencySign:(NSString *)currencySign value:(NSInteger)value {
    
    BOOL isNegative = (value < 0);
    NSString *valueString = [NSString stringWithFormat:@"%d", (isNegative) ? -1 * value : value];
    NSString *formattedCurrencyString = @"";
    
    int flag = 0;
    
    for(long i = valueString.length - 1; i>=0; i--) {
        if(flag % 3 == 0 && flag != 0) {
            formattedCurrencyString = [NSString stringWithFormat:@"%c.%@", [valueString characterAtIndex:i], formattedCurrencyString];
        }
        else {
            formattedCurrencyString = [NSString stringWithFormat:@"%c%@", [valueString characterAtIndex:i], formattedCurrencyString];
        }
        
        flag++;
    }
    
    if (isNegative) {
        formattedCurrencyString = [NSString stringWithFormat:@"-%@", formattedCurrencyString];
    }
    
    if(currencySign != nil && ![currencySign isEqualToString:@""]) {
        formattedCurrencyString = [NSString stringWithFormat:@"%@ %@", currencySign, formattedCurrencyString];
    }
    
    return formattedCurrencyString;
}
+ (NSDictionary *)commonParams {
    NSDictionary *dict = @{@"grant_type":GRANT_TYPE,
                           @"client_id":CLIENT_ID,
                           @"client_secret":CLIENT_SECRET,
                           @"username":USER_NAME,
                           @"password":PASSWORD
                           };
    return dict;
}
+ (void)readErrorResponse:(NSError *)error response:(NSURLSessionDataTask *)taskResponse {
    NSHTTPURLResponse* response= (NSHTTPURLResponse*)taskResponse.response;
    if (response.statusCode == 401) {
        [Common deleteLoginToken];
        [Common deleteUserToken];
        return;
    }
    else {
        NSData *errorData = error.userInfo[AFNetworkingOperationFailingURLResponseDataErrorKey];
        NSString *errorString;
        
        NSString *errorCode;
        if (errorData) {
            
            
            NSDictionary *serializedData = [NSJSONSerialization JSONObjectWithData: errorData options:kNilOptions error:nil];
            errorString =[serializedData objectForKey:@"result"];
            errorCode =[serializedData objectForKey:@"status_code"];
            
        }
        else {
            errorString = @"No Intennet Connection";
            errorCode = @"Woops";
        }
        [AlertHelper showNotificationWithError:@"Error" message:errorString];
    }
    
    
}
+ (void)storeUserToken:(NSString *)userToken {
    [[NSUserDefaults standardUserDefaults] setObject:userToken forKey:PREFS_USER_TOKEN];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
+ (void)storeLoginToken:(NSString *)loginToken {
    [[NSUserDefaults standardUserDefaults] setObject:loginToken forKey:PREFS_LOGIN_TOKEN];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
+ (NSString *)getUserToken {
    if ([[NSUserDefaults standardUserDefaults] objectForKey:PREFS_USER_TOKEN]) {
        return  [[NSUserDefaults standardUserDefaults] objectForKey:PREFS_USER_TOKEN];
    }
    else {
        return @"";
    }
}
+ (NSString *)getLoginToken {
    if ([[NSUserDefaults standardUserDefaults] objectForKey:PREFS_LOGIN_TOKEN]) {
        return  [[NSUserDefaults standardUserDefaults] objectForKey:PREFS_LOGIN_TOKEN];
    }
    else {
        return @"";
    }
    
}
+ (void)deleteUserToken {
    [[NSUserDefaults standardUserDefaults] setObject:@"" forKey:PREFS_USER_TOKEN];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
+ (void)deleteLoginToken {
    [[NSUserDefaults standardUserDefaults] setObject:@"" forKey:PREFS_LOGIN_TOKEN];
    [[NSUserDefaults standardUserDefaults] synchronize];
}
@end
