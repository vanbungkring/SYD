//
//  CategoryCell.h
//  Shoot Your Dream
//
//  Created by Arie Prasetyo on 7/17/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CategoryCell : UICollectionViewCell
@property (strong, nonatomic) IBOutlet UIImageView *CollectionImageView;
@property (strong, nonatomic) IBOutlet UILabel *collectionItemNameLabel;
@property (strong, nonatomic) IBOutlet UILabel *collectionItemPriceLabel;
@property (strong, nonatomic) IBOutlet UIView *wrapperView;

@end
