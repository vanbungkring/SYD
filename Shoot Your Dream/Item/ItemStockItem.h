//
//  ItemStockItem.h
//
//  Created by Ratna Kumalasari on 8/7/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface ItemStockItem : NSObject <NSCoding, NSCopying>

@property (nonatomic, strong) NSString *manageStock;
@property (nonatomic, strong) NSString *stockStatusChangedAuto;
@property (nonatomic, strong) NSString *useConfigMinSaleQty;
@property (nonatomic, strong) NSString *stockId;
@property (nonatomic, strong) NSString *productName;
@property (nonatomic, strong) NSString *minSaleQty;
@property (nonatomic, strong) NSString *useConfigEnableQtyIncrements;
@property (nonatomic, strong) NSString *itemId;
@property (nonatomic, strong) NSString *isDecimalDivided;
@property (nonatomic, strong) NSString *isInStock;
@property (nonatomic, strong) NSString *isQtyDecimal;
@property (nonatomic, strong) NSString *useConfigMinQty;
@property (nonatomic, strong) NSString *typeId;
@property (nonatomic, strong) NSString *qty;
@property (nonatomic, strong) NSString *useConfigEnableQtyInc;
@property (nonatomic, strong) NSString *minQty;
@property (nonatomic, strong) NSString *qtyIncrements;
@property (nonatomic, strong) NSString *productTypeId;
@property (nonatomic, strong) NSString *productId;
@property (nonatomic, strong) NSString *useConfigNotifyStockQty;
@property (nonatomic, strong) NSString *useConfigBackorders;
@property (nonatomic, strong) NSString *useConfigManageStock;
@property (nonatomic, strong) NSString *stockStatusChangedAutomatically;
@property (nonatomic, strong) NSString *backorders;
@property (nonatomic, strong) NSString *storeId;
@property (nonatomic, strong) NSString *useConfigQtyIncrements;
@property (nonatomic, strong) NSString *useConfigMaxSaleQty;
@property (nonatomic, assign) id notifyStockQty;
@property (nonatomic, assign) BOOL productStatusChanged;
@property (nonatomic, strong) NSString *lowStockDate;
@property (nonatomic, assign) id productChangedWebsites;
@property (nonatomic, strong) NSString *enableQtyIncrements;
@property (nonatomic, strong) NSString *maxSaleQty;

+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict;
- (instancetype)initWithDictionary:(NSDictionary *)dict;
- (NSDictionary *)dictionaryRepresentation;
+ (NSURLSessionDataTask *)requestSingleProduct:(NSDictionary *)parameters completionBlock:(void(^)(NSArray *json,NSError *error))block;
+ (NSURLSessionDataTask *)requestProductByCategory:(NSDictionary *)parameters completionBlock:(void(^)(NSArray *json,NSError *error))block;
@end
