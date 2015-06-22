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
        self.layer.cornerRadius = 2.0;
        self.clipsToBounds = YES;
    }
    
    return self;
}

@end
