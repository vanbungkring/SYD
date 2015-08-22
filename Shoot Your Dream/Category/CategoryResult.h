//
//  CategoryResult.h
//
//  Created by Ratna Kumalasari on 8/22/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CategoryChild;

@interface CategoryResult : NSObject <NSCoding, NSCopying>

@property (nonatomic, assign) id meigeeCatSubcontent;
@property (nonatomic, strong) NSString *parentId;
@property (nonatomic, strong) NSString *moreviews;
@property (nonatomic, assign) id customDesign;
@property (nonatomic, assign) id meigeeGridLayout;
@property (nonatomic, assign) id availableSortBy;
@property (nonatomic, strong) NSString *childrenCount;
@property (nonatomic, strong) NSString *meigeeCatLinktarget;
@property (nonatomic, strong) NSString *position;
@property (nonatomic, strong) NSString *meigeeCatMenutype;
@property (nonatomic, strong) NSString *meigeeCatCustomlink;
@property (nonatomic, strong) NSString *wishlist;
@property (nonatomic, assign) id metaKeywords;
@property (nonatomic, strong) NSString *addtocart;
@property (nonatomic, strong) NSString *urlPath;
@property (nonatomic, strong) NSString *ratingAddReviewLink;
@property (nonatomic, strong) NSString *mailtofriend;
@property (nonatomic, assign) id customDesignFrom;
@property (nonatomic, strong) NSString *displayMode;
@property (nonatomic, assign) id resultDescription;
@property (nonatomic, assign) id customDesignTo;
@property (nonatomic, strong) NSString *meigeeCatBgOption;
@property (nonatomic, strong) CategoryChild *child;
@property (nonatomic, strong) NSString *isActive;
@property (nonatomic, assign) id meigeeCatBlockTop;
@property (nonatomic, strong) NSString *attributeSetId;
@property (nonatomic, strong) NSString *includeInMenu;
@property (nonatomic, strong) NSString *updatedAt;
@property (nonatomic, assign) id meigeeCatMaxQuantity;
@property (nonatomic, assign) id meigeeCatBlockBottom;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *ratingStars;
@property (nonatomic, strong) NSString *productname;
@property (nonatomic, strong) NSString *ratingCustLink;
@property (nonatomic, strong) NSString *createdAt;
@property (nonatomic, strong) NSString *productprice;
@property (nonatomic, strong) NSString *customUseParentSettings;
@property (nonatomic, strong) NSString *isAnchor;
@property (nonatomic, assign) id metaDescription;
@property (nonatomic, assign) id filterPriceRange;
@property (nonatomic, strong) NSString *sidebarhider;
@property (nonatomic, assign) id meigeeCatBlockRight;
@property (nonatomic, strong) NSString *entityId;
@property (nonatomic, strong) NSString *level;
@property (nonatomic, assign) id landingPage;
@property (nonatomic, strong) NSString *entityTypeId;
@property (nonatomic, strong) NSString *quickview;
@property (nonatomic, strong) NSString *compareproducts;
@property (nonatomic, strong) NSString *customApplyToProducts;
@property (nonatomic, assign) id meigeeCatCustomlabel;
@property (nonatomic, strong) NSString *metaTitle;
@property (nonatomic, assign) id customLayoutUpdate;
@property (nonatomic, strong) NSString *urlKey;
@property (nonatomic, assign) id pageLayout;
@property (nonatomic, strong) NSString *path;
@property (nonatomic, assign) id meigeeCatRatio;
@property (nonatomic, assign) id meigeeCatLabeltext;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
