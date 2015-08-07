//
//  ItemStockItem.m
//
//  Created by Ratna Kumalasari on 8/7/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "ItemStockItem.h"


NSString *const kItemStockItemManageStock = @"manage_stock";
NSString *const kItemStockItemStockStatusChangedAuto = @"stock_status_changed_auto";
NSString *const kItemStockItemUseConfigMinSaleQty = @"use_config_min_sale_qty";
NSString *const kItemStockItemStockId = @"stock_id";
NSString *const kItemStockItemProductName = @"product_name";
NSString *const kItemStockItemMinSaleQty = @"min_sale_qty";
NSString *const kItemStockItemUseConfigEnableQtyIncrements = @"use_config_enable_qty_increments";
NSString *const kItemStockItemItemId = @"item_id";
NSString *const kItemStockItemIsDecimalDivided = @"is_decimal_divided";
NSString *const kItemStockItemIsInStock = @"is_in_stock";
NSString *const kItemStockItemIsQtyDecimal = @"is_qty_decimal";
NSString *const kItemStockItemUseConfigMinQty = @"use_config_min_qty";
NSString *const kItemStockItemTypeId = @"type_id";
NSString *const kItemStockItemQty = @"qty";
NSString *const kItemStockItemUseConfigEnableQtyInc = @"use_config_enable_qty_inc";
NSString *const kItemStockItemMinQty = @"min_qty";
NSString *const kItemStockItemQtyIncrements = @"qty_increments";
NSString *const kItemStockItemProductTypeId = @"product_type_id";
NSString *const kItemStockItemProductId = @"product_id";
NSString *const kItemStockItemUseConfigNotifyStockQty = @"use_config_notify_stock_qty";
NSString *const kItemStockItemUseConfigBackorders = @"use_config_backorders";
NSString *const kItemStockItemUseConfigManageStock = @"use_config_manage_stock";
NSString *const kItemStockItemStockStatusChangedAutomatically = @"stock_status_changed_automatically";
NSString *const kItemStockItemBackorders = @"backorders";
NSString *const kItemStockItemStoreId = @"store_id";
NSString *const kItemStockItemUseConfigQtyIncrements = @"use_config_qty_increments";
NSString *const kItemStockItemUseConfigMaxSaleQty = @"use_config_max_sale_qty";
NSString *const kItemStockItemNotifyStockQty = @"notify_stock_qty";
NSString *const kItemStockItemProductStatusChanged = @"product_status_changed";
NSString *const kItemStockItemLowStockDate = @"low_stock_date";
NSString *const kItemStockItemProductChangedWebsites = @"product_changed_websites";
NSString *const kItemStockItemEnableQtyIncrements = @"enable_qty_increments";
NSString *const kItemStockItemMaxSaleQty = @"max_sale_qty";


@interface ItemStockItem ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ItemStockItem

@synthesize manageStock = _manageStock;
@synthesize stockStatusChangedAuto = _stockStatusChangedAuto;
@synthesize useConfigMinSaleQty = _useConfigMinSaleQty;
@synthesize stockId = _stockId;
@synthesize productName = _productName;
@synthesize minSaleQty = _minSaleQty;
@synthesize useConfigEnableQtyIncrements = _useConfigEnableQtyIncrements;
@synthesize itemId = _itemId;
@synthesize isDecimalDivided = _isDecimalDivided;
@synthesize isInStock = _isInStock;
@synthesize isQtyDecimal = _isQtyDecimal;
@synthesize useConfigMinQty = _useConfigMinQty;
@synthesize typeId = _typeId;
@synthesize qty = _qty;
@synthesize useConfigEnableQtyInc = _useConfigEnableQtyInc;
@synthesize minQty = _minQty;
@synthesize qtyIncrements = _qtyIncrements;
@synthesize productTypeId = _productTypeId;
@synthesize productId = _productId;
@synthesize useConfigNotifyStockQty = _useConfigNotifyStockQty;
@synthesize useConfigBackorders = _useConfigBackorders;
@synthesize useConfigManageStock = _useConfigManageStock;
@synthesize stockStatusChangedAutomatically = _stockStatusChangedAutomatically;
@synthesize backorders = _backorders;
@synthesize storeId = _storeId;
@synthesize useConfigQtyIncrements = _useConfigQtyIncrements;
@synthesize useConfigMaxSaleQty = _useConfigMaxSaleQty;
@synthesize notifyStockQty = _notifyStockQty;
@synthesize productStatusChanged = _productStatusChanged;
@synthesize lowStockDate = _lowStockDate;
@synthesize productChangedWebsites = _productChangedWebsites;
@synthesize enableQtyIncrements = _enableQtyIncrements;
@synthesize maxSaleQty = _maxSaleQty;


