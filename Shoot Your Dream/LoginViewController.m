//
//  LoginViewController.m
//  WSUP
//
//  Created by Arie Prasetyo on 5/6/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import "LoginViewController.h"
#import "RoundedButton.h"
#import "ForgotPasswordViewController.h"
#import "RoundedView.h"
#import "OnboardingContentViewController.h"
#import "OnboardingViewController.h"
//#import "ForgotPasswordViewController.h"
@interface LoginViewController ()<UITextFieldDelegate,UIActionSheetDelegate,UIImagePickerControllerDelegate, UINavigationControllerDelegate>
@property (strong, nonatomic) IBOutlet UIView *registerView;
@property (assign, nonatomic) AccountScreenType accountScreenType;
@property (strong, nonatomic) IBOutlet UIView *orView;
@property (strong, nonatomic) IBOutlet RoundedButton *facebookButton;
@property (strong, nonatomic) IBOutlet RoundedView *firstNameView;
@property (strong, nonatomic) IBOutlet RoundedView *lastNameView;
@property (strong, nonatomic) IBOutlet RoundedView *emailView;
@property (strong, nonatomic) IBOutlet UIView *termsView;
@property (strong, nonatomic) IBOutlet UIButton *forgotPasswordButton;
@property (strong, nonatomic) IBOutlet UITextField *uploadPhotos;
@property (strong, nonatomic) IBOutlet RoundedButton *actionButton;
@property (strong, nonatomic) IBOutlet RoundedView *passwordView;
@property (strong, nonatomic) IBOutlet RoundedButton *accountButton;
@property (strong, nonatomic) IBOutlet UITextField *emailTexttfield;
@property (strong, nonatomic) IBOutlet UITextField *passwordTextField;
@property (strong, nonatomic) IBOutlet UITextField *fullName;
@property (strong, nonatomic) NSData *images;
@property (strong,nonatomic) NSMutableDictionary *dictionaryRegister;
@property (strong, nonatomic) IBOutlet UIImageView *checkMark;
@end
static NSString *kUserHasOnboardedKey = @"isEverOpened";
@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.checkMark.hidden = YES;
    self.dictionaryRegister = [[NSMutableDictionary alloc]init];
    [VanKeyboardHelper addToTextFields:@[self.fullName,self.emailTexttfield,self.passwordTextField]];
    self.accountScreenType = LoginScreen;
    
    self.accountButton.layer.cornerRadius = 2.0;
    self.accountButton.layer.borderColor =[UIColor colorWithRed:1.000f green:0.545f blue:0.000f alpha:1.00f].CGColor;
    self.accountButton.layer.borderWidth =1.0;
    
    self.view.backgroundColor = [UIColor colorWithRed:0.973f green:0.973f blue:0.973f alpha:1.00f];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    
    BOOL isEver = [[NSUserDefaults standardUserDefaults]boolForKey:kUserHasOnboardedKey];
    // determine if the user has onboarded yet or not
    
    
    if (!isEver) {
        [self presentViewController:[self generateThirdDemoVC] animated:YES completion:nil];
    }
    
    
}
- (OnboardingViewController *)generateThirdDemoVC {
    OnboardingContentViewController *firstPage = [[OnboardingContentViewController alloc] initWithTitle:@"Step 1" body:@"Ambil foto produk idaman Anda, melalui menu “SHOOT” pada apps, isi data diri beserta alamat lengkap anda dan ajukan aplikasinya." image:[UIImage imageNamed:@"step1"] buttonText:nil action:nil];
    firstPage.iconHeight = 119;
    firstPage.iconWidth = 116;
    firstPage.topPadding = 190;
    firstPage.bodyFontSize = 14;
    firstPage.titleTextColor =  [Common colorWithHexString:@"28a3b2"];
    firstPage.bodyTextColor = [Common colorWithHexString:@"7d7d7d"];
    OnboardingContentViewController *secondPage = [[OnboardingContentViewController alloc] initWithTitle:@"Step 2" body:@"Tunggu respon dari staff “Shoot Your Dream” paling lambat 1x24 jam." image:[UIImage imageNamed:@"step2"] buttonText:nil action:nil];
    secondPage.iconHeight = 120;
    secondPage.iconWidth = 102;
    secondPage.topPadding = 190;
    secondPage.bodyFontSize = 14;
    secondPage.titleTextColor =  [Common colorWithHexString:@"8dc63f"];
    secondPage.bodyTextColor = [Common colorWithHexString:@"7d7d7d"];
    
    OnboardingContentViewController *thirdPage = [[OnboardingContentViewController alloc] initWithTitle:@"Step 3" body:@"Pilih lama cicilan yang Anda inginkan dari beberapa pilihan yang ditawarkan oleh Shoot Your Dream." image:[UIImage imageNamed:@"step3"] buttonText:@"Skip" action:nil];
    
    thirdPage.iconHeight = 80;
    thirdPage.iconWidth = 195;
    thirdPage.topPadding = 190;
    thirdPage.bodyFontSize = 14;
    thirdPage.titleTextColor =  [Common colorWithHexString:@"f99300"];
    thirdPage.bodyTextColor = [Common colorWithHexString:@"7d7d7d"];
    
    
    OnboardingContentViewController *fourthPage = [[OnboardingContentViewController alloc] initWithTitle:@"Step 4" body:@"Produk idaman akan langsung jadi milik Anda, mudah dan aman." image:[UIImage imageNamed:@"step4"] buttonText:@"Get Started!" action:nil];
    
    fourthPage.buttonTextColor = [Common colorWithHexString:@"00aeef"];
    fourthPage.buttonFontSize = 14;
    fourthPage.iconHeight = 110;
    fourthPage.iconWidth = 119;
    fourthPage.topPadding = 190;
    fourthPage.bodyFontSize = 14;
    fourthPage.titleTextColor =  [Common colorWithHexString:@"00aeef"];
    fourthPage.bodyTextColor = [Common colorWithHexString:@"7d7d7d"];
    
    OnboardingViewController *onboardingVC = [[OnboardingViewController alloc] initWithBackgroundImage:[UIImage imageNamed:@"onboard"] contents:@[firstPage, secondPage, thirdPage, fourthPage]];
    onboardingVC.pageControl.pageIndicatorTintColor = [Common colorWithHexString:@"f99300"];
    onboardingVC.shouldMaskBackground = NO;
    onboardingVC.shouldBlurBackground = NO;
    onboardingVC.allowSkipping = YES;
    onboardingVC.shouldFadeTransitions = YES;
    onboardingVC.skipButton.titleLabel.textColor =[Common colorWithHexString:@"00aeef"];
    [onboardingVC.skipButton setTitleColor:[Common colorWithHexString:@"f99300"] forState:UIControlStateNormal];
    onboardingVC.skipHandler = ^{
        [self handleOnboardingCompletion];
    };
    return onboardingVC;
}

