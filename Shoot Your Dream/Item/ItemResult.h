//
//  ItemResult.h
//
//  Created by Ratna Kumalasari on 8/22/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ItemStockItem;

@interface ItemResult : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *typeId;
@property (nonatomic, strong) NSString *hasOptions;
@property (nonatomic, assign) id metaKeyword;
@property (nonatomic, assign) id msrp;
@property (nonatomic, assign) id customDesign;
@property (nonatomic, strong) NSString *weight;
@property (nonatomic, strong) NSString *sku;
@property (nonatomic, strong) NSString *imageLabel;
@property (nonatomic, strong) NSString *isRecurring;
@property (nonatomic, strong) NSString *blacknwhitePrlayout;
@property (nonatomic, strong) NSString *thumbnail;
@property (nonatomic, strong) NSString *thumbnailLabel;
@property (nonatomic, strong) NSString *blacknwhitePrmoreviews;
@property (nonatomic, assign) id specialFromDate;
@property (nonatomic, strong) NSString *urlPath;
@property (nonatomic, strong) NSString *status;
@property (nonatomic, assign) id blacknwhitePrrelatedcontent;
@property (nonatomic, assign) id customDesignFrom;
@property (nonatomic, strong) NSString *resultDescription;
@property (nonatomic, assign) id customDesignTo;
@property (nonatomic, strong) NSString *blacknwhitePrprevnext;
@property (nonatomic, strong) NSString *smallImage;
@property (nonatomic, strong) NSString *manufacturerInfo;
@property (nonatomic, strong) NSString *image;
@property (nonatomic, strong) NSString *attributeSetId;
@property (nonatomic, strong) NSString *blacknwhitePrbrandpos;
@property (nonatomic, strong) NSString *requiredOptions;
@property (nonatomic, strong) NSString *price;
@property (nonatomic, assign) id blacknwhitePrtabs;
@property (nonatomic, strong) NSString *blacknwhitePrrelated;
@property (nonatomic, assign) id newsToDate;
@property (nonatomic, strong) NSString *updatedAt;
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *blacknwhitePrbrandlink;
@property (nonatomic, strong) ItemStockItem *stockItem;
@property (nonatomic, assign) id giftMessageAvailable;
@property (nonatomic, strong) NSString *isSalable;
@property (nonatomic, strong) NSString *blacknwhitePrbrandtarget;
@property (nonatomic, strong) NSString *msrpEnabled;
@property (nonatomic, assign) id blacknwhitePrcustom;
@property (nonatomic, assign) id countryOfManufacture;
@property (nonatomic, strong) NSString *blacknwhitePrbrand;
@property (nonatomic, strong) NSString *createdAt;
@property (nonatomic, strong) NSString *downPayment;
@property (nonatomic, strong) NSArray *installment;
@property (nonatomic, strong) NSString *taxClassId;
@property (nonatomic, strong) NSString *smallImageLabel;
@property (nonatomic, strong) NSString *blacknwhitePrsku;
@property (nonatomic, assign) id metaDescription;
@property (nonatomic, assign) id specialPrice;
@property (nonatomic, strong) NSString *blacknwhiteProductimg;
@property (nonatomic, strong) NSString *shortDescription;
@property (nonatomic, strong) NSString *entityId;
@property (nonatomic, strong) NSString *msrpDisplayActualPriceType;
@property (nonatomic, strong) NSString *entityTypeId;
@property (nonatomic, strong) NSString *catIndexPosition;
@property (nonatomic, assign) id customLayoutUpdate;
@property (nonatomic, strong) NSString *visibility;
@property (nonatomic, assign) id metaTitle;
@property (nonatomic, strong) NSString *blacknwhiteRelatedpos;
@property (nonatomic, strong) NSString *urlKey;
@property (nonatomic, assign) id pageLayout;
@property (nonatomic, strong) NSString *blacknwhitePrsidebar;
@property (nonatomic, assign) NSString *newsFromDate;
@property (nonatomic, assign) NSString *specialToDate;
@property (nonatomic, strong) NSString *optionsContainer;
@property (nonatomic, strong) NSString *blacknwhitePrcolleteral;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;

@end
