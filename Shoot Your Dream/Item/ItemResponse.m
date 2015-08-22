//
//  ItemResponse.m
//
//  Created by Ratna Kumalasari on 8/7/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "ItemResponse.h"
#import "ItemStockItem.h"
#import "ItemTierPrice.h"
#import "ItemMediaGallery.h"
#import "ItemGroupPrice.h"


NSString *const kItemResponseTypeId = @"type_id";
NSString *const kItemResponseMetaKeyword = @"meta_keyword";
NSString *const kItemResponseHasOptions = @"has_options";
NSString *const kItemResponseMsrp = @"msrp";
NSString *const kItemResponseCustomDesign = @"custom_design";
NSString *const kItemResponseWeight = @"weight";
NSString *const kItemResponseSku = @"sku";
NSString *const kItemResponseIsRecurring = @"is_recurring";
NSString *const kItemResponseBlacknwhitePrlayout = @"blacknwhite_prlayout";
NSString *const kItemResponseThumbnail = @"thumbnail";
NSString *const kItemResponseBlacknwhitePrmoreviews = @"blacknwhite_prmoreviews";
NSString *const kItemResponseSpecialFromDate = @"special_from_date";
NSString *const kItemResponseUrlPath = @"url_path";
NSString *const kItemResponseStatus = @"status";
NSString *const kItemResponseBlacknwhitePrrelatedcontent = @"blacknwhite_prrelatedcontent";
NSString *const kItemResponseCustomDesignFrom = @"custom_design_from";
NSString *const kItemResponseDescription = @"description";
NSString *const kItemResponseCustomDesignTo = @"custom_design_to";
NSString *const kItemResponseBlacknwhitePrprevnext = @"blacknwhite_prprevnext";
NSString *const kItemResponseSmallImage = @"small_image";
NSString *const kItemResponseManufacturerInfo = @"manufacturer_info";
NSString *const kItemResponseImage = @"image";
NSString *const kItemResponseAttributeSetId = @"attribute_set_id";
NSString *const kItemResponseBlacknwhitePrbrandpos = @"blacknwhite_prbrandpos";
NSString *const kItemResponseRequiredOptions = @"required_options";
NSString *const kItemResponsePrice = @"price";
NSString *const kItemResponseBlacknwhitePrtabs = @"blacknwhite_prtabs";
NSString *const kItemResponseIsInStock = @"is_in_stock";
NSString *const kItemResponseBlacknwhitePrrelated = @"blacknwhite_prrelated";
NSString *const kItemResponseTierPriceChanged = @"tier_price_changed";
NSString *const kItemResponseNewsToDate = @"news_to_date";
NSString *const kItemResponseUpdatedAt = @"updated_at";
NSString *const kItemResponseName = @"name";
NSString *const kItemResponseGroupPriceChanged = @"group_price_changed";
NSString *const kItemResponseBlacknwhitePrbrandlink = @"blacknwhite_prbrandlink";
NSString *const kItemResponseStockItem = @"stock_item";
NSString *const kItemResponseGiftMessageAvailable = @"gift_message_available";
NSString *const kItemResponseIsSalable = @"is_salable";
NSString *const kItemResponseTierPrice = @"tier_price";
NSString *const kItemResponseBlacknwhitePrbrandtarget = @"blacknwhite_prbrandtarget";
NSString *const kItemResponseMsrpEnabled = @"msrp_enabled";
NSString *const kItemResponseBlacknwhitePrcustom = @"blacknwhite_prcustom";
NSString *const kItemResponseCountryOfManufacture = @"country_of_manufacture";
NSString *const kItemResponseBlacknwhitePrbrand = @"blacknwhite_prbrand";
NSString *const kItemResponseCreatedAt = @"created_at";
NSString *const kItemResponseInstallment = @"installment";
NSString *const kItemResponseTaxClassId = @"tax_class_id";
NSString *const kItemResponseBlacknwhitePrsku = @"blacknwhite_prsku";
NSString *const kItemResponseMetaDescription = @"meta_description";
NSString *const kItemResponseSpecialPrice = @"special_price";
NSString *const kItemResponseMediaGallery = @"media_gallery";
NSString *const kItemResponseBlacknwhiteProductimg = @"blacknwhite_productimg";
NSString *const kItemResponseShortDescription = @"short_description";
NSString *const kItemResponseEntityId = @"entity_id";
NSString *const kItemResponseMsrpDisplayActualPriceType = @"msrp_display_actual_price_type";
NSString *const kItemResponseEntityTypeId = @"entity_type_id";
NSString *const kItemResponseMetaTitle = @"meta_title";
NSString *const kItemResponseVisibility = @"visibility";
NSString *const kItemResponseCustomLayoutUpdate = @"custom_layout_update";
NSString *const kItemResponseBlacknwhiteRelatedpos = @"blacknwhite_relatedpos";
NSString *const kItemResponseUrlKey = @"url_key";
NSString *const kItemResponsePageLayout = @"page_layout";
NSString *const kItemResponseBlacknwhitePrsidebar = @"blacknwhite_prsidebar";
NSString *const kItemResponseSpecialToDate = @"special_to_date";
NSString *const kItemResponseNewsFromDate = @"news_from_date";
NSString *const kItemResponseGroupPrice = @"group_price";
NSString *const kItemResponseOptionsContainer = @"options_container";
NSString *const kItemResponseBlacknwhitePrcolleteral = @"blacknwhite_prcolleteral";


@interface ItemResponse ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ItemResponse