- (void)setupNormalRootViewControllerAnimated:(BOOL)animated {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)handleOnboardingCompletion {
    // set that we have completed onboarding so we only do it once... for demo
    // purposes we don't want to have to set this every time so I'll just leave
    // this here...
    //    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:kUserHasOnboardedKey];
    
    [[NSUserDefaults standardUserDefaults] setBool:YES forKey:kUserHasOnboardedKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
    // animate the transition to the main application
    [self setupNormalRootViewControllerAnimated:YES];
}


- (IBAction)loginTapped:(id)sender {
    
    if (self.accountScreenType == LoginScreen) {
        [self loginWithUsername:self.emailTexttfield.text password:self.passwordTextField.text];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
//    else {
        //        [self.dictionaryRegister setObject:self.passwordTextField.text forKey:@"password"];
        //        [self.dictionaryRegister setObject:self.fullName.text forKey:@"full_name"];
        //        [self.dictionaryRegister setObject:self.emailTexttfield.text forKey:@"email"];
        //        [self.dictionaryRegister setObject:self.images forKey:@"school_id"];
        //        [MBProgressHUD showHUDAddedTo:self.view animated:YES];
        //        [APIRequestManager registerWithParams:self.dictionaryRegister data:^(NSArray *json, NSError *error) {
        //            if(!error) {
        //                [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
        //            }
        //            else {
        //                [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
        //
        //            }
        //        }];
   // }
    
}


-(void)loginWithUsername:(NSString *)userName password:(NSString *)password {
    //    [APIRequestManager loginWithParams:@{@"email":userName,
    //                                         @"password":password} data:^(NSArray *json, NSError *error) {
    //                                             if(!error){
    //                                                 NSLog(@"dismiss");
    //                                                 [APIRequestManager getUserProfile:@{@"token":[UserLocaModel getUserProfile].token} data:^(NSArray *json, NSError *error) {
    //                                                     if(!error){
    //                                                         [self dismissViewControllerAnimated:YES completion:^{
    //
    //                                                         }];
    //                                                     }
    //                                                 }] ;
    //                                             }
    //
    //                                         }];
}
- (IBAction)registerAccount:(id)sender {
    if (self.accountScreenType == LoginScreen) {
        self.emailTexttfield.text = @"";
        self.passwordTextField.text = @"";
        [UIView animateWithDuration:0.5
                         animations:^{
                             if([self.images length]) {
                                 [self setHiddenWithState:NO];
                             }
                             else {
                                 [self setHiddenWithState:YES];
                             }
                             
                             self.orView.transform = CGAffineTransformMakeTranslation(0, -10);
                             
                             [UIView transitionWithView:self.firstNameView
                                               duration:0.5
                                                options:UIViewAnimationOptionTransitionCrossDissolve
                                             animations:^{
                                                 self.firstNameView.hidden = NO;
                                             }
                                             completion:nil];
                             self.firstNameView.transform = CGAffineTransformMakeTranslation(0, -10);
                             
                             [UIView transitionWithView:self.lastNameView
                                               duration:0.5
                                                options:UIViewAnimationOptionTransitionCrossDissolve
                                             animations:^{
                                                 self.lastNameView.hidden = NO;
                                             }
                                             completion:nil];
                             self.lastNameView.transform = CGAffineTransformMakeTranslation(0, 88);
                             
                             self.emailView.transform = CGAffineTransformMakeTranslation(0, 38);
                             self.passwordView.transform = CGAffineTransformMakeTranslation(0, 38);
                             self.actionButton.transform = CGAffineTransformMakeTranslation(0, 88);
                             self.accountButton.transform = CGAffineTransformMakeTranslation(0, 88);
                             [UIView transitionWithView:self.forgotPasswordButton
                                               duration:0.5
                                                options:UIViewAnimationOptionTransitionCrossDissolve
                                             animations:^{
                                                 self.forgotPasswordButton.hidden = YES;
                                             }
                                             completion:nil];
                         } completion:^(BOOL finished) {
                             [self.facebookButton setTitle:@"Register with Facebook"
                                                  forState:UIControlStateNormal];
                             [self.actionButton setTitle:@"Register"
                                                forState:UIControlStateNormal];
                             [self.accountButton setTitle:@"Login"
                                                 forState:UIControlStateNormal];
                             
                             self.accountScreenType = SignUpScreen;
                         }];
    } else if (self.accountScreenType == SignUpScreen) {
        NSLog(@"1");
        [UIView animateWithDuration:0.5
                         animations:^{
                             [self setHiddenWithState:YES];
                             
                             self.orView.transform = CGAffineTransformMakeTranslation(0, 0);
                             
                             [UIView transitionWithView:self.firstNameView
                                               duration:0.5
                                                options:UIViewAnimationOptionTransitionCrossDissolve
                                             animations:^{
                                                 self.firstNameView.hidden = YES;
                                             }
                                             completion:nil];
                             self.firstNameView.transform = CGAffineTransformMakeTranslation(0, 0);
                             
                             [UIView transitionWithView:self.lastNameView
                                               duration:0.5
                                                options:UIViewAnimationOptionTransitionCrossDissolve
                                             animations:^{
                                                 self.lastNameView.hidden = YES;
                                             }
                                             completion:nil];
                             self.lastNameView.transform = CGAffineTransformMakeTranslation(0, 0);
                             
                             self.emailView.transform = CGAffineTransformMakeTranslation(0, 0);
                             self.passwordView.transform = CGAffineTransformMakeTranslation(0, 0);
                             self.actionButton.transform = CGAffineTransformMakeTranslation(0, 0);
                             
                             [UIView transitionWithView:self.termsView
                                               duration:0.5
                                                options:UIViewAnimationOptionTransitionCrossDissolve
                                             animations:^{
                                                 self.termsView.hidden = YES;
                                             }
                                             completion:nil];
                             self.termsView.transform = CGAffineTransformMakeTranslation(0, 0);
                             
                             self.accountButton.transform = CGAffineTransformMakeTranslation(0, 0);
                             
                             [UIView transitionWithView:self.forgotPasswordButton
                                               duration:0.5
                                                options:UIViewAnimationOptionTransitionCrossDissolve
                                             animations:^{
                                                 self.forgotPasswordButton.hidden = NO;
                                             }
                                             completion:nil];
                         } completion:^(BOOL finished) {
                             
                             [self.actionButton setTitle:@"Log In"
                                                forState:UIControlStateNormal];
                             [self.accountButton setTitle:@"Need an account?"
                                                 forState:UIControlStateNormal];
                             
                             self.accountScreenType = LoginScreen;
                         }];
    }
}
-(void)setHiddenWithState:(BOOL)state {
    self.checkMark.hidden = state;
}
//
//- (IBAction)loginWithFacebook:(id)sender {
//    [MBProgressHUD showHUDAddedTo:self.view animated:YES];
//    FBSDKLoginManager *login = [[FBSDKLoginManager alloc] init];
//    [login logInWithReadPermissions:@[@"email"] handler:^(FBSDKLoginManagerLoginResult *result, NSError *error) {
//        if (error) {
//        } else if (result.isCancelled) {
//            // Handle cancellations
//        } else {
//            // If you ask for multiple permissions at once, you
//            // should check if specific permissions missing
//            if ([result.grantedPermissions containsObject:@"email"]) {
//                // Do work
//                NSLog(@"Granted all permission");
//                if ([FBSDKAccessToken currentAccessToken])
//                {
//                    [[[FBSDKGraphRequest alloc] initWithGraphPath:@"me" parameters:nil] startWithCompletionHandler:^(FBSDKGraphRequestConnection *connection, id results, NSError *error)
//                     {
//                         if (!error)
//                         {
//                             if (self.accountScreenType == LoginScreen) {
//                                 [MBProgressHUD showHUDAddedTo:self.view animated:YES];
//                                 [APIRequestManager loginWithFacebook:@{
//                                                                        @"facebook_id":[NSString stringWithFormat:@"%d",[[results objectForKey:@"id"]integerValue]],
//                                                                        @"email":[results objectForKey:@"email"],
//                                                                        @"facebook_token":[FBSDKAccessToken currentAccessToken].tokenString
//
//                                                                        } data:^(NSArray *json, NSError *error) {
//                                                                            if(!error) {
//                                                                                [self dismissViewControllerAnimated:YES completion:^{
//                                                                                    [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
//                                                                                }];
//
//                                                                            }
//                                                                            else {
//                                                                                [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
//                                                                                NSLog(@"Error->%@",error);
//                                                                            }
//
//                                                                        }];
//                             }
//                             else {
//                                 self.emailTexttfield.text = [results objectForKey:@"email"];
//                                 self.fullName.text = [NSString stringWithFormat:@"%@ %@",[results objectForKey:@"first_name"],[results objectForKey:@"last_name"]];
//                                 [self.dictionaryRegister setObject:[NSString stringWithFormat:@"%d",[[results objectForKey:@"id"]integerValue]] forKey:@"facebook_id"];
//                                 [self.dictionaryRegister setObject:[FBSDKAccessToken currentAccessToken].tokenString forKey:@"facebook_token"];
//
//                                 NSLog(@"result--.%@",results);
//                                 [MBProgressHUD hideAllHUDsForView:self.view animated:YES];
//                             }
//                         }
//                         else {
//                             NSLog(@"Error Faceook --->%@",error);
//                         }
//                     }];
//                }
//            }
//        }
//    }];
//}

- (IBAction)accountLogin:(id)sender {
}

- (IBAction)openCamera:(id)sender {
    [self.uploadPhotos resignFirstResponder];
    
    
}
- (IBAction)openCameraTouchDown:(id)sender {
    
    NSString *actionSheetTitle = @"Select Photo Source"; //Action Sheet Title
    NSString *other1 = @"Camera";
    NSString *other2 = @"Photo Library";
    NSString *cancelTitle = @"Cancel";
    UIActionSheet *actionSheet = [[UIActionSheet alloc]
                                  initWithTitle:actionSheetTitle
                                  delegate:self
                                  cancelButtonTitle:cancelTitle
                                  destructiveButtonTitle:nil
                                  otherButtonTitles:other1, other2, nil];
    
    [actionSheet showInView:self.view];
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    NSString *buttonTitle = [actionSheet buttonTitleAtIndex:buttonIndex];
    
    if ([buttonTitle isEqualToString:@"Camera"]) {
        [self openCamera];
    }
    if ([buttonTitle isEqualToString:@"Photo Library"]) {
        [self openLibrary];
    }
}

-(void)openCamera {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    
    [self presentViewController:picker animated:YES completion:NULL];
}
-(void)openLibrary {
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.allowsEditing = YES;
    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;
    
    [self presentViewController:picker animated:YES completion:NULL];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    [self setHiddenWithState:NO];
    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    self.images= UIImageJPEGRepresentation(chosenImage,0.0);
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker {
    
    [picker dismissViewControllerAnimated:YES completion:NULL];
    
}


- (IBAction)forgotPassword:(id)sender {
    
    UIStoryboard *sb  = [UIStoryboard storyboardWithName:@"Login" bundle:nil];
    ForgotPasswordViewController *fp =[sb instantiateViewControllerWithIdentifier:@"ForgotPasswordViewController"];
    [self presentViewController:fp animated:YES completion:nil];
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
