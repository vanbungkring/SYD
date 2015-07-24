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
    self.DPBackground.hidden = YES;
    self.DPTextLabel.text = @"Rp 2.500.000";
    self.DPTextLabel.textColor = [Common colorWithHexString:@"EE7F26"];
    self.DPTextLabel.font =[UIFont fontWithName:FONT_NAME_MEDIUM size:16];
    self.cicilanDetailList.text = @"animator adenology antipyresis assassin asexualizing archaeocyathid ascus arresting atony apocopation";
    
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:self.cicilanDetailList.text];
    
    NSMutableParagraphStyle *paragrahStyle = [[NSMutableParagraphStyle alloc] init];
    [paragrahStyle setParagraphSpacing:4];
    [paragrahStyle setParagraphSpacingBefore:3];
    [paragrahStyle setFirstLineHeadIndent:0.0f];  // First line is the one with bullet point
    [paragrahStyle setHeadIndent:10.5f];    // Set the indent for given bullet character and size font
    
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragrahStyle
                             range:NSMakeRange(0, [self.cicilanDetailList.text length])];
    
    self.cicilanDetailList.attributedText = attributedString;
    
    self.keteranganLabel.text = @"Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun. Ia mulai dipopulerkan pada tahun 1960 dengan diluncurkannya lembaran-lembaran Letraset yang";
    [self.keteranganLabel sizeToFit];
    //    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:yourLabel.text];
    //
    //    NSMutableParagraphStyle *paragrahStyle = [[NSMutableParagraphStyle alloc] init];
    //    [paragrahStyle setParagraphSpacing:4];
    //    [paragrahStyle setParagraphSpacingBefore:3];
    //    [paragrahStyle setFirstLineHeadIndent:0.0f];  // First line is the one with bullet point
    //    [paragrahStyle setHeadIndent:10.5f];    // Set the indent for given bullet character and size font
    //
    //    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragrahStyle range:NSMakeRange(0, [self.descriptionLabel.text length])];
    
    //    yourLabel.attributedText = attributedString;
    self.titleLabel.text = @"Iphone 6 Plus - 10 GB - Black";
    
    
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
