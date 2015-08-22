//
//  ItemResult.m
//
//  Created by Ratna Kumalasari on 8/22/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "ItemResult.h"
#import "ItemStockItem.h"
#import "ItemInstallment.h"


NSString *const kItemResultTypeId = @"type_id";
NSString *const kItemResultHasOptions = @"has_options";
NSString *const kItemResultMetaKeyword = @"meta_keyword";
NSString *const kItemResultMsrp = @"msrp";
NSString *const kItemResultCustomDesign = @"custom_design";
NSString *const kItemResultWeight = @"weight";
NSString *const kItemResultSku = @"sku";
NSString *const kItemResultImageLabel = @"image_label";
NSString *const kItemResultIsRecurring = @"is_recurring";
NSString *const kItemResultBlacknwhitePrlayout = @"blacknwhite_prlayout";
NSString *const kItemResultThumbnail = @"thumbnail";
NSString *const kItemResultThumbnailLabel = @"thumbnail_label";
NSString *const kItemResultBlacknwhitePrmoreviews = @"blacknwhite_prmoreviews";
NSString *const kItemResultSpecialFromDate = @"special_from_date";
NSString *const kItemResultUrlPath = @"url_path";
NSString *const kItemResultStatus = @"status";
NSString *const kItemResultBlacknwhitePrrelatedcontent = @"blacknwhite_prrelatedcontent";
NSString *const kItemResultCustomDesignFrom = @"custom_design_from";
NSString *const kItemResultDescription = @"description";
NSString *const kItemResultCustomDesignTo = @"custom_design_to";
NSString *const kItemResultBlacknwhitePrprevnext = @"blacknwhite_prprevnext";
NSString *const kItemResultSmallImage = @"small_image";
NSString *const kItemResultManufacturerInfo = @"manufacturer_info";
NSString *const kItemResultImage = @"image";
NSString *const kItemResultAttributeSetId = @"attribute_set_id";
NSString *const kItemResultBlacknwhitePrbrandpos = @"blacknwhite_prbrandpos";
NSString *const kItemResultRequiredOptions = @"required_options";
NSString *const kItemResultPrice = @"price";
NSString *const kItemResultBlacknwhitePrtabs = @"blacknwhite_prtabs";
NSString *const kItemResultBlacknwhitePrrelated = @"blacknwhite_prrelated";
NSString *const kItemResultNewsToDate = @"news_to_date";
NSString *const kItemResultUpdatedAt = @"updated_at";
NSString *const kItemResultName = @"name";
NSString *const kItemResultBlacknwhitePrbrandlink = @"blacknwhite_prbrandlink";
NSString *const kItemResultStockItem = @"stock_item";
NSString *const kItemResultGiftMessageAvailable = @"gift_message_available";
NSString *const kItemResultIsSalable = @"is_salable";
NSString *const kItemResultBlacknwhitePrbrandtarget = @"blacknwhite_prbrandtarget";
NSString *const kItemResultMsrpEnabled = @"msrp_enabled";
NSString *const kItemResultBlacknwhitePrcustom = @"blacknwhite_prcustom";
NSString *const kItemResultCountryOfManufacture = @"country_of_manufacture";
NSString *const kItemResultBlacknwhitePrbrand = @"blacknwhite_prbrand";
NSString *const kItemResultCreatedAt = @"created_at";
NSString *const kItemResultDownPayment = @"down_payment";
NSString *const kItemResultInstallment = @"installment";
NSString *const kItemResultTaxClassId = @"tax_class_id";
NSString *const kItemResultSmallImageLabel = @"small_image_label";
NSString *const kItemResultBlacknwhitePrsku = @"blacknwhite_prsku";
NSString *const kItemResultMetaDescription = @"meta_description";
NSString *const kItemResultSpecialPrice = @"special_price";
NSString *const kItemResultBlacknwhiteProductimg = @"blacknwhite_productimg";
NSString *const kItemResultShortDescription = @"short_description";
NSString *const kItemResultEntityId = @"entity_id";
NSString *const kItemResultMsrpDisplayActualPriceType = @"msrp_display_actual_price_type";
NSString *const kItemResultEntityTypeId = @"entity_type_id";
NSString *const kItemResultCatIndexPosition = @"cat_index_position";
NSString *const kItemResultCustomLayoutUpdate = @"custom_layout_update";
NSString *const kItemResultVisibility = @"visibility";
NSString *const kItemResultMetaTitle = @"meta_title";
NSString *const kItemResultBlacknwhiteRelatedpos = @"blacknwhite_relatedpos";
NSString *const kItemResultUrlKey = @"url_key";
NSString *const kItemResultPageLayout = @"page_layout";
NSString *const kItemResultBlacknwhitePrsidebar = @"blacknwhite_prsidebar";
NSString *const kItemResultNewsFromDate = @"news_from_date";
NSString *const kItemResultSpecialToDate = @"special_to_date";
NSString *const kItemResultOptionsContainer = @"options_container";
NSString *const kItemResultBlacknwhitePrcolleteral = @"blacknwhite_prcolleteral";


@interface ItemResult ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation ItemResult

