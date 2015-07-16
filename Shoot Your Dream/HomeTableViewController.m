//
//  HomeTableViewController.m
//  Shoot Your Dream
//
//  Created by Arie Prasetyo on 6/21/15.
//  Copyright (c) 2015 Arie Prasetyo. All rights reserved.
//

#import "HomeTableViewController.h"
#import "LoginViewController.h"
#import "IdeasCell.h"
#import "CategoryCell.h"
#import "UIImageView+AFNetworking_UIActivityIndicatorView.h"
@interface HomeTableViewController ()


@property (strong, nonatomic) IBOutlet UITableViewCell *productScrollView;
@property (strong, nonatomic) IBOutlet UIPageControl *productPaginationControl;
@property (strong, nonatomic) IBOutlet UICollectionView *ideasCollectionView;
@property (strong, nonatomic) IBOutlet UICollectionView *saleCollectionView;


@property (strong, nonatomic)  NSArray *listPromo;

@end

@implementation HomeTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ///add fake bottom
    
    UIView *footer = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 1, 44)];
    footer.backgroundColor = [UIColor clearColor];
    self.tableView.tableFooterView = footer;
    
    self.title = @"Home";
    self.productPaginationControl.tintColor = [UIColor orangeColor];
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    self.tabBarItem.image = [[UIImage imageNamed:@"home-off"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [self.tabBarItem setSelectedImage:[UIImage imageNamed:@"home-on"]];
    
    
    self.listPromo = @[
                       @"placeholder",
                       @"placeholder",
                       @"placeholder",
                       @"placeholder",
                       @"placeholder",
                       @"placeholder",
                       @"placeholder",
                       @"placeholder",
                       @"placeholder",
                       @"placeholder",
                       ];
    self.ideasCollectionView.backgroundColor =[UIColor clearColor];
    [self.saleCollectionView registerNib:[UINib nibWithNibName:@"CategoryCell" bundle:[NSBundle mainBundle]]
              forCellWithReuseIdentifier:@"CategoryCell"];
    
    [self.ideasCollectionView registerNib:[UINib nibWithNibName:@"IdeasCell" bundle:[NSBundle mainBundle]]
               forCellWithReuseIdentifier:@"IdeasCell"];
    
    
    UICollectionViewFlowLayout *layoutForIdeas = (UICollectionViewFlowLayout *) self.ideasCollectionView.collectionViewLayout;
    layoutForIdeas.itemSize= CGSizeMake((self.view.frame.size.width-1)/2, 205);
    layoutForIdeas.headerReferenceSize = CGSizeZero;
    layoutForIdeas.footerReferenceSize = CGSizeZero;
    layoutForIdeas.minimumInteritemSpacing = 0.5;
    layoutForIdeas.minimumLineSpacing = 0.5;
    [self.ideasCollectionView setCollectionViewLayout:layoutForIdeas];
    
    UICollectionViewFlowLayout *layoutForSale = (UICollectionViewFlowLayout *) self.ideasCollectionView.collectionViewLayout;
    layoutForSale.itemSize= CGSizeMake((self.view.frame.size.width-1)/2, 205);
    layoutForSale.headerReferenceSize = CGSizeZero;
    layoutForSale.footerReferenceSize = CGSizeZero;
    layoutForSale.minimumInteritemSpacing = 0.5;
    layoutForSale.minimumLineSpacing = 0.5;
    
    
    [self.saleCollectionView setCollectionViewLayout:layoutForSale animated:YES];
    
    [self.tableView reloadData];
    [self openLogin];
}

-(void)openLogin {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Login" bundle:nil];
    LoginViewController *loginWindow = [storyboard instantiateViewControllerWithIdentifier:@"LoginViewController"];
    
    [self.tabBarController presentViewController:loginWindow animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(UIView*)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    // 1. The view for the header
    UIView* headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, tableView.frame.size.width, 25)];
    
    // 2. Set a custom background color and a border
    headerView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg-title_home"]];
    
    // 3. Add a label
    UILabel* headerLabel = [[UILabel alloc] init];
    headerLabel.frame = CGRectMake(5, 2, tableView.frame.size.width - 5, 18);
    headerLabel.backgroundColor = [UIColor clearColor];
    headerLabel.textColor = [Common colorWithHexString:@"363636"];
    
    if (section==1) {
        headerLabel.text = @"IDEAS FOR YOU";
    }
    else {
        headerLabel.text = @"ON SALE";
    }
    headerLabel.font = [UIFont fontWithName:FONT_NAME_MEDIUM size:13];
    headerLabel.textAlignment = NSTextAlignmentLeft;
    
    // 4. Add the label to the header view
    [headerView addSubview:headerLabel];
    
    // 5. Finally return
    return headerView;
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    if (collectionView.tag == 100) {
        return self.listPromo.count;
    }
    else {
        return 10;
    }
    
    
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    
    if (collectionView.tag == 101) {
        CategoryCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"CategoryCell" forIndexPath:indexPath];
        cell.collectionItemPriceLabel.text = @"DP Rp.125.000";
        cell.wrapperView.backgroundColor = [UIColor clearColor];
        cell.CollectionImageView.image = [UIImage imageNamed:[self.listPromo objectAtIndex:indexPath.row]];
        
        return cell;
    }
    else {
        IdeasCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"IdeasCell" forIndexPath:indexPath];
        cell.IdeasImage.image = [UIImage imageNamed:[self.listPromo objectAtIndex:indexPath.row]];
        return cell;
        
        return nil;
    }
    
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section==1) {
        
        return (self.listPromo.count *205)/2;
    }
    if (indexPath.section==2) {
        
        return (10 *205)/2;
    }
    return 300;
}
//homeIdeas


/*
 - (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
 UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
 
 Configure the cell...
 
 return cell;
 }
 */

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 } else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
