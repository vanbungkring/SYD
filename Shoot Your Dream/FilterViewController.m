//
//  FilterViewController.m
//  Shoot Your Dream
//
//  Created by Arie Prasetyo on 6/22/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import "FilterViewController.h"
#import <TTRangeSlider/TTRangeSlider.h>
@interface FilterViewController ()<TTRangeSliderDelegate>
@property (strong, nonatomic) IBOutlet UITextField *sortByForm;
@property (weak, nonatomic) IBOutlet TTRangeSlider *rangeSlider;
@property (strong, nonatomic) IBOutlet UILabel *labelPrice;

@end

@implementation FilterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithRed:0.973f green:0.973f blue:0.973f alpha:1.00f];
    // Do any additional setup after loading the view, typically from a nib.
    self.automaticallyAdjustsScrollViewInsets = FALSE;
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;

    //standard rsnge slider
    
    self.rangeSlider.delegate = self;
    self.rangeSlider.minValue = 100000;
    self.rangeSlider.maxValue = 2000000;
    self.rangeSlider.selectedMinimum = 0;
    self.rangeSlider.selectedMaximum = 2000000;
    self.labelPrice.text = [NSString stringWithFormat:@"Rp %.0f - Rp %.0f", self.rangeSlider.selectedMinimum, self.rangeSlider.selectedMaximum];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)rangeSlider:(TTRangeSlider *)sender didChangeSelectedMinimumValue:(float)selectedMinimum andMaximumValue:(float)selectedMaximum{
    if (sender == self.rangeSlider){
        NSLog(@"Standard slider updated. Min Value: %.0f Max Value: %.0f", selectedMinimum, selectedMaximum);
        self.labelPrice.text = [NSString stringWithFormat:@"Rp %.0f - Rp %.0f", self.rangeSlider.selectedMinimum, self.rangeSlider.selectedMaximum];
    }
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
