//
//  ShootViewController.m
//  Shoot Your Dream
//
//  Created by Arie Prasetyo on 6/21/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import "ShootViewController.h"

@interface ShootViewController ()<UIActionSheetDelegate,UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@end

@implementation ShootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setTabBarVisible:NO animated:YES];
    self.navigationController.navigationBarHidden = YES;
    // Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    [self openPicker];
}

-(void)openPicker {
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
// a param to describe the state change, and an animated flag
// optionally add a completion block which matches UIView animation
- (void)setTabBarVisible:(BOOL)visible animated:(BOOL)animated {
    
    // bail if the current state matches the desired state
    if ([self tabBarIsVisible] == visible) return;
    
    // get a frame calculation ready
    CGRect frame = self.tabBarController.tabBar.frame;
    CGFloat height = frame.size.height;
    CGFloat offsetY = (visible)? -height : height;
    
    // zero duration means no animation
    CGFloat duration = (animated)? 0.2 : 0.0;
    
    [UIView animateWithDuration:duration animations:^{
        self.tabBarController.tabBar.frame = CGRectOffset(frame, 0, offsetY);
    }];
}

// know the current state
- (BOOL)tabBarIsVisible {
    return self.tabBarController.tabBar.frame.origin.y < CGRectGetMaxY(self.view.frame);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex {
    NSString *buttonTitle = [actionSheet buttonTitleAtIndex:buttonIndex];
    
    if ([buttonTitle isEqualToString:@"Camera"]) {
        [self openCamera];
    }
    if ([buttonTitle isEqualToString:@"Photo Library"]) {
        [self openLibrary];
    }
    else {
        [self setTabBarVisible:YES animated:YES];
        [self.navigationController setNavigationBarHidden:NO animated:YES];
        [self.tabBarController setSelectedIndex:1];
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
    
    UIImage *pickedImageOriginal = [info objectForKey:UIImagePickerControllerOriginalImage];
    
    UIImage *pickedImageEdited = [info objectForKey:UIImagePickerControllerEditedImage];
    
    //do your stuff
    
    
    //    UIImage *chosenImage = info[UIImagePickerControllerEditedImage];
    //    self.images= UIImageJPEGRepresentation(pickedImageEdited,0.0);
    //    [self.postDictionary setObject:self.images forKey:@"photo"];
    //    [picker dismissViewControllerAnimated:YES completion:^{
    //        [self setAsAnon];
    //    }];
    //
}

//[UIColor colorWithRed:0.933f green:0.498f blue:0.149f alpha:1.00f]
// [[UITabBar appearance] setSelectionIndicatorImage:[Common imageFromColor:[UIColor clearColor] forSize:CGSizeMake(64, 49) withCornerRadius:0]];
/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