@synthesize typeId = _typeId;
@synthesize hasOptions = _hasOptions;
@synthesize metaKeyword = _metaKeyword;
@synthesize msrp = _msrp;
@synthesize customDesign = _customDesign;
@synthesize weight = _weight;
@synthesize sku = _sku;
@synthesize imageLabel = _imageLabel;
@synthesize isRecurring = _isRecurring;
@synthesize blacknwhitePrlayout = _blacknwhitePrlayout;
@synthesize thumbnail = _thumbnail;
@synthesize thumbnailLabel = _thumbnailLabel;
@synthesize blacknwhitePrmoreviews = _blacknwhitePrmoreviews;
@synthesize specialFromDate = _specialFromDate;
@synthesize urlPath = _urlPath;
@synthesize status = _status;
@synthesize blacknwhitePrrelatedcontent = _blacknwhitePrrelatedcontent;
@synthesize customDesignFrom = _customDesignFrom;
@synthesize resultDescription = _resultDescription;
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
@synthesize blacknwhitePrrelated = _blacknwhitePrrelated;
@synthesize newsToDate = _newsToDate;
@synthesize updatedAt = _updatedAt;
@synthesize name = _name;
@synthesize blacknwhitePrbrandlink = _blacknwhitePrbrandlink;
@synthesize stockItem = _stockItem;
@synthesize giftMessageAvailable = _giftMessageAvailable;
@synthesize isSalable = _isSalable;
@synthesize blacknwhitePrbrandtarget = _blacknwhitePrbrandtarget;
@synthesize msrpEnabled = _msrpEnabled;
@synthesize blacknwhitePrcustom = _blacknwhitePrcustom;
@synthesize countryOfManufacture = _countryOfManufacture;
@synthesize blacknwhitePrbrand = _blacknwhitePrbrand;
@synthesize createdAt = _createdAt;
@synthesize downPayment = _downPayment;
@synthesize installment = _installment;
@synthesize taxClassId = _taxClassId;
@synthesize smallImageLabel = _smallImageLabel;
@synthesize blacknwhitePrsku = _blacknwhitePrsku;
@synthesize metaDescription = _metaDescription;
@synthesize specialPrice = _specialPrice;
@synthesize blacknwhiteProductimg = _blacknwhiteProductimg;
@synthesize shortDescription = _shortDescription;
@synthesize entityId = _entityId;
@synthesize msrpDisplayActualPriceType = _msrpDisplayActualPriceType;
@synthesize entityTypeId = _entityTypeId;
@synthesize catIndexPosition = _catIndexPosition;
@synthesize customLayoutUpdate = _customLayoutUpdate;
@synthesize visibility = _visibility;
@synthesize metaTitle = _metaTitle;
@synthesize blacknwhiteRelatedpos = _blacknwhiteRelatedpos;
@synthesize urlKey = _urlKey;
@synthesize pageLayout = _pageLayout;
@synthesize blacknwhitePrsidebar = _blacknwhitePrsidebar;
@synthesize newsFromDate = _newsFromDate;
@synthesize specialToDate = _specialToDate;
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
            self.typeId = [self objectOrNilForKey:kItemResultTypeId fromDictionary:dict];
            self.hasOptions = [self objectOrNilForKey:kItemResultHasOptions fromDictionary:dict];
            self.metaKeyword = [self objectOrNilForKey:kItemResultMetaKeyword fromDictionary:dict];
            self.msrp = [self objectOrNilForKey:kItemResultMsrp fromDictionary:dict];
            self.customDesign = [self objectOrNilForKey:kItemResultCustomDesign fromDictionary:dict];
            self.weight = [self objectOrNilForKey:kItemResultWeight fromDictionary:dict];
            self.sku = [self objectOrNilForKey:kItemResultSku fromDictionary:dict];
            self.imageLabel = [self objectOrNilForKey:kItemResultImageLabel fromDictionary:dict];
            self.isRecurring = [self objectOrNilForKey:kItemResultIsRecurring fromDictionary:dict];
            self.blacknwhitePrlayout = [self objectOrNilForKey:kItemResultBlacknwhitePrlayout fromDictionary:dict];
            self.thumbnail = [self objectOrNilForKey:kItemResultThumbnail fromDictionary:dict];
            self.thumbnailLabel = [self objectOrNilForKey:kItemResultThumbnailLabel fromDictionary:dict];
            self.blacknwhitePrmoreviews = [self objectOrNilForKey:kItemResultBlacknwhitePrmoreviews fromDictionary:dict];
            self.specialFromDate = [self objectOrNilForKey:kItemResultSpecialFromDate fromDictionary:dict];
            self.urlPath = [self objectOrNilForKey:kItemResultUrlPath fromDictionary:dict];
            self.status = [self objectOrNilForKey:kItemResultStatus fromDictionary:dict];
            self.blacknwhitePrrelatedcontent = [self objectOrNilForKey:kItemResultBlacknwhitePrrelatedcontent fromDictionary:dict];
            self.customDesignFrom = [self objectOrNilForKey:kItemResultCustomDesignFrom fromDictionary:dict];
            self.resultDescription = [self objectOrNilForKey:kItemResultDescription fromDictionary:dict];
            self.customDesignTo = [self objectOrNilForKey:kItemResultCustomDesignTo fromDictionary:dict];
            self.blacknwhitePrprevnext = [self objectOrNilForKey:kItemResultBlacknwhitePrprevnext fromDictionary:dict];
            self.smallImage = [self objectOrNilForKey:kItemResultSmallImage fromDictionary:dict];
            self.manufacturerInfo = [self objectOrNilForKey:kItemResultManufacturerInfo fromDictionary:dict];
            self.image = [self objectOrNilForKey:kItemResultImage fromDictionary:dict];
            self.attributeSetId = [self objectOrNilForKey:kItemResultAttributeSetId fromDictionary:dict];
            self.blacknwhitePrbrandpos = [self objectOrNilForKey:kItemResultBlacknwhitePrbrandpos fromDictionary:dict];
            self.requiredOptions = [self objectOrNilForKey:kItemResultRequiredOptions fromDictionary:dict];
            self.price = [self objectOrNilForKey:kItemResultPrice fromDictionary:dict];
            self.blacknwhitePrtabs = [self objectOrNilForKey:kItemResultBlacknwhitePrtabs fromDictionary:dict];
            self.blacknwhitePrrelated = [self objectOrNilForKey:kItemResultBlacknwhitePrrelated fromDictionary:dict];
            self.newsToDate = [self objectOrNilForKey:kItemResultNewsToDate fromDictionary:dict];
            self.updatedAt = [self objectOrNilForKey:kItemResultUpdatedAt fromDictionary:dict];
            self.name = [self objectOrNilForKey:kItemResultName fromDictionary:dict];
            self.blacknwhitePrbrandlink = [self objectOrNilForKey:kItemResultBlacknwhitePrbrandlink fromDictionary:dict];
            self.stockItem = [ItemStockItem modelObjectWithDictionary:[dict objectForKey:kItemResultStockItem]];
            self.giftMessageAvailable = [self objectOrNilForKey:kItemResultGiftMessageAvailable fromDictionary:dict];
            self.isSalable = [self objectOrNilForKey:kItemResultIsSalable fromDictionary:dict];
            self.blacknwhitePrbrandtarget = [self objectOrNilForKey:kItemResultBlacknwhitePrbrandtarget fromDictionary:dict];
            self.msrpEnabled = [self objectOrNilForKey:kItemResultMsrpEnabled fromDictionary:dict];
            self.blacknwhitePrcustom = [self objectOrNilForKey:kItemResultBlacknwhitePrcustom fromDictionary:dict];
            self.countryOfManufacture = [self objectOrNilForKey:kItemResultCountryOfManufacture fromDictionary:dict];
            self.blacknwhitePrbrand = [self objectOrNilForKey:kItemResultBlacknwhitePrbrand fromDictionary:dict];
            self.createdAt = [self objectOrNilForKey:kItemResultCreatedAt fromDictionary:dict];
            self.downPayment = [self objectOrNilForKey:kItemResultDownPayment fromDictionary:dict];
    NSObject *receivedItemInstallment = [dict objectForKey:kItemResultInstallment];
    NSMutableArray *parsedItemInstallment = [NSMutableArray array];
    if ([receivedItemInstallment isKindOfClass:[NSArray class]]) {
        for (NSDictionary *item in (NSArray *)receivedItemInstallment) {
            if ([item isKindOfClass:[NSDictionary class]]) {
                [parsedItemInstallment addObject:[ItemInstallment modelObjectWithDictionary:item]];
            }
       }
    } else if ([receivedItemInstallment isKindOfClass:[NSDictionary class]]) {
       [parsedItemInstallment addObject:[ItemInstallment modelObjectWithDictionary:(NSDictionary *)receivedItemInstallment]];
    }

    self.installment = [NSArray arrayWithArray:parsedItemInstallment];
            self.taxClassId = [self objectOrNilForKey:kItemResultTaxClassId fromDictionary:dict];
            self.smallImageLabel = [self objectOrNilForKey:kItemResultSmallImageLabel fromDictionary:dict];
            self.blacknwhitePrsku = [self objectOrNilForKey:kItemResultBlacknwhitePrsku fromDictionary:dict];
            self.metaDescription = [self objectOrNilForKey:kItemResultMetaDescription fromDictionary:dict];
            self.specialPrice = [self objectOrNilForKey:kItemResultSpecialPrice fromDictionary:dict];
            self.blacknwhiteProductimg = [self objectOrNilForKey:kItemResultBlacknwhiteProductimg fromDictionary:dict];
            self.shortDescription = [self objectOrNilForKey:kItemResultShortDescription fromDictionary:dict];
            self.entityId = [self objectOrNilForKey:kItemResultEntityId fromDictionary:dict];
            self.msrpDisplayActualPriceType = [self objectOrNilForKey:kItemResultMsrpDisplayActualPriceType fromDictionary:dict];
            self.entityTypeId = [self objectOrNilForKey:kItemResultEntityTypeId fromDictionary:dict];
            self.catIndexPosition = [self objectOrNilForKey:kItemResultCatIndexPosition fromDictionary:dict];
            self.customLayoutUpdate = [self objectOrNilForKey:kItemResultCustomLayoutUpdate fromDictionary:dict];
            self.visibility = [self objectOrNilForKey:kItemResultVisibility fromDictionary:dict];
            self.metaTitle = [self objectOrNilForKey:kItemResultMetaTitle fromDictionary:dict];
            self.blacknwhiteRelatedpos = [self objectOrNilForKey:kItemResultBlacknwhiteRelatedpos fromDictionary:dict];
            self.urlKey = [self objectOrNilForKey:kItemResultUrlKey fromDictionary:dict];
            self.pageLayout = [self objectOrNilForKey:kItemResultPageLayout fromDictionary:dict];
            self.blacknwhitePrsidebar = [self objectOrNilForKey:kItemResultBlacknwhitePrsidebar fromDictionary:dict];
            self.newsFromDate = [self objectOrNilForKey:kItemResultNewsFromDate fromDictionary:dict];
            self.specialToDate = [self objectOrNilForKey:kItemResultSpecialToDate fromDictionary:dict];
            self.optionsContainer = [self objectOrNilForKey:kItemResultOptionsContainer fromDictionary:dict];
            self.blacknwhitePrcolleteral = [self objectOrNilForKey:kItemResultBlacknwhitePrcolleteral fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.typeId forKey:kItemResultTypeId];
    [mutableDict setValue:self.hasOptions forKey:kItemResultHasOptions];
    [mutableDict setValue:self.metaKeyword forKey:kItemResultMetaKeyword];
    [mutableDict setValue:self.msrp forKey:kItemResultMsrp];
    [mutableDict setValue:self.customDesign forKey:kItemResultCustomDesign];
    [mutableDict setValue:self.weight forKey:kItemResultWeight];
    [mutableDict setValue:self.sku forKey:kItemResultSku];
    [mutableDict setValue:self.imageLabel forKey:kItemResultImageLabel];
    [mutableDict setValue:self.isRecurring forKey:kItemResultIsRecurring];
    [mutableDict setValue:self.blacknwhitePrlayout forKey:kItemResultBlacknwhitePrlayout];
    [mutableDict setValue:self.thumbnail forKey:kItemResultThumbnail];
    [mutableDict setValue:self.thumbnailLabel forKey:kItemResultThumbnailLabel];
    [mutableDict setValue:self.blacknwhitePrmoreviews forKey:kItemResultBlacknwhitePrmoreviews];
    [mutableDict setValue:self.specialFromDate forKey:kItemResultSpecialFromDate];
    [mutableDict setValue:self.urlPath forKey:kItemResultUrlPath];
    [mutableDict setValue:self.status forKey:kItemResultStatus];
    [mutableDict setValue:self.blacknwhitePrrelatedcontent forKey:kItemResultBlacknwhitePrrelatedcontent];
    [mutableDict setValue:self.customDesignFrom forKey:kItemResultCustomDesignFrom];
    [mutableDict setValue:self.resultDescription forKey:kItemResultDescription];
    [mutableDict setValue:self.customDesignTo forKey:kItemResultCustomDesignTo];
    [mutableDict setValue:self.blacknwhitePrprevnext forKey:kItemResultBlacknwhitePrprevnext];
    [mutableDict setValue:self.smallImage forKey:kItemResultSmallImage];
    [mutableDict setValue:self.manufacturerInfo forKey:kItemResultManufacturerInfo];
    [mutableDict setValue:self.image forKey:kItemResultImage];
    [mutableDict setValue:self.attributeSetId forKey:kItemResultAttributeSetId];
    [mutableDict setValue:self.blacknwhitePrbrandpos forKey:kItemResultBlacknwhitePrbrandpos];
    [mutableDict setValue:self.requiredOptions forKey:kItemResultRequiredOptions];
    [mutableDict setValue:self.price forKey:kItemResultPrice];
    [mutableDict setValue:self.blacknwhitePrtabs forKey:kItemResultBlacknwhitePrtabs];
    [mutableDict setValue:self.blacknwhitePrrelated forKey:kItemResultBlacknwhitePrrelated];
    [mutableDict setValue:self.newsToDate forKey:kItemResultNewsToDate];
    [mutableDict setValue:self.updatedAt forKey:kItemResultUpdatedAt];
    [mutableDict setValue:self.name forKey:kItemResultName];
    [mutableDict setValue:self.blacknwhitePrbrandlink forKey:kItemResultBlacknwhitePrbrandlink];
    [mutableDict setValue:[self.stockItem dictionaryRepresentation] forKey:kItemResultStockItem];
    [mutableDict setValue:self.giftMessageAvailable forKey:kItemResultGiftMessageAvailable];
    [mutableDict setValue:self.isSalable forKey:kItemResultIsSalable];
    [mutableDict setValue:self.blacknwhitePrbrandtarget forKey:kItemResultBlacknwhitePrbrandtarget];
    [mutableDict setValue:self.msrpEnabled forKey:kItemResultMsrpEnabled];
    [mutableDict setValue:self.blacknwhitePrcustom forKey:kItemResultBlacknwhitePrcustom];
    [mutableDict setValue:self.countryOfManufacture forKey:kItemResultCountryOfManufacture];
    [mutableDict setValue:self.blacknwhitePrbrand forKey:kItemResultBlacknwhitePrbrand];
    [mutableDict setValue:self.createdAt forKey:kItemResultCreatedAt];
    [mutableDict setValue:self.downPayment forKey:kItemResultDownPayment];
    NSMutableArray *tempArrayForInstallment = [NSMutableArray array];
    for (NSObject *subArrayObject in self.installment) {
        if([subArrayObject respondsToSelector:@selector(dictionaryRepresentation)]) {
            // This class is a model object
            [tempArrayForInstallment addObject:[subArrayObject performSelector:@selector(dictionaryRepresentation)]];
        } else {
            // Generic object
            [tempArrayForInstallment addObject:subArrayObject];
        }
    }
    [mutableDict setValue:[NSArray arrayWithArray:tempArrayForInstallment] forKey:kItemResultInstallment];
    [mutableDict setValue:self.taxClassId forKey:kItemResultTaxClassId];
    [mutableDict setValue:self.smallImageLabel forKey:kItemResultSmallImageLabel];
    [mutableDict setValue:self.blacknwhitePrsku forKey:kItemResultBlacknwhitePrsku];
    [mutableDict setValue:self.metaDescription forKey:kItemResultMetaDescription];
    [mutableDict setValue:self.specialPrice forKey:kItemResultSpecialPrice];
    [mutableDict setValue:self.blacknwhiteProductimg forKey:kItemResultBlacknwhiteProductimg];
    [mutableDict setValue:self.shortDescription forKey:kItemResultShortDescription];
    [mutableDict setValue:self.entityId forKey:kItemResultEntityId];
    [mutableDict setValue:self.msrpDisplayActualPriceType forKey:kItemResultMsrpDisplayActualPriceType];
    [mutableDict setValue:self.entityTypeId forKey:kItemResultEntityTypeId];
    [mutableDict setValue:self.catIndexPosition forKey:kItemResultCatIndexPosition];
    [mutableDict setValue:self.customLayoutUpdate forKey:kItemResultCustomLayoutUpdate];
    [mutableDict setValue:self.visibility forKey:kItemResultVisibility];
    [mutableDict setValue:self.metaTitle forKey:kItemResultMetaTitle];
    [mutableDict setValue:self.blacknwhiteRelatedpos forKey:kItemResultBlacknwhiteRelatedpos];
    [mutableDict setValue:self.urlKey forKey:kItemResultUrlKey];
    [mutableDict setValue:self.pageLayout forKey:kItemResultPageLayout];
    [mutableDict setValue:self.blacknwhitePrsidebar forKey:kItemResultBlacknwhitePrsidebar];
    [mutableDict setValue:self.newsFromDate forKey:kItemResultNewsFromDate];
    [mutableDict setValue:self.specialToDate forKey:kItemResultSpecialToDate];
    [mutableDict setValue:self.optionsContainer forKey:kItemResultOptionsContainer];
    [mutableDict setValue:self.blacknwhitePrcolleteral forKey:kItemResultBlacknwhitePrcolleteral];

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

    self.typeId = [aDecoder decodeObjectForKey:kItemResultTypeId];
    self.hasOptions = [aDecoder decodeObjectForKey:kItemResultHasOptions];
    self.metaKeyword = [aDecoder decodeObjectForKey:kItemResultMetaKeyword];
    self.msrp = [aDecoder decodeObjectForKey:kItemResultMsrp];
    self.customDesign = [aDecoder decodeObjectForKey:kItemResultCustomDesign];
    self.weight = [aDecoder decodeObjectForKey:kItemResultWeight];
    self.sku = [aDecoder decodeObjectForKey:kItemResultSku];
    self.imageLabel = [aDecoder decodeObjectForKey:kItemResultImageLabel];
    self.isRecurring = [aDecoder decodeObjectForKey:kItemResultIsRecurring];
    self.blacknwhitePrlayout = [aDecoder decodeObjectForKey:kItemResultBlacknwhitePrlayout];
    self.thumbnail = [aDecoder decodeObjectForKey:kItemResultThumbnail];
    self.thumbnailLabel = [aDecoder decodeObjectForKey:kItemResultThumbnailLabel];
    self.blacknwhitePrmoreviews = [aDecoder decodeObjectForKey:kItemResultBlacknwhitePrmoreviews];
    self.specialFromDate = [aDecoder decodeObjectForKey:kItemResultSpecialFromDate];
    self.urlPath = [aDecoder decodeObjectForKey:kItemResultUrlPath];
    self.status = [aDecoder decodeObjectForKey:kItemResultStatus];
    self.blacknwhitePrrelatedcontent = [aDecoder decodeObjectForKey:kItemResultBlacknwhitePrrelatedcontent];
    self.customDesignFrom = [aDecoder decodeObjectForKey:kItemResultCustomDesignFrom];
    self.resultDescription = [aDecoder decodeObjectForKey:kItemResultDescription];
    self.customDesignTo = [aDecoder decodeObjectForKey:kItemResultCustomDesignTo];
    self.blacknwhitePrprevnext = [aDecoder decodeObjectForKey:kItemResultBlacknwhitePrprevnext];
    self.smallImage = [aDecoder decodeObjectForKey:kItemResultSmallImage];
    self.manufacturerInfo = [aDecoder decodeObjectForKey:kItemResultManufacturerInfo];
    self.image = [aDecoder decodeObjectForKey:kItemResultImage];
    self.attributeSetId = [aDecoder decodeObjectForKey:kItemResultAttributeSetId];
    self.blacknwhitePrbrandpos = [aDecoder decodeObjectForKey:kItemResultBlacknwhitePrbrandpos];
    self.requiredOptions = [aDecoder decodeObjectForKey:kItemResultRequiredOptions];
    self.price = [aDecoder decodeObjectForKey:kItemResultPrice];
    self.blacknwhitePrtabs = [aDecoder decodeObjectForKey:kItemResultBlacknwhitePrtabs];
    self.blacknwhitePrrelated = [aDecoder decodeObjectForKey:kItemResultBlacknwhitePrrelated];
    self.newsToDate = [aDecoder decodeObjectForKey:kItemResultNewsToDate];
    self.updatedAt = [aDecoder decodeObjectForKey:kItemResultUpdatedAt];
    self.name = [aDecoder decodeObjectForKey:kItemResultName];
    self.blacknwhitePrbrandlink = [aDecoder decodeObjectForKey:kItemResultBlacknwhitePrbrandlink];
    self.stockItem = [aDecoder decodeObjectForKey:kItemResultStockItem];
    self.giftMessageAvailable = [aDecoder decodeObjectForKey:kItemResultGiftMessageAvailable];
    self.isSalable = [aDecoder decodeObjectForKey:kItemResultIsSalable];
    self.blacknwhitePrbrandtarget = [aDecoder decodeObjectForKey:kItemResultBlacknwhitePrbrandtarget];
    self.msrpEnabled = [aDecoder decodeObjectForKey:kItemResultMsrpEnabled];
    self.blacknwhitePrcustom = [aDecoder decodeObjectForKey:kItemResultBlacknwhitePrcustom];
    self.countryOfManufacture = [aDecoder decodeObjectForKey:kItemResultCountryOfManufacture];
    self.blacknwhitePrbrand = [aDecoder decodeObjectForKey:kItemResultBlacknwhitePrbrand];
    self.createdAt = [aDecoder decodeObjectForKey:kItemResultCreatedAt];
    self.downPayment = [aDecoder decodeObjectForKey:kItemResultDownPayment];
    self.installment = [aDecoder decodeObjectForKey:kItemResultInstallment];
    self.taxClassId = [aDecoder decodeObjectForKey:kItemResultTaxClassId];
    self.smallImageLabel = [aDecoder decodeObjectForKey:kItemResultSmallImageLabel];
    self.blacknwhitePrsku = [aDecoder decodeObjectForKey:kItemResultBlacknwhitePrsku];
    self.metaDescription = [aDecoder decodeObjectForKey:kItemResultMetaDescription];
    self.specialPrice = [aDecoder decodeObjectForKey:kItemResultSpecialPrice];
    self.blacknwhiteProductimg = [aDecoder decodeObjectForKey:kItemResultBlacknwhiteProductimg];
    self.shortDescription = [aDecoder decodeObjectForKey:kItemResultShortDescription];
    self.entityId = [aDecoder decodeObjectForKey:kItemResultEntityId];
    self.msrpDisplayActualPriceType = [aDecoder decodeObjectForKey:kItemResultMsrpDisplayActualPriceType];
    self.entityTypeId = [aDecoder decodeObjectForKey:kItemResultEntityTypeId];
    self.catIndexPosition = [aDecoder decodeObjectForKey:kItemResultCatIndexPosition];
    self.customLayoutUpdate = [aDecoder decodeObjectForKey:kItemResultCustomLayoutUpdate];
    self.visibility = [aDecoder decodeObjectForKey:kItemResultVisibility];
    self.metaTitle = [aDecoder decodeObjectForKey:kItemResultMetaTitle];
    self.blacknwhiteRelatedpos = [aDecoder decodeObjectForKey:kItemResultBlacknwhiteRelatedpos];
    self.urlKey = [aDecoder decodeObjectForKey:kItemResultUrlKey];
    self.pageLayout = [aDecoder decodeObjectForKey:kItemResultPageLayout];
    self.blacknwhitePrsidebar = [aDecoder decodeObjectForKey:kItemResultBlacknwhitePrsidebar];
    self.newsFromDate = [aDecoder decodeObjectForKey:kItemResultNewsFromDate];
    self.specialToDate = [aDecoder decodeObjectForKey:kItemResultSpecialToDate];
    self.optionsContainer = [aDecoder decodeObjectForKey:kItemResultOptionsContainer];
    self.blacknwhitePrcolleteral = [aDecoder decodeObjectForKey:kItemResultBlacknwhitePrcolleteral];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_typeId forKey:kItemResultTypeId];
    [aCoder encodeObject:_hasOptions forKey:kItemResultHasOptions];
    [aCoder encodeObject:_metaKeyword forKey:kItemResultMetaKeyword];
    [aCoder encodeObject:_msrp forKey:kItemResultMsrp];
    [aCoder encodeObject:_customDesign forKey:kItemResultCustomDesign];
    [aCoder encodeObject:_weight forKey:kItemResultWeight];
    [aCoder encodeObject:_sku forKey:kItemResultSku];
    [aCoder encodeObject:_imageLabel forKey:kItemResultImageLabel];
    [aCoder encodeObject:_isRecurring forKey:kItemResultIsRecurring];
    [aCoder encodeObject:_blacknwhitePrlayout forKey:kItemResultBlacknwhitePrlayout];
    [aCoder encodeObject:_thumbnail forKey:kItemResultThumbnail];
    [aCoder encodeObject:_thumbnailLabel forKey:kItemResultThumbnailLabel];
    [aCoder encodeObject:_blacknwhitePrmoreviews forKey:kItemResultBlacknwhitePrmoreviews];
    [aCoder encodeObject:_specialFromDate forKey:kItemResultSpecialFromDate];
    [aCoder encodeObject:_urlPath forKey:kItemResultUrlPath];
    [aCoder encodeObject:_status forKey:kItemResultStatus];
    [aCoder encodeObject:_blacknwhitePrrelatedcontent forKey:kItemResultBlacknwhitePrrelatedcontent];
    [aCoder encodeObject:_customDesignFrom forKey:kItemResultCustomDesignFrom];
    [aCoder encodeObject:_resultDescription forKey:kItemResultDescription];
    [aCoder encodeObject:_customDesignTo forKey:kItemResultCustomDesignTo];
    [aCoder encodeObject:_blacknwhitePrprevnext forKey:kItemResultBlacknwhitePrprevnext];
    [aCoder encodeObject:_smallImage forKey:kItemResultSmallImage];
    [aCoder encodeObject:_manufacturerInfo forKey:kItemResultManufacturerInfo];
    [aCoder encodeObject:_image forKey:kItemResultImage];
    [aCoder encodeObject:_attributeSetId forKey:kItemResultAttributeSetId];
    [aCoder encodeObject:_blacknwhitePrbrandpos forKey:kItemResultBlacknwhitePrbrandpos];
    [aCoder encodeObject:_requiredOptions forKey:kItemResultRequiredOptions];
    [aCoder encodeObject:_price forKey:kItemResultPrice];
    [aCoder encodeObject:_blacknwhitePrtabs forKey:kItemResultBlacknwhitePrtabs];
    [aCoder encodeObject:_blacknwhitePrrelated forKey:kItemResultBlacknwhitePrrelated];
    [aCoder encodeObject:_newsToDate forKey:kItemResultNewsToDate];
    [aCoder encodeObject:_updatedAt forKey:kItemResultUpdatedAt];
    [aCoder encodeObject:_name forKey:kItemResultName];
    [aCoder encodeObject:_blacknwhitePrbrandlink forKey:kItemResultBlacknwhitePrbrandlink];
    [aCoder encodeObject:_stockItem forKey:kItemResultStockItem];
    [aCoder encodeObject:_giftMessageAvailable forKey:kItemResultGiftMessageAvailable];
    [aCoder encodeObject:_isSalable forKey:kItemResultIsSalable];
    [aCoder encodeObject:_blacknwhitePrbrandtarget forKey:kItemResultBlacknwhitePrbrandtarget];
    [aCoder encodeObject:_msrpEnabled forKey:kItemResultMsrpEnabled];
    [aCoder encodeObject:_blacknwhitePrcustom forKey:kItemResultBlacknwhitePrcustom];
    [aCoder encodeObject:_countryOfManufacture forKey:kItemResultCountryOfManufacture];
    [aCoder encodeObject:_blacknwhitePrbrand forKey:kItemResultBlacknwhitePrbrand];
    [aCoder encodeObject:_createdAt forKey:kItemResultCreatedAt];
    [aCoder encodeObject:_downPayment forKey:kItemResultDownPayment];
    [aCoder encodeObject:_installment forKey:kItemResultInstallment];
    [aCoder encodeObject:_taxClassId forKey:kItemResultTaxClassId];
    [aCoder encodeObject:_smallImageLabel forKey:kItemResultSmallImageLabel];
    [aCoder encodeObject:_blacknwhitePrsku forKey:kItemResultBlacknwhitePrsku];
    [aCoder encodeObject:_metaDescription forKey:kItemResultMetaDescription];
    [aCoder encodeObject:_specialPrice forKey:kItemResultSpecialPrice];
    [aCoder encodeObject:_blacknwhiteProductimg forKey:kItemResultBlacknwhiteProductimg];
    [aCoder encodeObject:_shortDescription forKey:kItemResultShortDescription];
    [aCoder encodeObject:_entityId forKey:kItemResultEntityId];
    [aCoder encodeObject:_msrpDisplayActualPriceType forKey:kItemResultMsrpDisplayActualPriceType];
    [aCoder encodeObject:_entityTypeId forKey:kItemResultEntityTypeId];
    [aCoder encodeObject:_catIndexPosition forKey:kItemResultCatIndexPosition];
    [aCoder encodeObject:_customLayoutUpdate forKey:kItemResultCustomLayoutUpdate];
    [aCoder encodeObject:_visibility forKey:kItemResultVisibility];
    [aCoder encodeObject:_metaTitle forKey:kItemResultMetaTitle];
    [aCoder encodeObject:_blacknwhiteRelatedpos forKey:kItemResultBlacknwhiteRelatedpos];
    [aCoder encodeObject:_urlKey forKey:kItemResultUrlKey];
    [aCoder encodeObject:_pageLayout forKey:kItemResultPageLayout];
    [aCoder encodeObject:_blacknwhitePrsidebar forKey:kItemResultBlacknwhitePrsidebar];
    [aCoder encodeObject:_newsFromDate forKey:kItemResultNewsFromDate];
    [aCoder encodeObject:_specialToDate forKey:kItemResultSpecialToDate];
    [aCoder encodeObject:_optionsContainer forKey:kItemResultOptionsContainer];
    [aCoder encodeObject:_blacknwhitePrcolleteral forKey:kItemResultBlacknwhitePrcolleteral];
}

