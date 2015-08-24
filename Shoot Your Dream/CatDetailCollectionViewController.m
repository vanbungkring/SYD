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
#import "ItemDataModels.h"
#import "FilterViewController.h"
@interface CatDetailCollectionViewController ()
@property (nonatomic,strong)NSMutableArray *items;
@property (nonatomic,strong)NSMutableArray *price;
@property (nonatomic,strong)NSMutableArray *downPayment;

@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@end

@implementation CatDetailCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    self.price = [[NSMutableArray alloc]init];
    self.downPayment = [[NSMutableArray alloc]init];
    UICollectionViewFlowLayout *layout = (UICollectionViewFlowLayout *) self.collectionView.collectionViewLayout;
    layout.itemSize= CGSizeMake((self.view.frame.size.width-1)/2, 205);
    layout.headerReferenceSize = CGSizeZero;
    layout.footerReferenceSize = CGSizeZero;
    layout.minimumInteritemSpacing = 0.5;
    layout.minimumLineSpacing = 0.5;
    [self.collectionView setCollectionViewLayout:layout];
    
    self.items = [NSMutableArray new];
    [self.collectionView registerNib:[UINib nibWithNibName:@"CategoryCell" bundle:[NSBundle mainBundle]]
          forCellWithReuseIdentifier:@"CategoryCell"];
    [ItemResponse getProductByCategories:self.categoryId parameters:@{@"access_token":[Common getUserToken]} completionBlock:^(NSArray *json, NSError *error) {
        if (!error) {
            if (![self.items containsObject:json]) {
                self.items = [NSMutableArray arrayWithArray:json];
                [self getFilter];
                [self.collectionView reloadData];
            };
        }
    }];
    
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    
    // Do any additional setup after loading the view.
}
- (void)getFilter {
    for (int i=0; i<self.items.count; i++) {
        ItemResult *result = self.items[i];
        NSLog(@"result Pirce-->%@",[Common sanitizeString:result.price]);
        [self.price addObject:[NSNumber numberWithInt:[[Common sanitizeString:result.price] intValue]]];
        [self.downPayment addObject:[NSNumber numberWithInt:[result.downPayment intValue]]];
    }
    
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:YES];
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
- (IBAction)filterDIdtapped:(id)sender {
    FilterViewController *filter = [self.storyboard instantiateViewControllerWithIdentifier:@"FilterVC"];
    filter.filterArray = [Common sortArray:self.price];
    [self.navigationController pushViewController:filter animated:YES];
}

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
    ItemResult *result = [self.items objectAtIndex:indexPath.row];
    CategoryCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CategoryCell" forIndexPath:indexPath];
    [cell setResult:result];
    return cell;
}

- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    ItemResult *result = [self.items objectAtIndex:indexPath.row];
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Item" bundle:nil];
    ItemViewController *detail = [sb instantiateViewControllerWithIdentifier:@"ItemViewController"];
    detail.title = result.name;
    detail.resultItem = result;
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
