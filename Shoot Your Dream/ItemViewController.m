//
//  ItemViewController.m
//  Shoot Your Dream
//
//  Created by Arie Prasetyo on 6/22/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import "ItemViewController.h"
#import <DLRadioButton/DLRadioButton.h>
@interface ItemViewController ()
@property (strong, nonatomic) IBOutlet UILabel *keteranganLabel;
@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (strong, nonatomic) IBOutlet UIView *OpsiCicilan;

@end

@implementation ItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.keteranganLabel.text = @"Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebuah kumpulan teks dan mengacaknya untuk menjadi sebuah buku contoh huruf. Ia tidak hanya bertahan selama 5 abad, tapi juga telah beralih ke penataan huruf elektronik, tanpa ada perubahan apapun. Ia mulai dipopulerkan pada tahun 1960 dengan diluncurkannya lembaran-lembaran Letraset yang";
    [self.keteranganLabel sizeToFit];
    self.titleLabel.text = @"Iphone 6 Plus - 10 GB - Black";
    
    
    // programmatically add buttons
    // first button
    DLRadioButton *firstRadioButton = [[DLRadioButton alloc] initWithFrame:CGRectMake(30, 0, self.view.frame.size.width - 60, 15)];
    firstRadioButton.titleLabel.font = [UIFont systemFontOfSize:14];
    [firstRadioButton setTitle:@"Cicilan 1000 bulan" forState:UIControlStateNormal];
    [firstRadioButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    firstRadioButton.indicatorColor = [UIColor redColor];
    firstRadioButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
    [self.OpsiCicilan addSubview:firstRadioButton];
    
    // Do any additional setup after loading the view.
    self.titleLabel.font =[UIFont fontWithName:FONT_NAME_MEDIUM size:16];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)addToCart:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
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
