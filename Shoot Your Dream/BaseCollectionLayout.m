//
//  BaseCollectionLayout.m
//  Shoot Your Dream
//
//  Created by Arie Prasetyo on 7/17/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import "BaseCollectionLayout.h"

@implementation BaseCollectionLayout
- (void)setCurrentCellScale:(CGFloat)scale;
{
    _currentCellScale = scale;
    [self invalidateLayout];
}

- (void)setCurrentCellCenter:(CGPoint)origin
{
    _currentCellCenter = origin;
    [self invalidateLayout];
}
- (UICollectionViewLayoutAttributes *)layoutAttributesForItemAtIndexPath:(NSIndexPath *)indexPath
{
    // Get the current attributes for the item at the indexPath
    UICollectionViewLayoutAttributes *attributes =
    [super layoutAttributesForItemAtIndexPath:indexPath];
    
    // Modify them to match the pinch values
    [self modifyLayoutAttributes:attributes];
    
    // return them to collection view
    return attributes;
}
- (void)modifyLayoutAttributes:(UICollectionViewLayoutAttributes *)layoutAttributes
{
    // If the indexPath matches the one we have stored
    if ([layoutAttributes.indexPath isEqual:_currentCellPath])
    {
        // Assign the new layout attributes
        layoutAttributes.transform3D =
        CATransform3DMakeScale(_currentCellScale, _currentCellScale, 1.0);
        layoutAttributes.center = _currentCellCenter;
        layoutAttributes.zIndex = 1;
    }
}
@end