+ (instancetype)modelObjectWithDictionary:(NSDictionary *)dict
{
    return [[self alloc] initWithDictionary:dict];
}

- (instancetype)initWithDictionary:(NSDictionary *)dict
{
    self = [super init];
    
    // This check serves to make sure that a non-NSDictionary object
    // passed into the model class doesn't break the parsing.
    if(self && [dict isKindOfClass:[NSDictionary class]]) {
            self.manageStock = [self objectOrNilForKey:kItemStockItemManageStock fromDictionary:dict];
            self.stockStatusChangedAuto = [self objectOrNilForKey:kItemStockItemStockStatusChangedAuto fromDictionary:dict];
            self.useConfigMinSaleQty = [self objectOrNilForKey:kItemStockItemUseConfigMinSaleQty fromDictionary:dict];
            self.stockId = [self objectOrNilForKey:kItemStockItemStockId fromDictionary:dict];
            self.productName = [self objectOrNilForKey:kItemStockItemProductName fromDictionary:dict];
            self.minSaleQty = [self objectOrNilForKey:kItemStockItemMinSaleQty fromDictionary:dict];
            self.useConfigEnableQtyIncrements = [self objectOrNilForKey:kItemStockItemUseConfigEnableQtyIncrements fromDictionary:dict];
            self.itemId = [self objectOrNilForKey:kItemStockItemItemId fromDictionary:dict];
            self.isDecimalDivided = [self objectOrNilForKey:kItemStockItemIsDecimalDivided fromDictionary:dict];
            self.isInStock = [self objectOrNilForKey:kItemStockItemIsInStock fromDictionary:dict];
            self.isQtyDecimal = [self objectOrNilForKey:kItemStockItemIsQtyDecimal fromDictionary:dict];
            self.useConfigMinQty = [self objectOrNilForKey:kItemStockItemUseConfigMinQty fromDictionary:dict];
            self.typeId = [self objectOrNilForKey:kItemStockItemTypeId fromDictionary:dict];
            self.qty = [self objectOrNilForKey:kItemStockItemQty fromDictionary:dict];
            self.useConfigEnableQtyInc = [self objectOrNilForKey:kItemStockItemUseConfigEnableQtyInc fromDictionary:dict];
            self.minQty = [self objectOrNilForKey:kItemStockItemMinQty fromDictionary:dict];
            self.qtyIncrements = [self objectOrNilForKey:kItemStockItemQtyIncrements fromDictionary:dict];
            self.productTypeId = [self objectOrNilForKey:kItemStockItemProductTypeId fromDictionary:dict];
            self.productId = [self objectOrNilForKey:kItemStockItemProductId fromDictionary:dict];
            self.useConfigNotifyStockQty = [self objectOrNilForKey:kItemStockItemUseConfigNotifyStockQty fromDictionary:dict];
            self.useConfigBackorders = [self objectOrNilForKey:kItemStockItemUseConfigBackorders fromDictionary:dict];
            self.useConfigManageStock = [self objectOrNilForKey:kItemStockItemUseConfigManageStock fromDictionary:dict];
            self.stockStatusChangedAutomatically = [self objectOrNilForKey:kItemStockItemStockStatusChangedAutomatically fromDictionary:dict];
            self.backorders = [self objectOrNilForKey:kItemStockItemBackorders fromDictionary:dict];
            self.storeId = [self objectOrNilForKey:kItemStockItemStoreId fromDictionary:dict];
            self.useConfigQtyIncrements = [self objectOrNilForKey:kItemStockItemUseConfigQtyIncrements fromDictionary:dict];
            self.useConfigMaxSaleQty = [self objectOrNilForKey:kItemStockItemUseConfigMaxSaleQty fromDictionary:dict];
            self.notifyStockQty = [self objectOrNilForKey:kItemStockItemNotifyStockQty fromDictionary:dict];
            self.productStatusChanged = [[self objectOrNilForKey:kItemStockItemProductStatusChanged fromDictionary:dict] boolValue];
            self.lowStockDate = [self objectOrNilForKey:kItemStockItemLowStockDate fromDictionary:dict];
            self.productChangedWebsites = [self objectOrNilForKey:kItemStockItemProductChangedWebsites fromDictionary:dict];
            self.enableQtyIncrements = [self objectOrNilForKey:kItemStockItemEnableQtyIncrements fromDictionary:dict];
            self.maxSaleQty = [self objectOrNilForKey:kItemStockItemMaxSaleQty fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.manageStock forKey:kItemStockItemManageStock];
    [mutableDict setValue:self.stockStatusChangedAuto forKey:kItemStockItemStockStatusChangedAuto];
    [mutableDict setValue:self.useConfigMinSaleQty forKey:kItemStockItemUseConfigMinSaleQty];
    [mutableDict setValue:self.stockId forKey:kItemStockItemStockId];
    [mutableDict setValue:self.productName forKey:kItemStockItemProductName];
    [mutableDict setValue:self.minSaleQty forKey:kItemStockItemMinSaleQty];
    [mutableDict setValue:self.useConfigEnableQtyIncrements forKey:kItemStockItemUseConfigEnableQtyIncrements];
    [mutableDict setValue:self.itemId forKey:kItemStockItemItemId];
    [mutableDict setValue:self.isDecimalDivided forKey:kItemStockItemIsDecimalDivided];
    [mutableDict setValue:self.isInStock forKey:kItemStockItemIsInStock];
    [mutableDict setValue:self.isQtyDecimal forKey:kItemStockItemIsQtyDecimal];
    [mutableDict setValue:self.useConfigMinQty forKey:kItemStockItemUseConfigMinQty];
    [mutableDict setValue:self.typeId forKey:kItemStockItemTypeId];
    [mutableDict setValue:self.qty forKey:kItemStockItemQty];
    [mutableDict setValue:self.useConfigEnableQtyInc forKey:kItemStockItemUseConfigEnableQtyInc];
    [mutableDict setValue:self.minQty forKey:kItemStockItemMinQty];
    [mutableDict setValue:self.qtyIncrements forKey:kItemStockItemQtyIncrements];
    [mutableDict setValue:self.productTypeId forKey:kItemStockItemProductTypeId];
    [mutableDict setValue:self.productId forKey:kItemStockItemProductId];
    [mutableDict setValue:self.useConfigNotifyStockQty forKey:kItemStockItemUseConfigNotifyStockQty];
    [mutableDict setValue:self.useConfigBackorders forKey:kItemStockItemUseConfigBackorders];
    [mutableDict setValue:self.useConfigManageStock forKey:kItemStockItemUseConfigManageStock];
    [mutableDict setValue:self.stockStatusChangedAutomatically forKey:kItemStockItemStockStatusChangedAutomatically];
    [mutableDict setValue:self.backorders forKey:kItemStockItemBackorders];
    [mutableDict setValue:self.storeId forKey:kItemStockItemStoreId];
    [mutableDict setValue:self.useConfigQtyIncrements forKey:kItemStockItemUseConfigQtyIncrements];
    [mutableDict setValue:self.useConfigMaxSaleQty forKey:kItemStockItemUseConfigMaxSaleQty];
    [mutableDict setValue:self.notifyStockQty forKey:kItemStockItemNotifyStockQty];
    [mutableDict setValue:[NSNumber numberWithBool:self.productStatusChanged] forKey:kItemStockItemProductStatusChanged];
    [mutableDict setValue:self.lowStockDate forKey:kItemStockItemLowStockDate];
    [mutableDict setValue:self.productChangedWebsites forKey:kItemStockItemProductChangedWebsites];
    [mutableDict setValue:self.enableQtyIncrements forKey:kItemStockItemEnableQtyIncrements];
    [mutableDict setValue:self.maxSaleQty forKey:kItemStockItemMaxSaleQty];

    return [NSDictionary dictionaryWithDictionary:mutableDict];
}

- (NSString *)description 
{
    return [NSString stringWithFormat:@"%@", [self dictionaryRepresentation]];
}

#pragma mark - Helper Method
- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict
{
    id object = [dict objectForKey:aKey];
    return [object isEqual:[NSNull null]] ? nil : object;
}


#pragma mark - NSCoding Methods

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super init];

    self.manageStock = [aDecoder decodeObjectForKey:kItemStockItemManageStock];
    self.stockStatusChangedAuto = [aDecoder decodeObjectForKey:kItemStockItemStockStatusChangedAuto];
    self.useConfigMinSaleQty = [aDecoder decodeObjectForKey:kItemStockItemUseConfigMinSaleQty];
    self.stockId = [aDecoder decodeObjectForKey:kItemStockItemStockId];
    self.productName = [aDecoder decodeObjectForKey:kItemStockItemProductName];
    self.minSaleQty = [aDecoder decodeObjectForKey:kItemStockItemMinSaleQty];
    self.useConfigEnableQtyIncrements = [aDecoder decodeObjectForKey:kItemStockItemUseConfigEnableQtyIncrements];
    self.itemId = [aDecoder decodeObjectForKey:kItemStockItemItemId];
    self.isDecimalDivided = [aDecoder decodeObjectForKey:kItemStockItemIsDecimalDivided];
    self.isInStock = [aDecoder decodeObjectForKey:kItemStockItemIsInStock];
    self.isQtyDecimal = [aDecoder decodeObjectForKey:kItemStockItemIsQtyDecimal];
    self.useConfigMinQty = [aDecoder decodeObjectForKey:kItemStockItemUseConfigMinQty];
    self.typeId = [aDecoder decodeObjectForKey:kItemStockItemTypeId];
    self.qty = [aDecoder decodeObjectForKey:kItemStockItemQty];
    self.useConfigEnableQtyInc = [aDecoder decodeObjectForKey:kItemStockItemUseConfigEnableQtyInc];
    self.minQty = [aDecoder decodeObjectForKey:kItemStockItemMinQty];
    self.qtyIncrements = [aDecoder decodeObjectForKey:kItemStockItemQtyIncrements];
    self.productTypeId = [aDecoder decodeObjectForKey:kItemStockItemProductTypeId];
    self.productId = [aDecoder decodeObjectForKey:kItemStockItemProductId];
    self.useConfigNotifyStockQty = [aDecoder decodeObjectForKey:kItemStockItemUseConfigNotifyStockQty];
    self.useConfigBackorders = [aDecoder decodeObjectForKey:kItemStockItemUseConfigBackorders];
    self.useConfigManageStock = [aDecoder decodeObjectForKey:kItemStockItemUseConfigManageStock];
    self.stockStatusChangedAutomatically = [aDecoder decodeObjectForKey:kItemStockItemStockStatusChangedAutomatically];
    self.backorders = [aDecoder decodeObjectForKey:kItemStockItemBackorders];
    self.storeId = [aDecoder decodeObjectForKey:kItemStockItemStoreId];
    self.useConfigQtyIncrements = [aDecoder decodeObjectForKey:kItemStockItemUseConfigQtyIncrements];
    self.useConfigMaxSaleQty = [aDecoder decodeObjectForKey:kItemStockItemUseConfigMaxSaleQty];
    self.notifyStockQty = [aDecoder decodeObjectForKey:kItemStockItemNotifyStockQty];
    self.productStatusChanged = [aDecoder decodeBoolForKey:kItemStockItemProductStatusChanged];
    self.lowStockDate = [aDecoder decodeObjectForKey:kItemStockItemLowStockDate];
    self.productChangedWebsites = [aDecoder decodeObjectForKey:kItemStockItemProductChangedWebsites];
    self.enableQtyIncrements = [aDecoder decodeObjectForKey:kItemStockItemEnableQtyIncrements];
    self.maxSaleQty = [aDecoder decodeObjectForKey:kItemStockItemMaxSaleQty];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_manageStock forKey:kItemStockItemManageStock];
    [aCoder encodeObject:_stockStatusChangedAuto forKey:kItemStockItemStockStatusChangedAuto];
    [aCoder encodeObject:_useConfigMinSaleQty forKey:kItemStockItemUseConfigMinSaleQty];
    [aCoder encodeObject:_stockId forKey:kItemStockItemStockId];
    [aCoder encodeObject:_productName forKey:kItemStockItemProductName];
    [aCoder encodeObject:_minSaleQty forKey:kItemStockItemMinSaleQty];
    [aCoder encodeObject:_useConfigEnableQtyIncrements forKey:kItemStockItemUseConfigEnableQtyIncrements];
    [aCoder encodeObject:_itemId forKey:kItemStockItemItemId];
    [aCoder encodeObject:_isDecimalDivided forKey:kItemStockItemIsDecimalDivided];
    [aCoder encodeObject:_isInStock forKey:kItemStockItemIsInStock];
    [aCoder encodeObject:_isQtyDecimal forKey:kItemStockItemIsQtyDecimal];
    [aCoder encodeObject:_useConfigMinQty forKey:kItemStockItemUseConfigMinQty];
    [aCoder encodeObject:_typeId forKey:kItemStockItemTypeId];
    [aCoder encodeObject:_qty forKey:kItemStockItemQty];
    [aCoder encodeObject:_useConfigEnableQtyInc forKey:kItemStockItemUseConfigEnableQtyInc];
    [aCoder encodeObject:_minQty forKey:kItemStockItemMinQty];
    [aCoder encodeObject:_qtyIncrements forKey:kItemStockItemQtyIncrements];
    [aCoder encodeObject:_productTypeId forKey:kItemStockItemProductTypeId];
    [aCoder encodeObject:_productId forKey:kItemStockItemProductId];
    [aCoder encodeObject:_useConfigNotifyStockQty forKey:kItemStockItemUseConfigNotifyStockQty];
    [aCoder encodeObject:_useConfigBackorders forKey:kItemStockItemUseConfigBackorders];
    [aCoder encodeObject:_useConfigManageStock forKey:kItemStockItemUseConfigManageStock];
    [aCoder encodeObject:_stockStatusChangedAutomatically forKey:kItemStockItemStockStatusChangedAutomatically];
    [aCoder encodeObject:_backorders forKey:kItemStockItemBackorders];
    [aCoder encodeObject:_storeId forKey:kItemStockItemStoreId];
    [aCoder encodeObject:_useConfigQtyIncrements forKey:kItemStockItemUseConfigQtyIncrements];
    [aCoder encodeObject:_useConfigMaxSaleQty forKey:kItemStockItemUseConfigMaxSaleQty];
    [aCoder encodeObject:_notifyStockQty forKey:kItemStockItemNotifyStockQty];
    [aCoder encodeBool:_productStatusChanged forKey:kItemStockItemProductStatusChanged];
    [aCoder encodeObject:_lowStockDate forKey:kItemStockItemLowStockDate];
    [aCoder encodeObject:_productChangedWebsites forKey:kItemStockItemProductChangedWebsites];
    [aCoder encodeObject:_enableQtyIncrements forKey:kItemStockItemEnableQtyIncrements];
    [aCoder encodeObject:_maxSaleQty forKey:kItemStockItemMaxSaleQty];
}

