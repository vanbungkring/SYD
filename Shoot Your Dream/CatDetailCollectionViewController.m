//
//  CatDetailCollectionViewController.m
//  Shoot Your Dream
//
//  Created by Arie Prasetyo on 6/22/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import "CatDetailCollectionViewController.h"
#import "ItemViewController.h"
#import "CategoryCell.h"
#import "BaseCollectionLayout.h"
@interface CatDetailCollectionViewController ()
@property (nonatomic,strong)NSArray *items;
@end

@implementation CatDetailCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    UICollectionViewFlowLayout *layout = (UICollectionViewFlowLayout *) self.collectionView.collectionViewLayout;
    layout.itemSize= CGSizeMake((self.view.frame.size.width-1)/2, 205);
    layout.headerReferenceSize = CGSizeZero;
    layout.footerReferenceSize = CGSizeZero;
    layout.minimumInteritemSpacing = 0.5;
    layout.minimumLineSpacing = 0.5;
    [self.collectionView setCollectionViewLayout:layout];
    
    self.items = @[@{@"img":@"handphone-off",@"title":@"Handphone",@"price":@"IDR 140.000"},
                   @{@"img":@"electronic-off",@"title":@"Handphone",@"price":@"IDR 140.000"},
                   @{@"img":@"furniture-off",@"title":@"Handphone",@"price":@"IDR 140.000"},
                   @{@"img":@"fashion-off",@"title":@"Handphone",@"price":@"IDR 140.000"},
                   @{@"img":@"homeappliance-off",@"title":@"Handphone",@"price":@"IDR 140.000"},
                   @{@"img":@"hobby-off",@"title":@"Handphone",@"price":@"IDR 140.000"}];
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    
    // Do any additional setup after loading the view.
}
- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
    
    [self.collectionView registerNib:[UINib nibWithNibName:@"CategoryCell" bundle:[NSBundle mainBundle]]
          forCellWithReuseIdentifier:@"CategoryCell"];
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
    return self.items.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CategoryCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CategoryCell" forIndexPath:indexPath];
    //
    //    // Configure the cell
    //    UIImageView *recipeImageView = (UIImageView *)[cell viewWithTag:100];
    //    UILabel *categoryLabel = (UILabel *)[cell viewWithTag:101];
    //    UILabel *priceLabel = (UILabel *)[cell viewWithTag:102];
    //    recipeImageView.image = [UIImage imageNamed:[[self.items  objectAtIndex:indexPath.row] valueForKeyPath:@"img"]];
    //    categoryLabel.text =[[self.items  objectAtIndex:indexPath.row] valueForKeyPath:@"title"];
    //    priceLabel.text =[[self.items  objectAtIndex:indexPath.row] valueForKeyPath:@"price"];
    cell.CollectionImageView.image = [UIImage imageNamed:[[self.items  objectAtIndex:indexPath.row] valueForKeyPath:@"img"]];
    cell.collectionItemNameLabel.text = [[self.items  objectAtIndex:indexPath.row] valueForKeyPath:@"title"];
    cell.collectionItemPriceLabel.text = [[self.items  objectAtIndex:indexPath.row] valueForKeyPath:@"price"];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Item" bundle:nil];
    ItemViewController *detail = [sb instantiateViewControllerWithIdentifier:@"ItemViewController"];
    detail.title =[[self.items  objectAtIndex:indexPath.row] valueForKeyPath:@"title"];
    [self.navigationController pushViewController:detail animated:YES];
}
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
