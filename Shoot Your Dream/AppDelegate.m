//
//  AppDelegate.m
//  Shoot Your Dream
//
//  Created by Arie Prasetyo on 6/12/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import "AppDelegate.h"
#import "LoginViewController.h"
#import <AFNetworkActivityLogger.h>
#import <Fabric/Fabric.h>
#import <Crashlytics/Crashlytics.h>
#import <SVProgressHUD.h>
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSLog(@"data-->%@",[Common getUserToken]);
    if (![Common getUserToken].length || [[Common getUserToken]isEqual:[NSNull null]] ||[[Common getUserToken]isEqualToString:@""]) {
        [Common storeUserToken:@""];
    }
    if (![Common getLoginToken].length || [[Common getLoginToken]isEqual:[NSNull null]] || [[Common getLoginToken]isEqualToString:@""]) {
        [Common storeLoginToken:@""];
    }
    [Fabric with:@[CrashlyticsKit]];
    //  Default font configuration
    [[AFNetworkActivityLogger sharedLogger] startLogging];
    [[AFNetworkActivityLogger sharedLogger] setLevel:AFLoggerLevelDebug];
    UIFont *defaultFontType = [UIFont fontWithName:FONT_NAME_THIN
                                              size:FONT_SIZE_DEFAULT];
    
    NSDictionary *defaultFontAttributes = [NSDictionary dictionaryWithObject:defaultFontType
                                                                      forKey:NSFontAttributeName];
    [[AFNetworkActivityLogger sharedLogger] startLogging];
    //  Title font configuration
    UIFont *titleFontType = [UIFont fontWithName:FONT_NAME_MEDIUM
                                            size:18];
    
    NSDictionary *titleFontAttributes = [NSDictionary dictionaryWithObjects:@[titleFontType, [UIColor colorWithRed:0.933f green:0.498f blue:0.149f alpha:1.00f]]
                                                                    forKeys:@[NSFontAttributeName, NSForegroundColorAttributeName]];
    
    //  Segmented control configuration
    [[UISegmentedControl appearance] setTitleTextAttributes:defaultFontAttributes
                                                   forState:UIControlStateNormal];
    
    //    //  Navigation bar configuration
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:1.000f green:0.549f blue:0.000f alpha:1.00f]];
    [[UINavigationBar appearance] setTintColor:[UIColor colorWithRed:1.000f green:0.549f blue:0.000f alpha:1.00f]];
    [[UINavigationBar appearance] setTitleTextAttributes:titleFontAttributes];
    
    //  Navigation bar button item configuration
    [[UIBarButtonItem appearance] setTitleTextAttributes:defaultFontAttributes
                                                forState:UIControlStateNormal];
    
    //  Back button configuration
    [[UIBarButtonItem appearance] setBackButtonTitlePositionAdjustment:UIOffsetMake(0, -60)
                                                         forBarMetrics:UIBarMetricsDefault];
    
    UIImage *originalBackButtonImage = [UIImage imageNamed:@"back"];
    CGSize backButtonSize = CGSizeMake(25, 25);
    UIGraphicsBeginImageContextWithOptions(backButtonSize, NO, 0.0);
    [originalBackButtonImage drawInRect:CGRectMake(0, 0, backButtonSize.width, backButtonSize.height)];
    UIImage *backButtonImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    backButtonImage = [backButtonImage resizableImageWithCapInsets:UIEdgeInsetsMake(0, 33, 0, 0)];
    [[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButtonImage
                                                      forState:UIControlStateNormal
                                                    barMetrics:UIBarMetricsDefault];
    
    [[UINavigationBar appearance] setBackgroundImage:[UIImage imageNamed:@"navbar"] forBarMetrics:UIBarMetricsDefault];
    [[UINavigationBar appearance] setTranslucent: NO];
    
    ///set default
    UIColor *backgroundColor = [UIColor colorWithRed:0.878f green:0.878f blue:0.878f alpha:1.00f];
    
    // set the bar background color
    
    [[UITabBar appearance] setBackgroundImage:[Common imageFromColor:backgroundColor forSize:CGSizeMake(320, 49) withCornerRadius:0]];
    
    // set the text color for selected state
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                       [UIFont fontWithName:FONT_NAME_THIN size:10], NSFontAttributeName,
                                                       [UIColor colorWithRed:0.933f green:0.498f blue:0.149f alpha:1.00f], NSForegroundColorAttributeName,
                                                       nil]
                                             forState:UIControlStateSelected];
    // set the text color for unselected state
    
    [[UITabBarItem appearance] setTitleTextAttributes:[NSDictionary dictionaryWithObjectsAndKeys:
                                                       [UIFont fontWithName:FONT_NAME_THIN size:10], NSFontAttributeName,
                                                       [UIColor colorWithRed:0.318f green:0.318f blue:0.318f alpha:1.00f], NSForegroundColorAttributeName,
                                                       nil]
                                             forState:UIControlStateNormal];
    
    
    // set the selected icon color
    [[UITabBar appearance] setSelectedImageTintColor:[UIColor colorWithRed:0.933f green:0.498f blue:0.149f alpha:1.00f]];
    // remove the shadow
    [[UITabBar appearance] setShadowImage:nil];
    [[UILabel appearance] setFont:[UIFont fontWithName:FONT_NAME_REGULAR size:14]];
    [[UILabel appearanceWhenContainedIn:[UIButton class], nil] setFont:[UIFont fontWithName:FONT_NAME_REGULAR size:14]];
    NSURLCache *URLCache = [[NSURLCache alloc] initWithMemoryCapacity:4 * 1024 * 1024 diskCapacity:20 * 1024 * 1024 diskPath:nil];
    [NSURLCache setSharedURLCache:URLCache];
    return YES;
}
- (NSTimeInterval) timeStamp {
    return [[NSDate date] timeIntervalSince1970] * 1000;
}
- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
