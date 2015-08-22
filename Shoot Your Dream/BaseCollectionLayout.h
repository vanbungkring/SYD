//
//  BaseCollectionLayout.h
//  Shoot Your Dream
//
//  Created by Arie Prasetyo on 7/17/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseCollectionLayout : UICollectionViewLayout
@property (strong, nonatomic) NSIndexPath *currentCellPath;
@property (nonatomic) CGPoint currentCellCenter;
@property (nonatomic) CGFloat currentCellScale;

@end