- (id)copyWithZone:(NSZone *)zone
{
    ItemResult *copy = [[ItemResult alloc] init];
    
    if (copy) {

        copy.typeId = [self.typeId copyWithZone:zone];
        copy.hasOptions = [self.hasOptions copyWithZone:zone];
        copy.metaKeyword = [self.metaKeyword copyWithZone:zone];
        copy.msrp = [self.msrp copyWithZone:zone];
        copy.customDesign = [self.customDesign copyWithZone:zone];
        copy.weight = [self.weight copyWithZone:zone];
        copy.sku = [self.sku copyWithZone:zone];
        copy.imageLabel = [self.imageLabel copyWithZone:zone];
        copy.isRecurring = [self.isRecurring copyWithZone:zone];
        copy.blacknwhitePrlayout = [self.blacknwhitePrlayout copyWithZone:zone];
        copy.thumbnail = [self.thumbnail copyWithZone:zone];
        copy.thumbnailLabel = [self.thumbnailLabel copyWithZone:zone];
        copy.blacknwhitePrmoreviews = [self.blacknwhitePrmoreviews copyWithZone:zone];
        copy.specialFromDate = [self.specialFromDate copyWithZone:zone];
        copy.urlPath = [self.urlPath copyWithZone:zone];
        copy.status = [self.status copyWithZone:zone];
        copy.blacknwhitePrrelatedcontent = [self.blacknwhitePrrelatedcontent copyWithZone:zone];
        copy.customDesignFrom = [self.customDesignFrom copyWithZone:zone];
        copy.resultDescription = [self.resultDescription copyWithZone:zone];
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
        copy.blacknwhitePrrelated = [self.blacknwhitePrrelated copyWithZone:zone];
        copy.newsToDate = [self.newsToDate copyWithZone:zone];
        copy.updatedAt = [self.updatedAt copyWithZone:zone];
        copy.name = [self.name copyWithZone:zone];
        copy.blacknwhitePrbrandlink = [self.blacknwhitePrbrandlink copyWithZone:zone];
        copy.stockItem = [self.stockItem copyWithZone:zone];
        copy.giftMessageAvailable = [self.giftMessageAvailable copyWithZone:zone];
        copy.isSalable = [self.isSalable copyWithZone:zone];
        copy.blacknwhitePrbrandtarget = [self.blacknwhitePrbrandtarget copyWithZone:zone];
        copy.msrpEnabled = [self.msrpEnabled copyWithZone:zone];
        copy.blacknwhitePrcustom = [self.blacknwhitePrcustom copyWithZone:zone];
        copy.countryOfManufacture = [self.countryOfManufacture copyWithZone:zone];
        copy.blacknwhitePrbrand = [self.blacknwhitePrbrand copyWithZone:zone];
        copy.createdAt = [self.createdAt copyWithZone:zone];
        copy.downPayment = [self.downPayment copyWithZone:zone];
        copy.installment = [self.installment copyWithZone:zone];
        copy.taxClassId = [self.taxClassId copyWithZone:zone];
        copy.smallImageLabel = [self.smallImageLabel copyWithZone:zone];
        copy.blacknwhitePrsku = [self.blacknwhitePrsku copyWithZone:zone];
        copy.metaDescription = [self.metaDescription copyWithZone:zone];
        copy.specialPrice = [self.specialPrice copyWithZone:zone];
        copy.blacknwhiteProductimg = [self.blacknwhiteProductimg copyWithZone:zone];
        copy.shortDescription = [self.shortDescription copyWithZone:zone];
        copy.entityId = [self.entityId copyWithZone:zone];
        copy.msrpDisplayActualPriceType = [self.msrpDisplayActualPriceType copyWithZone:zone];
        copy.entityTypeId = [self.entityTypeId copyWithZone:zone];
        copy.catIndexPosition = [self.catIndexPosition copyWithZone:zone];
        copy.customLayoutUpdate = [self.customLayoutUpdate copyWithZone:zone];
        copy.visibility = [self.visibility copyWithZone:zone];
        copy.metaTitle = [self.metaTitle copyWithZone:zone];
        copy.blacknwhiteRelatedpos = [self.blacknwhiteRelatedpos copyWithZone:zone];
        copy.urlKey = [self.urlKey copyWithZone:zone];
        copy.pageLayout = [self.pageLayout copyWithZone:zone];
        copy.blacknwhitePrsidebar = [self.blacknwhitePrsidebar copyWithZone:zone];
        copy.newsFromDate = [self.newsFromDate copyWithZone:zone];
        copy.specialToDate = [self.specialToDate copyWithZone:zone];
        copy.optionsContainer = [self.optionsContainer copyWithZone:zone];
        copy.blacknwhitePrcolleteral = [self.blacknwhitePrcolleteral copyWithZone:zone];
    }
    
    return copy;
}


@end