@synthesize typeId = _typeId;
@synthesize metaKeyword = _metaKeyword;
@synthesize hasOptions = _hasOptions;
@synthesize msrp = _msrp;
@synthesize customDesign = _customDesign;
@synthesize weight = _weight;
@synthesize sku = _sku;
@synthesize isRecurring = _isRecurring;
@synthesize blacknwhitePrlayout = _blacknwhitePrlayout;
@synthesize thumbnail = _thumbnail;
@synthesize blacknwhitePrmoreviews = _blacknwhitePrmoreviews;
@synthesize specialFromDate = _specialFromDate;
@synthesize urlPath = _urlPath;
@synthesize status = _status;
@synthesize blacknwhitePrrelatedcontent = _blacknwhitePrrelatedcontent;
@synthesize customDesignFrom = _customDesignFrom;
@synthesize internalBaseClassDescription = _internalBaseClassDescription;
@synthesize customDesignTo = _customDesignTo;
@synthesize blacknwhitePrprevnext = _blacknwhitePrprevnext;
@synthesize smallImage = _smallImage;
@synthesize manufacturerInfo = _manufacturerInfo;
@synthesize image = _image;
@synthesize attributeSetId = _attributeSetId;
@synthesize blacknwhitePrbrandpos = _blacknwhitePrbrandpos;
@synthesize requiredOptions = _requiredOptions;
@synthesize price = _price;
@synthesize blacknwhitePrtabs = _blacknwhitePrtabs;
@synthesize isInStock = _isInStock;
@synthesize blacknwhitePrrelated = _blacknwhitePrrelated;
@synthesize tierPriceChanged = _tierPriceChanged;
@synthesize newsToDate = _newsToDate;
@synthesize updatedAt = _updatedAt;
@synthesize name = _name;
@synthesize groupPriceChanged = _groupPriceChanged;
@synthesize blacknwhitePrbrandlink = _blacknwhitePrbrandlink;
@synthesize stockItem = _stockItem;
@synthesize giftMessageAvailable = _giftMessageAvailable;
@synthesize isSalable = _isSalable;
@synthesize tierPrice = _tierPrice;
@synthesize blacknwhitePrbrandtarget = _blacknwhitePrbrandtarget;
@synthesize msrpEnabled = _msrpEnabled;
@synthesize blacknwhitePrcustom = _blacknwhitePrcustom;
@synthesize countryOfManufacture = _countryOfManufacture;
@synthesize blacknwhitePrbrand = _blacknwhitePrbrand;
@synthesize createdAt = _createdAt;
@synthesize installment = _installment;
@synthesize taxClassId = _taxClassId;
@synthesize blacknwhitePrsku = _blacknwhitePrsku;
@synthesize metaDescription = _metaDescription;
@synthesize specialPrice = _specialPrice;
@synthesize mediaGallery = _mediaGallery;
@synthesize blacknwhiteProductimg = _blacknwhiteProductimg;
@synthesize shortDescription = _shortDescription;
@synthesize entityId = _entityId;
@synthesize msrpDisplayActualPriceType = _msrpDisplayActualPriceType;
@synthesize entityTypeId = _entityTypeId;
@synthesize metaTitle = _metaTitle;
@synthesize visibility = _visibility;
@synthesize customLayoutUpdate = _customLayoutUpdate;
@synthesize blacknwhiteRelatedpos = _blacknwhiteRelatedpos;
@synthesize urlKey = _urlKey;
@synthesize pageLayout = _pageLayout;
@synthesize blacknwhitePrsidebar = _blacknwhitePrsidebar;
@synthesize specialToDate = _specialToDate;
@synthesize newsFromDate = _newsFromDate;
@synthesize groupPrice = _groupPrice;
@synthesize optionsContainer = _optionsContainer;
@synthesize blacknwhitePrcolleteral = _blacknwhitePrcolleteral;


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
            self.typeId = [self objectOrNilForKey:kItemResponseTypeId fromDictionary:dict];
            self.metaKeyword = [self objectOrNilForKey:kItemResponseMetaKeyword fromDictionary:dict];
            self.hasOptions = [self objectOrNilForKey:kItemResponseHasOptions fromDictionary:dict];
            self.msrp = [self objectOrNilForKey:kItemResponseMsrp fromDictionary:dict];
            self.customDesign = [self objectOrNilForKey:kItemResponseCustomDesign fromDictionary:dict];
            self.weight = [self objectOrNilForKey:kItemResponseWeight fromDictionary:dict];
            self.sku = [self objectOrNilForKey:kItemResponseSku fromDictionary:dict];
            self.isRecurring = [self objectOrNilForKey:kItemResponseIsRecurring fromDictionary:dict];
            self.blacknwhitePrlayout = [self objectOrNilForKey:kItemResponseBlacknwhitePrlayout fromDictionary:dict];
            self.thumbnail = [self objectOrNilForKey:kItemResponseThumbnail fromDictionary:dict];
            self.blacknwhitePrmoreviews = [self objectOrNilForKey:kItemResponseBlacknwhitePrmoreviews fromDictionary:dict];
            self.specialFromDate = [self objectOrNilForKey:kItemResponseSpecialFromDate fromDictionary:dict];
            self.urlPath = [self objectOrNilForKey:kItemResponseUrlPath fromDictionary:dict];
            self.status = [self objectOrNilForKey:kItemResponseStatus fromDictionary:dict];
            self.blacknwhitePrrelatedcontent = [self objectOrNilForKey:kItemResponseBlacknwhitePrrelatedcontent fromDictionary:dict];
            self.customDesignFrom = [self objectOrNilForKey:kItemResponseCustomDesignFrom fromDictionary:dict];
            self.internalBaseClassDescription = [self objectOrNilForKey:kItemResponseDescription fromDictionary:dict];
            self.customDesignTo = [self objectOrNilForKey:kItemResponseCustomDesignTo fromDictionary:dict];
            self.blacknwhitePrprevnext = [self objectOrNilForKey:kItemResponseBlacknwhitePrprevnext fromDictionary:dict];
            self.smallImage = [self objectOrNilForKey:kItemResponseSmallImage fromDictionary:dict];
            self.manufacturerInfo = [self objectOrNilForKey:kItemResponseManufacturerInfo fromDictionary:dict];
            self.image = [self objectOrNilForKey:kItemResponseImage fromDictionary:dict];
            self.attributeSetId = [self objectOrNilForKey:kItemResponseAttributeSetId fromDictionary:dict];
            self.blacknwhitePrbrandpos = [self objectOrNilForKey:kItemResponseBlacknwhitePrbrandpos fromDictionary:dict];
            self.requiredOptions = [self objectOrNilForKey:kItemResponseRequiredOptions fromDictionary:dict];
            self.price = [self objectOrNilForKey:kItemResponsePrice fromDictionary:dict];
            self.blacknwhitePrtabs = [self objectOrNilForKey:kItemResponseBlacknwhitePrtabs fromDictionary:dict];
            self.isInStock = [self objectOrNilForKey:kItemResponseIsInStock fromDictionary:dict];
            self.blacknwhitePrrelated = [self objectOrNilForKey:kItemResponseBlacknwhitePrrelated fromDictionary:dict];
            self.tierPriceChanged = [[self objectOrNilForKey:kItemResponseTierPriceChanged fromDictionary:dict] doubleValue];
            self.newsToDate = [self objectOrNilForKey:kItemResponseNewsToDate fromDictionary:dict];
            self.updatedAt = [self objectOrNilForKey:kItemResponseUpdatedAt fromDictionary:dict];
            self.name = [self objectOrNilForKey:kItemResponseName fromDictionary:dict];
            self.groupPriceChanged = [[self objectOrNilForKey:kItemResponseGroupPriceChanged fromDictionary:dict] doubleValue];
            self.blacknwhitePrbrandlink = [self objectOrNilForKey:kItemResponseBlacknwhitePrbrandlink fromDictionary:dict];
            self.stockItem = [ItemStockItem modelObjectWithDictionary:[dict objectForKey:kItemResponseStockItem]];
            self.giftMessageAvailable = [self objectOrNilForKey:kItemResponseGiftMessageAvailable fromDictionary:dict];
            self.isSalable = [self objectOrNilForKey:kItemResponseIsSalable fromDictionary:dict];
    NSObject *receivedItemTierPrice = [dict objectForKey:kItemResponseTierPrice];
    NSMutableArray *parsedItemTierPrice = [NSMutableArray array];
    if ([receivedItemTierPrice isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedItemTierPrice) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedItemTierPrice addObject:[ItemTierPrice modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedItemTierPrice isKindOfClass:[NSDictionary class]]) {
       [parsedItemTierPrice addObject:[ItemTierPrice modelObjectWithDictionary:(NSDictionary *)receivedItemTierPrice]];
    }

    self.tierPrice = [NSArray arrayWithArray:parsedItemTierPrice];
            self.blacknwhitePrbrandtarget = [self objectOrNilForKey:kItemResponseBlacknwhitePrbrandtarget fromDictionary:dict];
            self.msrpEnabled = [self objectOrNilForKey:kItemResponseMsrpEnabled fromDictionary:dict];
            self.blacknwhitePrcustom = [self objectOrNilForKey:kItemResponseBlacknwhitePrcustom fromDictionary:dict];
            self.countryOfManufacture = [self objectOrNilForKey:kItemResponseCountryOfManufacture fromDictionary:dict];
            self.blacknwhitePrbrand = [self objectOrNilForKey:kItemResponseBlacknwhitePrbrand fromDictionary:dict];
            self.createdAt = [self objectOrNilForKey:kItemResponseCreatedAt fromDictionary:dict];
            self.installment = [self objectOrNilForKey:kItemResponseInstallment fromDictionary:dict];
            self.taxClassId = [self objectOrNilForKey:kItemResponseTaxClassId fromDictionary:dict];
            self.blacknwhitePrsku = [self objectOrNilForKey:kItemResponseBlacknwhitePrsku fromDictionary:dict];
            self.metaDescription = [self objectOrNilForKey:kItemResponseMetaDescription fromDictionary:dict];
            self.specialPrice = [self objectOrNilForKey:kItemResponseSpecialPrice fromDictionary:dict];
            self.mediaGallery = [ItemMediaGallery modelObjectWithDictionary:[dict objectForKey:kItemResponseMediaGallery]];
            self.blacknwhiteProductimg = [self objectOrNilForKey:kItemResponseBlacknwhiteProductimg fromDictionary:dict];
            self.shortDescription = [self objectOrNilForKey:kItemResponseShortDescription fromDictionary:dict];
            self.entityId = [self objectOrNilForKey:kItemResponseEntityId fromDictionary:dict];
            self.msrpDisplayActualPriceType = [self objectOrNilForKey:kItemResponseMsrpDisplayActualPriceType fromDictionary:dict];
            self.entityTypeId = [self objectOrNilForKey:kItemResponseEntityTypeId fromDictionary:dict];
            self.metaTitle = [self objectOrNilForKey:kItemResponseMetaTitle fromDictionary:dict];
            self.visibility = [self objectOrNilForKey:kItemResponseVisibility fromDictionary:dict];
            self.customLayoutUpdate = [self objectOrNilForKey:kItemResponseCustomLayoutUpdate fromDictionary:dict];
            self.blacknwhiteRelatedpos = [self objectOrNilForKey:kItemResponseBlacknwhiteRelatedpos fromDictionary:dict];
            self.urlKey = [self objectOrNilForKey:kItemResponseUrlKey fromDictionary:dict];
            self.pageLayout = [self objectOrNilForKey:kItemResponsePageLayout fromDictionary:dict];
            self.blacknwhitePrsidebar = [self objectOrNilForKey:kItemResponseBlacknwhitePrsidebar fromDictionary:dict];
            self.specialToDate = [self objectOrNilForKey:kItemResponseSpecialToDate fromDictionary:dict];
            self.newsFromDate = [self objectOrNilForKey:kItemResponseNewsFromDate fromDictionary:dict];
    NSObject *receivedItemGroupPrice = [dict objectForKey:kItemResponseGroupPrice];
    NSMutableArray *parsedItemGroupPrice = [NSMutableArray array];
    if ([receivedItemGroupPrice isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedItemGroupPrice) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedItemGroupPrice addObject:[ItemGroupPrice modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedItemGroupPrice isKindOfClass:[NSDictionary class]]) {
       [parsedItemGroupPrice addObject:[ItemGroupPrice modelObjectWithDictionary:(NSDictionary *)receivedItemGroupPrice]];
    }

    self.groupPrice = [NSArray arrayWithArray:parsedItemGroupPrice];
            self.optionsContainer = [self objectOrNilForKey:kItemResponseOptionsContainer fromDictionary:dict];
            self.blacknwhitePrcolleteral = [self objectOrNilForKey:kItemResponseBlacknwhitePrcolleteral fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.typeId forKey:kItemResponseTypeId];
    [mutableDict setValue:self.metaKeyword forKey:kItemResponseMetaKeyword];
    [mutableDict setValue:self.hasOptions forKey:kItemResponseHasOptions];
    [mutableDict setValue:self.msrp forKey:kItemResponseMsrp];
    [mutableDict setValue:self.customDesign forKey:kItemResponseCustomDesign];
    [mutableDict setValue:self.weight forKey:kItemResponseWeight];
    [mutableDict setValue:self.sku forKey:kItemResponseSku];
    [mutableDict setValue:self.isRecurring forKey:kItemResponseIsRecurring];
    [mutableDict setValue:self.blacknwhitePrlayout forKey:kItemResponseBlacknwhitePrlayout];
    [mutableDict setValue:self.thumbnail forKey:kItemResponseThumbnail];
    [mutableDict setValue:self.blacknwhitePrmoreviews forKey:kItemResponseBlacknwhitePrmoreviews];
    [mutableDict setValue:self.specialFromDate forKey:kItemResponseSpecialFromDate];
    [mutableDict setValue:self.urlPath forKey:kItemResponseUrlPath];
    [mutableDict setValue:self.status forKey:kItemResponseStatus];
    [mutableDict setValue:self.blacknwhitePrrelatedcontent forKey:kItemResponseBlacknwhitePrrelatedcontent];
    [mutableDict setValue:self.customDesignFrom forKey:kItemResponseCustomDesignFrom];
    [mutableDict setValue:self.internalBaseClassDescription forKey:kItemResponseDescription];
    [mutableDict setValue:self.customDesignTo forKey:kItemResponseCustomDesignTo];
    [mutableDict setValue:self.blacknwhitePrprevnext forKey:kItemResponseBlacknwhitePrprevnext];
    [mutableDict setValue:self.smallImage forKey:kItemResponseSmallImage];
    [mutableDict setValue:self.manufacturerInfo forKey:kItemResponseManufacturerInfo];
    [mutableDict setValue:self.image forKey:kItemResponseImage];
    [mutableDict setValue:self.attributeSetId forKey:kItemResponseAttributeSetId];
    [mutableDict setValue:self.blacknwhitePrbrandpos forKey:kItemResponseBlacknwhitePrbrandpos];
    [mutableDict setValue:self.requiredOptions forKey:kItemResponseRequiredOptions];
    [mutableDict setValue:self.price forKey:kItemResponsePrice];
    [mutableDict setValue:self.blacknwhitePrtabs forKey:kItemResponseBlacknwhitePrtabs];
    [mutableDict setValue:self.isInStock forKey:kItemResponseIsInStock];
    [mutableDict setValue:self.blacknwhitePrrelated forKey:kItemResponseBlacknwhitePrrelated];
    [mutableDict setValue:[NSNumber numberWithDouble:self.tierPriceChanged] forKey:kItemResponseTierPriceChanged];
    [mutableDict setValue:self.newsToDate forKey:kItemResponseNewsToDate];
    [mutableDict setValue:self.updatedAt forKey:kItemResponseUpdatedAt];
    [mutableDict setValue:self.name forKey:kItemResponseName];
    [mutableDict setValue:[NSNumber numberWithDouble:self.groupPriceChanged] forKey:kItemResponseGroupPriceChanged];
    [mutableDict setValue:self.blacknwhitePrbrandlink forKey:kItemResponseBlacknwhitePrbrandlink];
    [mutableDict setValue:[self.stockItem dictionaryRepresentation] forKey:kItemResponseStockItem];
    [mutableDict setValue:self.giftMessageAvailable forKey:kItemResponseGiftMessageAvailable];
    [mutableDict setValue:self.isSalable forKey:kItemResponseIsSalable];
    NSMutableArray *tempArrayForTierPrice = [NSMutableArray array];
    for (NSObject *subArrayObject in self.tierPrice) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForTierPrice addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForTierPrice addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForTierPrice] forKey:kItemResponseTierPrice];
    [mutableDict setValue:self.blacknwhitePrbrandtarget forKey:kItemResponseBlacknwhitePrbrandtarget];
    [mutableDict setValue:self.msrpEnabled forKey:kItemResponseMsrpEnabled];
    [mutableDict setValue:self.blacknwhitePrcustom forKey:kItemResponseBlacknwhitePrcustom];
    [mutableDict setValue:self.countryOfManufacture forKey:kItemResponseCountryOfManufacture];
    [mutableDict setValue:self.blacknwhitePrbrand forKey:kItemResponseBlacknwhitePrbrand];
    [mutableDict setValue:self.createdAt forKey:kItemResponseCreatedAt];
    [mutableDict setValue:self.installment forKey:kItemResponseInstallment];
    [mutableDict setValue:self.taxClassId forKey:kItemResponseTaxClassId];
    [mutableDict setValue:self.blacknwhitePrsku forKey:kItemResponseBlacknwhitePrsku];
    [mutableDict setValue:self.metaDescription forKey:kItemResponseMetaDescription];
    [mutableDict setValue:self.specialPrice forKey:kItemResponseSpecialPrice];
    [mutableDict setValue:[self.mediaGallery dictionaryRepresentation] forKey:kItemResponseMediaGallery];
    [mutableDict setValue:self.blacknwhiteProductimg forKey:kItemResponseBlacknwhiteProductimg];
    [mutableDict setValue:self.shortDescription forKey:kItemResponseShortDescription];
    [mutableDict setValue:self.entityId forKey:kItemResponseEntityId];
    [mutableDict setValue:self.msrpDisplayActualPriceType forKey:kItemResponseMsrpDisplayActualPriceType];
    [mutableDict setValue:self.entityTypeId forKey:kItemResponseEntityTypeId];
    [mutableDict setValue:self.metaTitle forKey:kItemResponseMetaTitle];
    [mutableDict setValue:self.visibility forKey:kItemResponseVisibility];
    [mutableDict setValue:self.customLayoutUpdate forKey:kItemResponseCustomLayoutUpdate];
    [mutableDict setValue:self.blacknwhiteRelatedpos forKey:kItemResponseBlacknwhiteRelatedpos];
    [mutableDict setValue:self.urlKey forKey:kItemResponseUrlKey];
    [mutableDict setValue:self.pageLayout forKey:kItemResponsePageLayout];
    [mutableDict setValue:self.blacknwhitePrsidebar forKey:kItemResponseBlacknwhitePrsidebar];
    [mutableDict setValue:self.specialToDate forKey:kItemResponseSpecialToDate];
    [mutableDict setValue:self.newsFromDate forKey:kItemResponseNewsFromDate];
    NSMutableArray *tempArrayForGroupPrice = [NSMutableArray array];
    for (NSObject *subArrayObject in self.groupPrice) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForGroupPrice addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForGroupPrice addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForGroupPrice] forKey:kItemResponseGroupPrice];
    [mutableDict setValue:self.optionsContainer forKey:kItemResponseOptionsContainer];
    [mutableDict setValue:self.blacknwhitePrcolleteral forKey:kItemResponseBlacknwhitePrcolleteral];

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

    self.typeId = [aDecoder decodeObjectForKey:kItemResponseTypeId];
    self.metaKeyword = [aDecoder decodeObjectForKey:kItemResponseMetaKeyword];
    self.hasOptions = [aDecoder decodeObjectForKey:kItemResponseHasOptions];
    self.msrp = [aDecoder decodeObjectForKey:kItemResponseMsrp];
    self.customDesign = [aDecoder decodeObjectForKey:kItemResponseCustomDesign];
    self.weight = [aDecoder decodeObjectForKey:kItemResponseWeight];
    self.sku = [aDecoder decodeObjectForKey:kItemResponseSku];
    self.isRecurring = [aDecoder decodeObjectForKey:kItemResponseIsRecurring];
    self.blacknwhitePrlayout = [aDecoder decodeObjectForKey:kItemResponseBlacknwhitePrlayout];
    self.thumbnail = [aDecoder decodeObjectForKey:kItemResponseThumbnail];
    self.blacknwhitePrmoreviews = [aDecoder decodeObjectForKey:kItemResponseBlacknwhitePrmoreviews];
    self.specialFromDate = [aDecoder decodeObjectForKey:kItemResponseSpecialFromDate];
    self.urlPath = [aDecoder decodeObjectForKey:kItemResponseUrlPath];
    self.status = [aDecoder decodeObjectForKey:kItemResponseStatus];
    self.blacknwhitePrrelatedcontent = [aDecoder decodeObjectForKey:kItemResponseBlacknwhitePrrelatedcontent];
    self.customDesignFrom = [aDecoder decodeObjectForKey:kItemResponseCustomDesignFrom];
    self.internalBaseClassDescription = [aDecoder decodeObjectForKey:kItemResponseDescription];
    self.customDesignTo = [aDecoder decodeObjectForKey:kItemResponseCustomDesignTo];
    self.blacknwhitePrprevnext = [aDecoder decodeObjectForKey:kItemResponseBlacknwhitePrprevnext];
    self.smallImage = [aDecoder decodeObjectForKey:kItemResponseSmallImage];
    self.manufacturerInfo = [aDecoder decodeObjectForKey:kItemResponseManufacturerInfo];
    self.image = [aDecoder decodeObjectForKey:kItemResponseImage];
    self.attributeSetId = [aDecoder decodeObjectForKey:kItemResponseAttributeSetId];
    self.blacknwhitePrbrandpos = [aDecoder decodeObjectForKey:kItemResponseBlacknwhitePrbrandpos];
    self.requiredOptions = [aDecoder decodeObjectForKey:kItemResponseRequiredOptions];
    self.price = [aDecoder decodeObjectForKey:kItemResponsePrice];
    self.blacknwhitePrtabs = [aDecoder decodeObjectForKey:kItemResponseBlacknwhitePrtabs];
    self.isInStock = [aDecoder decodeObjectForKey:kItemResponseIsInStock];
    self.blacknwhitePrrelated = [aDecoder decodeObjectForKey:kItemResponseBlacknwhitePrrelated];
    self.tierPriceChanged = [aDecoder decodeDoubleForKey:kItemResponseTierPriceChanged];
    self.newsToDate = [aDecoder decodeObjectForKey:kItemResponseNewsToDate];
    self.updatedAt = [aDecoder decodeObjectForKey:kItemResponseUpdatedAt];
    self.name = [aDecoder decodeObjectForKey:kItemResponseName];
    self.groupPriceChanged = [aDecoder decodeDoubleForKey:kItemResponseGroupPriceChanged];
    self.blacknwhitePrbrandlink = [aDecoder decodeObjectForKey:kItemResponseBlacknwhitePrbrandlink];
    self.stockItem = [aDecoder decodeObjectForKey:kItemResponseStockItem];
    self.giftMessageAvailable = [aDecoder decodeObjectForKey:kItemResponseGiftMessageAvailable];
    self.isSalable = [aDecoder decodeObjectForKey:kItemResponseIsSalable];
    self.tierPrice = [aDecoder decodeObjectForKey:kItemResponseTierPrice];
    self.blacknwhitePrbrandtarget = [aDecoder decodeObjectForKey:kItemResponseBlacknwhitePrbrandtarget];
    self.msrpEnabled = [aDecoder decodeObjectForKey:kItemResponseMsrpEnabled];
    self.blacknwhitePrcustom = [aDecoder decodeObjectForKey:kItemResponseBlacknwhitePrcustom];
    self.countryOfManufacture = [aDecoder decodeObjectForKey:kItemResponseCountryOfManufacture];
    self.blacknwhitePrbrand = [aDecoder decodeObjectForKey:kItemResponseBlacknwhitePrbrand];
    self.createdAt = [aDecoder decodeObjectForKey:kItemResponseCreatedAt];
    self.installment = [aDecoder decodeObjectForKey:kItemResponseInstallment];
    self.taxClassId = [aDecoder decodeObjectForKey:kItemResponseTaxClassId];
    self.blacknwhitePrsku = [aDecoder decodeObjectForKey:kItemResponseBlacknwhitePrsku];
    self.metaDescription = [aDecoder decodeObjectForKey:kItemResponseMetaDescription];
    self.specialPrice = [aDecoder decodeObjectForKey:kItemResponseSpecialPrice];
    self.mediaGallery = [aDecoder decodeObjectForKey:kItemResponseMediaGallery];
    self.blacknwhiteProductimg = [aDecoder decodeObjectForKey:kItemResponseBlacknwhiteProductimg];
    self.shortDescription = [aDecoder decodeObjectForKey:kItemResponseShortDescription];
    self.entityId = [aDecoder decodeObjectForKey:kItemResponseEntityId];
    self.msrpDisplayActualPriceType = [aDecoder decodeObjectForKey:kItemResponseMsrpDisplayActualPriceType];
    self.entityTypeId = [aDecoder decodeObjectForKey:kItemResponseEntityTypeId];
    self.metaTitle = [aDecoder decodeObjectForKey:kItemResponseMetaTitle];
    self.visibility = [aDecoder decodeObjectForKey:kItemResponseVisibility];
    self.customLayoutUpdate = [aDecoder decodeObjectForKey:kItemResponseCustomLayoutUpdate];
    self.blacknwhiteRelatedpos = [aDecoder decodeObjectForKey:kItemResponseBlacknwhiteRelatedpos];
    self.urlKey = [aDecoder decodeObjectForKey:kItemResponseUrlKey];
    self.pageLayout = [aDecoder decodeObjectForKey:kItemResponsePageLayout];
    self.blacknwhitePrsidebar = [aDecoder decodeObjectForKey:kItemResponseBlacknwhitePrsidebar];
    self.specialToDate = [aDecoder decodeObjectForKey:kItemResponseSpecialToDate];
    self.newsFromDate = [aDecoder decodeObjectForKey:kItemResponseNewsFromDate];
    self.groupPrice = [aDecoder decodeObjectForKey:kItemResponseGroupPrice];
    self.optionsContainer = [aDecoder decodeObjectForKey:kItemResponseOptionsContainer];
    self.blacknwhitePrcolleteral = [aDecoder decodeObjectForKey:kItemResponseBlacknwhitePrcolleteral];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_typeId forKey:kItemResponseTypeId];
    [aCoder encodeObject:_metaKeyword forKey:kItemResponseMetaKeyword];
    [aCoder encodeObject:_hasOptions forKey:kItemResponseHasOptions];
    [aCoder encodeObject:_msrp forKey:kItemResponseMsrp];
    [aCoder encodeObject:_customDesign forKey:kItemResponseCustomDesign];
    [aCoder encodeObject:_weight forKey:kItemResponseWeight];
    [aCoder encodeObject:_sku forKey:kItemResponseSku];
    [aCoder encodeObject:_isRecurring forKey:kItemResponseIsRecurring];
    [aCoder encodeObject:_blacknwhitePrlayout forKey:kItemResponseBlacknwhitePrlayout];
    [aCoder encodeObject:_thumbnail forKey:kItemResponseThumbnail];
    [aCoder encodeObject:_blacknwhitePrmoreviews forKey:kItemResponseBlacknwhitePrmoreviews];
    [aCoder encodeObject:_specialFromDate forKey:kItemResponseSpecialFromDate];
    [aCoder encodeObject:_urlPath forKey:kItemResponseUrlPath];
    [aCoder encodeObject:_status forKey:kItemResponseStatus];
    [aCoder encodeObject:_blacknwhitePrrelatedcontent forKey:kItemResponseBlacknwhitePrrelatedcontent];
    [aCoder encodeObject:_customDesignFrom forKey:kItemResponseCustomDesignFrom];
    [aCoder encodeObject:_internalBaseClassDescription forKey:kItemResponseDescription];
    [aCoder encodeObject:_customDesignTo forKey:kItemResponseCustomDesignTo];
    [aCoder encodeObject:_blacknwhitePrprevnext forKey:kItemResponseBlacknwhitePrprevnext];
    [aCoder encodeObject:_smallImage forKey:kItemResponseSmallImage];
    [aCoder encodeObject:_manufacturerInfo forKey:kItemResponseManufacturerInfo];
    [aCoder encodeObject:_image forKey:kItemResponseImage];
    [aCoder encodeObject:_attributeSetId forKey:kItemResponseAttributeSetId];
    [aCoder encodeObject:_blacknwhitePrbrandpos forKey:kItemResponseBlacknwhitePrbrandpos];
    [aCoder encodeObject:_requiredOptions forKey:kItemResponseRequiredOptions];
    [aCoder encodeObject:_price forKey:kItemResponsePrice];
    [aCoder encodeObject:_blacknwhitePrtabs forKey:kItemResponseBlacknwhitePrtabs];
    [aCoder encodeObject:_isInStock forKey:kItemResponseIsInStock];
    [aCoder encodeObject:_blacknwhitePrrelated forKey:kItemResponseBlacknwhitePrrelated];
    [aCoder encodeDouble:_tierPriceChanged forKey:kItemResponseTierPriceChanged];
    [aCoder encodeObject:_newsToDate forKey:kItemResponseNewsToDate];
    [aCoder encodeObject:_updatedAt forKey:kItemResponseUpdatedAt];
    [aCoder encodeObject:_name forKey:kItemResponseName];
    [aCoder encodeDouble:_groupPriceChanged forKey:kItemResponseGroupPriceChanged];
    [aCoder encodeObject:_blacknwhitePrbrandlink forKey:kItemResponseBlacknwhitePrbrandlink];
    [aCoder encodeObject:_stockItem forKey:kItemResponseStockItem];
    [aCoder encodeObject:_giftMessageAvailable forKey:kItemResponseGiftMessageAvailable];
    [aCoder encodeObject:_isSalable forKey:kItemResponseIsSalable];
    [aCoder encodeObject:_tierPrice forKey:kItemResponseTierPrice];
    [aCoder encodeObject:_blacknwhitePrbrandtarget forKey:kItemResponseBlacknwhitePrbrandtarget];
    [aCoder encodeObject:_msrpEnabled forKey:kItemResponseMsrpEnabled];
    [aCoder encodeObject:_blacknwhitePrcustom forKey:kItemResponseBlacknwhitePrcustom];
    [aCoder encodeObject:_countryOfManufacture forKey:kItemResponseCountryOfManufacture];
    [aCoder encodeObject:_blacknwhitePrbrand forKey:kItemResponseBlacknwhitePrbrand];
    [aCoder encodeObject:_createdAt forKey:kItemResponseCreatedAt];
    [aCoder encodeObject:_installment forKey:kItemResponseInstallment];
    [aCoder encodeObject:_taxClassId forKey:kItemResponseTaxClassId];
    [aCoder encodeObject:_blacknwhitePrsku forKey:kItemResponseBlacknwhitePrsku];
    [aCoder encodeObject:_metaDescription forKey:kItemResponseMetaDescription];
    [aCoder encodeObject:_specialPrice forKey:kItemResponseSpecialPrice];
    [aCoder encodeObject:_mediaGallery forKey:kItemResponseMediaGallery];
    [aCoder encodeObject:_blacknwhiteProductimg forKey:kItemResponseBlacknwhiteProductimg];
    [aCoder encodeObject:_shortDescription forKey:kItemResponseShortDescription];
    [aCoder encodeObject:_entityId forKey:kItemResponseEntityId];
    [aCoder encodeObject:_msrpDisplayActualPriceType forKey:kItemResponseMsrpDisplayActualPriceType];
    [aCoder encodeObject:_entityTypeId forKey:kItemResponseEntityTypeId];
    [aCoder encodeObject:_metaTitle forKey:kItemResponseMetaTitle];
    [aCoder encodeObject:_visibility forKey:kItemResponseVisibility];
    [aCoder encodeObject:_customLayoutUpdate forKey:kItemResponseCustomLayoutUpdate];
    [aCoder encodeObject:_blacknwhiteRelatedpos forKey:kItemResponseBlacknwhiteRelatedpos];
    [aCoder encodeObject:_urlKey forKey:kItemResponseUrlKey];
    [aCoder encodeObject:_pageLayout forKey:kItemResponsePageLayout];
    [aCoder encodeObject:_blacknwhitePrsidebar forKey:kItemResponseBlacknwhitePrsidebar];
    [aCoder encodeObject:_specialToDate forKey:kItemResponseSpecialToDate];
    [aCoder encodeObject:_newsFromDate forKey:kItemResponseNewsFromDate];
    [aCoder encodeObject:_groupPrice forKey:kItemResponseGroupPrice];
    [aCoder encodeObject:_optionsContainer forKey:kItemResponseOptionsContainer];
    [aCoder encodeObject:_blacknwhitePrcolleteral forKey:kItemResponseBlacknwhitePrcolleteral];
}

