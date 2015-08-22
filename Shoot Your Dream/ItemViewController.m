//
//  ItemViewController.m
//  Shoot Your Dream
//
//  Created by Arie Prasetyo on 6/22/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import "ItemViewController.h"
#import "Cicilan.h"
@interface ItemViewController ()
@property (strong, nonatomic) IBOutlet UILabel *keteranganLabel;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UIImageView *DPBackground;
@property (strong, nonatomic) IBOutlet UILabel *DPTextLabel;
@property (strong, nonatomic) IBOutlet UILabel *cicilanDetailList;

@property (strong, nonatomic) IBOutlet Cicilan *cicilanView;

@end

@implementation ItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.DPBackground.hidden = NO;
    self.DPTextLabel.text = @"Tanpa DP";
    self.DPTextLabel.textColor = [Common colorWithHexString:@"FFFFFF"];
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
    self.cicilanView.hidden = NO;
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
