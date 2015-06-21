//
//  RoundedImage.m
//  abraresto-ios
//
//  Created by Wilbert Liu on 6/13/14.
//  Copyright (c) 2014 abraresto. All rights reserved.
//

#import "RoundedImage.h"

@implementation RoundedImage

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
        self.layer.cornerRadius = self.bounds.size.width / 2;
        self.clipsToBounds = YES;
    }
    
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
