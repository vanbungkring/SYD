//
//  RoundedButton.m
//  abraresto-ios
//
//  Created by Wilbert Liu on 8/13/14.
//  Copyright (c) 2014 abraresto. All rights reserved.
//

#import "RoundedButton.h"

@implementation RoundedButton

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    
    if (self) {
        self.titleLabel.font = [UIFont fontWithName:FONT_NAME_DEFAULT size:13];
        self.layer.cornerRadius = 3;
        self.clipsToBounds = YES;
    }
    
    return self;
}

@end
