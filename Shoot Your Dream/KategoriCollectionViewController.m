//
//  KategoriCollectionViewController.m
//  Shoot Your Dream
//
//  Created by Arie Prasetyo on 6/22/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import "KategoriCollectionViewController.h"
#import "CatDetailCollectionViewController.h"
#import "CategoryDataModels.h"
@interface KategoriCollectionViewController ()
@property (strong, nonatomic) IBOutlet UICollectionView *collectionView;
@property (nonatomic,strong)NSMutableArray *category;
@end

@implementation KategoriCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    self.category = [NSMutableArray new];
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    // Register cell classes
    
    UICollectionViewFlowLayout *layout = (UICollectionViewFlowLayout *) self.collectionView.collectionViewLayout;
    layout.itemSize= CGSizeMake((self.view.frame.size.width-1)/2, 150);
    layout.headerReferenceSize = CGSizeZero;
    layout.footerReferenceSize = CGSizeZero;
    layout.minimumInteritemSpacing = 0.5;
    layout.minimumLineSpacing = 0.5;
    [self.collectionView setCollectionViewLayout:layout];
    
    [self.collectionView reloadData];
    self.collectionView.backgroundColor = [UIColor colorWithRed:0.902f green:0.902f blue:0.902f alpha:1.00f];
    [self getCategory];
    
}
- (void)getCategory {
    [CategoryResponse getAllCategories:@{@"access_token":[Common getUserToken]} completionBlock:^(NSArray *json, NSError *error) {
        if (!error) {
            
            for ( int i=0; i<json.count; i++) {
                CategoryResult *result = json[i];
                if (result.child.count) {
                    [self.category addObjectsFromArray:result.child];
                }
            }
            [self.collectionView reloadData];
        }
    }];
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
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.category.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    CategoryChild *child = [self.category objectAtIndex:indexPath.row];
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    UIImageView *recipeImageView = (UIImageView *)[cell viewWithTag:100];
    UILabel *categoryLabel = (UILabel *)[cell viewWithTag:101];
    recipeImageView.image = [UIImage imageNamed:[child.name lowercaseString]];
    categoryLabel.text =child.name;
    // Configure the cell
    
    return cell;
}
- (void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    CategoryChild *child = [self.category objectAtIndex:indexPath.row];
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"KategoryDetail" bundle:nil];
    CatDetailCollectionViewController *detail = [sb instantiateViewControllerWithIdentifier:@"KategoryDetail"];
    detail.title = child.name;
    detail.categoryId = child.entityId;
    [self.navigationController pushViewController:detail animated:YES];
    
}
@end
