//
//  CategoryCell.m
//  Shoot Your Dream
//
//  Created by Arie Prasetyo on 7/17/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import "CategoryCell.h"
#import "ItemDataModels.h"
#import <PINRemoteImage/UIImageView+PINRemoteImage.h>
#import <PINCache/PINCache.h>
@implementation CategoryCell
-(void)setResult:(ItemResult *)result {
    self.collectionItemNameLabel.text = result.name;
    NSURL *url = [NSURL URLWithString:[NSString stringWithFormat:@"%@/%@/%@",BASE_URL,PRODUCT_IMAGE,result.smallImage]];
    [self.CollectionImageView pin_setImageFromURL:url placeholderImage:nil];
    NSString *price = [Common formattedCurrencyWithCurrencySign:@"Rp" value:[[Common sanitizeString:result.price] integerValue]];
    self.collectionItemPriceLabel.text = price;
}
@end
