//
//  HomeIdeasCollectionViewController.m
//  Shoot Your Dream
//
//  Created by Arie Prasetyo on 6/22/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import "HomeIdeasCollectionViewController.h"
#import <UIImageView+AFNetworking_UIActivityIndicatorView.h>
@interface HomeIdeasCollectionViewController ()
@property (nonatomic,strong) NSArray *listPromo;
@end

@implementation HomeIdeasCollectionViewController

static NSString * const reuseIdentifier = @"çell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
//    // Register cell classes
//    [self.collectionView registerClass:[HomeIdeasCollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
//    
//    self.listPromo = @[
//                       @"https://placeholdit.imgix.net/~text?txtsize=33&txt=200%C3%97200&w=200&h=200",
//                       @"https://placeholdit.imgix.net/~text?txtsize=33&txt=200%C3%97200&w=200&h=200",
//                       @"https://placeholdit.imgix.net/~text?txtsize=33&txt=200%C3%97200&w=200&h=200",
//                       @"https://placeholdit.imgix.net/~text?txtsize=33&txt=200%C3%97200&w=200&h=200",
//                       @"https://placeholdit.imgix.net/~text?txtsize=33&txt=200%C3%97200&w=200&h=200",
//                       @"https://placeholdit.imgix.net/~text?txtsize=33&txt=200%C3%97200&w=200&h=200",
//                       ];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
#warning Incomplete method implementation -- Return the number of sections
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
#warning Incomplete method implementation -- Return the number of items in the section
    return self.listPromo.count;
}

//- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
////    HomeIdeasCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
////    
////    [cell.mainImageViewSet setImageWithURLRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:[self.listPromo objectAtIndex:indexPath.row]]]
////                                 placeholderImage:nil
////                      usingActivityIndicatorStyle:UIActivityIndicatorViewStyleGray
////                                          success:^(NSURLRequest *request, NSHTTPURLResponse *response, UIImage *image) {
////                                              cell.mainImageViewSet.image = image;
////                                          } failure:^(NSURLRequest *request, NSHTTPURLResponse *response, NSError *error) {
////                                              nil;
////                                          }];
////    
//    // Configure the cell
//    
////    return cell;
//}

#pragma mark <UICollectionViewDelegate>

/*
 // Uncomment this method to specify if the specified item should be highlighted during tracking
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
 }
 */

/*
 // Uncomment this method to specify if the specified item should be selected
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
 return YES;
 }
 */

/*
 // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
 - (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
 }
 
 - (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
 }
 
 - (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
 }
 */

@end
