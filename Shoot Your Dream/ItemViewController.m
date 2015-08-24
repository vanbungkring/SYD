//
//  ItemViewController.m
//  Shoot Your Dream
//
//  Created by Arie Prasetyo on 6/22/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import "ItemViewController.h"
#import "Cicilan.h"
#import <PINRemoteImage/UIImageView+PINRemoteImage.h>
#import <PINCache/PINCache.h>
@interface ItemViewController ()
@property (strong, nonatomic) IBOutlet UILabel *keteranganLabel;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UIImageView *DPBackground;
@property (strong, nonatomic) IBOutlet UILabel *DPTextLabel;
@property (strong, nonatomic) IBOutlet UILabel *cicilanDetailList;
@property (weak, nonatomic) IBOutlet UIImageView *imageDetailView;

@property (strong, nonatomic) IBOutlet Cicilan *cicilanView;

@end

@implementation ItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@/%@/%@",BASE_URL,PRODUCT_IMAGE,self.resultItem.smallImage]];
    [self.imageDetailView pin_setImageFromURL:url placeholderImage:nil];
    self.DPBackground.hidden = NO;
    self.DPTextLabel.textColor = [Common colorWithHexString:@"FFFFFF"];
    NSString *price = [Common sanitizeString:self.resultItem.price];
    
    if([price isEqualToString:@"0"]) {
        self.DPTextLabel.text = @"Tanpa DP";
    }
    else {
        self.DPTextLabel.text = [Common formattedCurrencyWithCurrencySign:@"RP" value:[[Common sanitizeString:self.resultItem.downPayment] integerValue]];
        self.DPTextLabel.textColor = [Common colorWithHexString:@"000000"];
    }
    
    self.DPTextLabel.font =[UIFont fontWithName:FONT_NAME_MEDIUM size:16];
    self.cicilanDetailList.text = @" • animator adenology \n • antipyresis assassin asexualizing \n • rchaeocyathid ascus arresting atony apocopation";
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self.cicilanDetailList.text];
    
    NSMutableParagraphStyle *paragrahStyle = [[NSMutableParagraphStyle alloc] init];
    [paragrahStyle setParagraphSpacing:4];
    [paragrahStyle setParagraphSpacingBefore:3];
    [paragrahStyle setFirstLineHeadIndent:0.0f];
    [paragrahStyle setHeadIndent:10.5f];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragrahStyle
                             range:NSMakeRange(0, [self.cicilanDetailList.text length])];
    
    
    self.cicilanDetailList.attributedText = attributedString;
    
    self.keteranganLabel.text = self.resultItem.resultDescription;
    self.titleLabel.text = self.resultItem.name;
    
    
    // Do any additional setup after loading the view.
    self.titleLabel.font =[UIFont fontWithName:FONT_NAME_MEDIUM size:16];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)addToCart:(id)sender {
    
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    
    // Assuming you've hooked this all up in a Storyboard with a popover presentation style
    if ([segue.identifier isEqualToString: @"CicilanList"]) {
        
        UINavigationController * nvc = segue.destinationViewController;
        UIPopoverPresentationController * pvc = nvc.popoverPresentationController;
    }
    
}

#pragma mark == UIPopoverPresentationControllerDelegate ==
- (UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller
{
    return UIModalPresentationNone;
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
