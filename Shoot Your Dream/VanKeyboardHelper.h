//
//  VanKeyboardHelper.h
//  WSUP
//
//  Created by Arie Prasetyo on 6/2/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface VanKeyboardHelper : UIToolbar
- (instancetype)initWithTextFields:(NSArray *)textFields;
+ (instancetype)addToTextFields:(NSArray *)textFields;

@property (strong, nonatomic) NSArray *textFields;

@end