- (id)copyWithZone:(NSZone *)zone
{
    ItemResponse *copy = [[ItemResponse alloc] init];
    
    if (copy) {

        copy.typeId = [self.typeId copyWithZone:zone];
        copy.metaKeyword = [self.metaKeyword copyWithZone:zone];
        copy.hasOptions = [self.hasOptions copyWithZone:zone];
        copy.msrp = [self.msrp copyWithZone:zone];
        copy.customDesign = [self.customDesign copyWithZone:zone];
        copy.weight = [self.weight copyWithZone:zone];
        copy.sku = [self.sku copyWithZone:zone];
        copy.isRecurring = [self.isRecurring copyWithZone:zone];
        copy.blacknwhitePrlayout = [self.blacknwhitePrlayout copyWithZone:zone];
        copy.thumbnail = [self.thumbnail copyWithZone:zone];
        copy.blacknwhitePrmoreviews = [self.blacknwhitePrmoreviews copyWithZone:zone];
        copy.specialFromDate = [self.specialFromDate copyWithZone:zone];
        copy.urlPath = [self.urlPath copyWithZone:zone];
        copy.status = [self.status copyWithZone:zone];
        copy.blacknwhitePrrelatedcontent = [self.blacknwhitePrrelatedcontent copyWithZone:zone];
        copy.customDesignFrom = [self.customDesignFrom copyWithZone:zone];
        copy.internalBaseClassDescription = [self.internalBaseClassDescription copyWithZone:zone];
        copy.customDesignTo = [self.customDesignTo copyWithZone:zone];
        copy.blacknwhitePrprevnext = [self.blacknwhitePrprevnext copyWithZone:zone];
        copy.smallImage = [self.smallImage copyWithZone:zone];
        copy.manufacturerInfo = [self.manufacturerInfo copyWithZone:zone];
        copy.image = [self.image copyWithZone:zone];
        copy.attributeSetId = [self.attributeSetId copyWithZone:zone];
        copy.blacknwhitePrbrandpos = [self.blacknwhitePrbrandpos copyWithZone:zone];
        copy.requiredOptions = [self.requiredOptions copyWithZone:zone];
        copy.price = [self.price copyWithZone:zone];
        copy.blacknwhitePrtabs = [self.blacknwhitePrtabs copyWithZone:zone];
        copy.isInStock = [self.isInStock copyWithZone:zone];
        copy.blacknwhitePrrelated = [self.blacknwhitePrrelated copyWithZone:zone];
        copy.tierPriceChanged = self.tierPriceChanged;
        copy.newsToDate = [self.newsToDate copyWithZone:zone];
        copy.updatedAt = [self.updatedAt copyWithZone:zone];
        copy.name = [self.name copyWithZone:zone];
        copy.groupPriceChanged = self.groupPriceChanged;
        copy.blacknwhitePrbrandlink = [self.blacknwhitePrbrandlink copyWithZone:zone];
        copy.stockItem = [self.stockItem copyWithZone:zone];
        copy.giftMessageAvailable = [self.giftMessageAvailable copyWithZone:zone];
        copy.isSalable = [self.isSalable copyWithZone:zone];
        copy.tierPrice = [self.tierPrice copyWithZone:zone];
        copy.blacknwhitePrbrandtarget = [self.blacknwhitePrbrandtarget copyWithZone:zone];
        copy.msrpEnabled = [self.msrpEnabled copyWithZone:zone];
        copy.blacknwhitePrcustom = [self.blacknwhitePrcustom copyWithZone:zone];
        copy.countryOfManufacture = [self.countryOfManufacture copyWithZone:zone];
        copy.blacknwhitePrbrand = [self.blacknwhitePrbrand copyWithZone:zone];
        copy.createdAt = [self.createdAt copyWithZone:zone];
        copy.installment = [self.installment copyWithZone:zone];
        copy.taxClassId = [self.taxClassId copyWithZone:zone];
        copy.blacknwhitePrsku = [self.blacknwhitePrsku copyWithZone:zone];
        copy.metaDescription = [self.metaDescription copyWithZone:zone];
        copy.specialPrice = [self.specialPrice copyWithZone:zone];
        copy.mediaGallery = [self.mediaGallery copyWithZone:zone];
        copy.blacknwhiteProductimg = [self.blacknwhiteProductimg copyWithZone:zone];
        copy.shortDescription = [self.shortDescription copyWithZone:zone];
        copy.entityId = [self.entityId copyWithZone:zone];
        copy.msrpDisplayActualPriceType = [self.msrpDisplayActualPriceType copyWithZone:zone];
        copy.entityTypeId = [self.entityTypeId copyWithZone:zone];
        copy.metaTitle = [self.metaTitle copyWithZone:zone];
        copy.visibility = [self.visibility copyWithZone:zone];
        copy.customLayoutUpdate = [self.customLayoutUpdate copyWithZone:zone];
        copy.blacknwhiteRelatedpos = [self.blacknwhiteRelatedpos copyWithZone:zone];
        copy.urlKey = [self.urlKey copyWithZone:zone];
        copy.pageLayout = [self.pageLayout copyWithZone:zone];
        copy.blacknwhitePrsidebar = [self.blacknwhitePrsidebar copyWithZone:zone];
        copy.specialToDate = [self.specialToDate copyWithZone:zone];
        copy.newsFromDate = [self.newsFromDate copyWithZone:zone];
        copy.groupPrice = [self.groupPrice copyWithZone:zone];
        copy.optionsContainer = [self.optionsContainer copyWithZone:zone];
        copy.blacknwhitePrcolleteral = [self.blacknwhitePrcolleteral copyWithZone:zone];
    }
    
    return copy;
}


@end