- (id)copyWithZone:(NSZone *)zone
{
    ItemStockItem *copy = [[ItemStockItem alloc] init];
    
    if (copy) {

        copy.manageStock = [self.manageStock copyWithZone:zone];
        copy.stockStatusChangedAuto = [self.stockStatusChangedAuto copyWithZone:zone];
        copy.useConfigMinSaleQty = [self.useConfigMinSaleQty copyWithZone:zone];
        copy.stockId = [self.stockId copyWithZone:zone];
        copy.productName = [self.productName copyWithZone:zone];
        copy.minSaleQty = [self.minSaleQty copyWithZone:zone];
        copy.useConfigEnableQtyIncrements = [self.useConfigEnableQtyIncrements copyWithZone:zone];
        copy.itemId = [self.itemId copyWithZone:zone];
        copy.isDecimalDivided = [self.isDecimalDivided copyWithZone:zone];
        copy.isInStock = [self.isInStock copyWithZone:zone];
        copy.isQtyDecimal = [self.isQtyDecimal copyWithZone:zone];
        copy.useConfigMinQty = [self.useConfigMinQty copyWithZone:zone];
        copy.typeId = [self.typeId copyWithZone:zone];
        copy.qty = [self.qty copyWithZone:zone];
        copy.useConfigEnableQtyInc = [self.useConfigEnableQtyInc copyWithZone:zone];
        copy.minQty = [self.minQty copyWithZone:zone];
        copy.qtyIncrements = [self.qtyIncrements copyWithZone:zone];
        copy.productTypeId = [self.productTypeId copyWithZone:zone];
        copy.productId = [self.productId copyWithZone:zone];
        copy.useConfigNotifyStockQty = [self.useConfigNotifyStockQty copyWithZone:zone];
        copy.useConfigBackorders = [self.useConfigBackorders copyWithZone:zone];
        copy.useConfigManageStock = [self.useConfigManageStock copyWithZone:zone];
        copy.stockStatusChangedAutomatically = [self.stockStatusChangedAutomatically copyWithZone:zone];
        copy.backorders = [self.backorders copyWithZone:zone];
        copy.storeId = [self.storeId copyWithZone:zone];
        copy.useConfigQtyIncrements = [self.useConfigQtyIncrements copyWithZone:zone];
        copy.useConfigMaxSaleQty = [self.useConfigMaxSaleQty copyWithZone:zone];
        copy.notifyStockQty = [self.notifyStockQty copyWithZone:zone];
        copy.productStatusChanged = self.productStatusChanged;
        copy.lowStockDate = [self.lowStockDate copyWithZone:zone];
        copy.productChangedWebsites = [self.productChangedWebsites copyWithZone:zone];
        copy.enableQtyIncrements = [self.enableQtyIncrements copyWithZone:zone];
        copy.maxSaleQty = [self.maxSaleQty copyWithZone:zone];
    }
    
    return copy;
}


@end
