//
//  BaseTabbasController.m
//  Shoot Your Dream
//
//  Created by Arie Prasetyo on 6/12/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import "BaseTabbarController.h"
#import "LoginViewController.h"
@interface BaseTabbarControlller ()

@end

@implementation BaseTabbarControlller

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    // Do any additional setup after loading the view.
}
-(void)tabBar:(UITabBar *)tabBar didSelectItem:(UITabBarItem *)item{
    self.title = item.title ;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
