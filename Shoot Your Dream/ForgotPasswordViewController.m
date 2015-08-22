//
//  ForgotPasswordViewController.m
//  WSUP
//
//  Created by Arie Prasetyo on 6/2/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import "ForgotPasswordViewController.h"

@interface ForgotPasswordViewController ()
@property (strong, nonatomic) IBOutlet UITextField *emailTextField;

@end

@implementation ForgotPasswordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [VanKeyboardHelper addToTextFields:@[self.emailTextField]];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backToLogin:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
- (IBAction)submitForgotToServer:(id)sender {
    //    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
    //    [APIRequestManager forgotPassword:@{@"email":self.emailTextField.text} data:^(NSArray *json, NSError *error) {
    //        if(!error) {
    //            [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
    //            [self dismissViewControllerAnimated:YES completion:nil];
    //        }
    //        [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
    //    }];
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
