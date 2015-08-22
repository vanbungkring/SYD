//
//  CategoryResult.m
//
//  Created by Ratna Kumalasari on 8/22/15
//  Copyright (c) 2015 __MyCompanyName__. All rights reserved.
//

#import "CategoryResult.h"
#import "CategoryChild.h"


NSString *const kCategoryResultMeigeeCatSubcontent = @"meigee_cat_subcontent";
NSString *const kCategoryResultParentId = @"parent_id";
NSString *const kCategoryResultMoreviews = @"moreviews";
NSString *const kCategoryResultCustomDesign = @"custom_design";
NSString *const kCategoryResultMeigeeGridLayout = @"meigee_grid_layout";
NSString *const kCategoryResultAvailableSortBy = @"available_sort_by";
NSString *const kCategoryResultChildrenCount = @"children_count";
NSString *const kCategoryResultMeigeeCatLinktarget = @"meigee_cat_linktarget";
NSString *const kCategoryResultPosition = @"position";
NSString *const kCategoryResultMeigeeCatMenutype = @"meigee_cat_menutype";
NSString *const kCategoryResultMeigeeCatCustomlink = @"meigee_cat_customlink";
NSString *const kCategoryResultWishlist = @"wishlist";
NSString *const kCategoryResultMetaKeywords = @"meta_keywords";
NSString *const kCategoryResultAddtocart = @"addtocart";
NSString *const kCategoryResultUrlPath = @"url_path";
NSString *const kCategoryResultRatingAddReviewLink = @"rating_add_review_link";
NSString *const kCategoryResultMailtofriend = @"mailtofriend";
NSString *const kCategoryResultCustomDesignFrom = @"custom_design_from";
NSString *const kCategoryResultDisplayMode = @"display_mode";
NSString *const kCategoryResultDescription = @"description";
NSString *const kCategoryResultCustomDesignTo = @"custom_design_to";
NSString *const kCategoryResultMeigeeCatBgOption = @"meigee_cat_bg_option";
NSString *const kCategoryResultChild = @"child";
NSString *const kCategoryResultIsActive = @"is_active";
NSString *const kCategoryResultMeigeeCatBlockTop = @"meigee_cat_block_top";
NSString *const kCategoryResultAttributeSetId = @"attribute_set_id";
NSString *const kCategoryResultIncludeInMenu = @"include_in_menu";
NSString *const kCategoryResultUpdatedAt = @"updated_at";
NSString *const kCategoryResultMeigeeCatMaxQuantity = @"meigee_cat_max_quantity";
NSString *const kCategoryResultMeigeeCatBlockBottom = @"meigee_cat_block_bottom";
NSString *const kCategoryResultName = @"name";
NSString *const kCategoryResultRatingStars = @"rating_stars";
NSString *const kCategoryResultProductname = @"productname";
NSString *const kCategoryResultRatingCustLink = @"rating_cust_link";
NSString *const kCategoryResultCreatedAt = @"created_at";
NSString *const kCategoryResultProductprice = @"productprice";
NSString *const kCategoryResultCustomUseParentSettings = @"custom_use_parent_settings";
NSString *const kCategoryResultIsAnchor = @"is_anchor";
NSString *const kCategoryResultMetaDescription = @"meta_description";
NSString *const kCategoryResultFilterPriceRange = @"filter_price_range";
NSString *const kCategoryResultSidebarhider = @"sidebarhider";
NSString *const kCategoryResultMeigeeCatBlockRight = @"meigee_cat_block_right";
NSString *const kCategoryResultEntityId = @"entity_id";
NSString *const kCategoryResultLevel = @"level";
NSString *const kCategoryResultLandingPage = @"landing_page";
NSString *const kCategoryResultEntityTypeId = @"entity_type_id";
NSString *const kCategoryResultQuickview = @"quickview";
NSString *const kCategoryResultCompareproducts = @"compareproducts";
NSString *const kCategoryResultCustomApplyToProducts = @"custom_apply_to_products";
NSString *const kCategoryResultMeigeeCatCustomlabel = @"meigee_cat_customlabel";
NSString *const kCategoryResultMetaTitle = @"meta_title";
NSString *const kCategoryResultCustomLayoutUpdate = @"custom_layout_update";
NSString *const kCategoryResultUrlKey = @"url_key";
NSString *const kCategoryResultPageLayout = @"page_layout";
NSString *const kCategoryResultPath = @"path";
NSString *const kCategoryResultMeigeeCatRatio = @"meigee_cat_ratio";
NSString *const kCategoryResultMeigeeCatLabeltext = @"meigee_cat_labeltext";


@interface CategoryResult ()

- (id)objectOrNilForKey:(id)aKey fromDictionary:(NSDictionary *)dict;

@end

@implementation CategoryResult

@synthesize meigeeCatSubcontent = _meigeeCatSubcontent;
@synthesize parentId = _parentId;
@synthesize moreviews = _moreviews;
@synthesize customDesign = _customDesign;
@synthesize meigeeGridLayout = _meigeeGridLayout;
@synthesize availableSortBy = _availableSortBy;
@synthesize childrenCount = _childrenCount;
@synthesize meigeeCatLinktarget = _meigeeCatLinktarget;
@synthesize position = _position;
@synthesize meigeeCatMenutype = _meigeeCatMenutype;
@synthesize meigeeCatCustomlink = _meigeeCatCustomlink;
@synthesize wishlist = _wishlist;
@synthesize metaKeywords = _metaKeywords;
@synthesize addtocart = _addtocart;
@synthesize urlPath = _urlPath;
@synthesize ratingAddReviewLink = _ratingAddReviewLink;
@synthesize mailtofriend = _mailtofriend;
@synthesize customDesignFrom = _customDesignFrom;
@synthesize displayMode = _displayMode;
@synthesize resultDescription = _resultDescription;
@synthesize customDesignTo = _customDesignTo;
@synthesize meigeeCatBgOption = _meigeeCatBgOption;
@synthesize child = _child;
@synthesize isActive = _isActive;
@synthesize meigeeCatBlockTop = _meigeeCatBlockTop;
@synthesize attributeSetId = _attributeSetId;
@synthesize includeInMenu = _includeInMenu;
@synthesize updatedAt = _updatedAt;
@synthesize meigeeCatMaxQuantity = _meigeeCatMaxQuantity;
@synthesize meigeeCatBlockBottom = _meigeeCatBlockBottom;
@synthesize name = _name;
@synthesize ratingStars = _ratingStars;
@synthesize productname = _productname;
@synthesize ratingCustLink = _ratingCustLink;
@synthesize createdAt = _createdAt;
@synthesize productprice = _productprice;
@synthesize customUseParentSettings = _customUseParentSettings;
@synthesize isAnchor = _isAnchor;
@synthesize metaDescription = _metaDescription;
@synthesize filterPriceRange = _filterPriceRange;
@synthesize sidebarhider = _sidebarhider;
@synthesize meigeeCatBlockRight = _meigeeCatBlockRight;
@synthesize entityId = _entityId;
@synthesize level = _level;
@synthesize landingPage = _landingPage;
@synthesize entityTypeId = _entityTypeId;
@synthesize quickview = _quickview;
@synthesize compareproducts = _compareproducts;
@synthesize customApplyToProducts = _customApplyToProducts;
@synthesize meigeeCatCustomlabel = _meigeeCatCustomlabel;
@synthesize metaTitle = _metaTitle;
@synthesize customLayoutUpdate = _customLayoutUpdate;
@synthesize urlKey = _urlKey;
@synthesize pageLayout = _pageLayout;
@synthesize path = _path;
@synthesize meigeeCatRatio = _meigeeCatRatio;
@synthesize meigeeCatLabeltext = _meigeeCatLabeltext;


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
            self.meigeeCatSubcontent = [self objectOrNilForKey:kCategoryResultMeigeeCatSubcontent fromDictionary:dict];
            self.parentId = [self objectOrNilForKey:kCategoryResultParentId fromDictionary:dict];
            self.moreviews = [self objectOrNilForKey:kCategoryResultMoreviews fromDictionary:dict];
            self.customDesign = [self objectOrNilForKey:kCategoryResultCustomDesign fromDictionary:dict];
            self.meigeeGridLayout = [self objectOrNilForKey:kCategoryResultMeigeeGridLayout fromDictionary:dict];
            self.availableSortBy = [self objectOrNilForKey:kCategoryResultAvailableSortBy fromDictionary:dict];
            self.childrenCount = [self objectOrNilForKey:kCategoryResultChildrenCount fromDictionary:dict];
            self.meigeeCatLinktarget = [self objectOrNilForKey:kCategoryResultMeigeeCatLinktarget fromDictionary:dict];
            self.position = [self objectOrNilForKey:kCategoryResultPosition fromDictionary:dict];
            self.meigeeCatMenutype = [self objectOrNilForKey:kCategoryResultMeigeeCatMenutype fromDictionary:dict];
            self.meigeeCatCustomlink = [self objectOrNilForKey:kCategoryResultMeigeeCatCustomlink fromDictionary:dict];
            self.wishlist = [self objectOrNilForKey:kCategoryResultWishlist fromDictionary:dict];
            self.metaKeywords = [self objectOrNilForKey:kCategoryResultMetaKeywords fromDictionary:dict];
            self.addtocart = [self objectOrNilForKey:kCategoryResultAddtocart fromDictionary:dict];
            self.urlPath = [self objectOrNilForKey:kCategoryResultUrlPath fromDictionary:dict];
            self.ratingAddReviewLink = [self objectOrNilForKey:kCategoryResultRatingAddReviewLink fromDictionary:dict];
            self.mailtofriend = [self objectOrNilForKey:kCategoryResultMailtofriend fromDictionary:dict];
            self.customDesignFrom = [self objectOrNilForKey:kCategoryResultCustomDesignFrom fromDictionary:dict];
            self.displayMode = [self objectOrNilForKey:kCategoryResultDisplayMode fromDictionary:dict];
            self.resultDescription = [self objectOrNilForKey:kCategoryResultDescription fromDictionary:dict];
            self.customDesignTo = [self objectOrNilForKey:kCategoryResultCustomDesignTo fromDictionary:dict];
            self.meigeeCatBgOption = [self objectOrNilForKey:kCategoryResultMeigeeCatBgOption fromDictionary:dict];
            self.child = [CategoryChild modelObjectWithDictionary:[dict objectForKey:kCategoryResultChild]];
            self.isActive = [self objectOrNilForKey:kCategoryResultIsActive fromDictionary:dict];
            self.meigeeCatBlockTop = [self objectOrNilForKey:kCategoryResultMeigeeCatBlockTop fromDictionary:dict];
            self.attributeSetId = [self objectOrNilForKey:kCategoryResultAttributeSetId fromDictionary:dict];
            self.includeInMenu = [self objectOrNilForKey:kCategoryResultIncludeInMenu fromDictionary:dict];
            self.updatedAt = [self objectOrNilForKey:kCategoryResultUpdatedAt fromDictionary:dict];
            self.meigeeCatMaxQuantity = [self objectOrNilForKey:kCategoryResultMeigeeCatMaxQuantity fromDictionary:dict];
            self.meigeeCatBlockBottom = [self objectOrNilForKey:kCategoryResultMeigeeCatBlockBottom fromDictionary:dict];
            self.name = [self objectOrNilForKey:kCategoryResultName fromDictionary:dict];
            self.ratingStars = [self objectOrNilForKey:kCategoryResultRatingStars fromDictionary:dict];
            self.productname = [self objectOrNilForKey:kCategoryResultProductname fromDictionary:dict];
            self.ratingCustLink = [self objectOrNilForKey:kCategoryResultRatingCustLink fromDictionary:dict];
            self.createdAt = [self objectOrNilForKey:kCategoryResultCreatedAt fromDictionary:dict];
            self.productprice = [self objectOrNilForKey:kCategoryResultProductprice fromDictionary:dict];
            self.customUseParentSettings = [self objectOrNilForKey:kCategoryResultCustomUseParentSettings fromDictionary:dict];
            self.isAnchor = [self objectOrNilForKey:kCategoryResultIsAnchor fromDictionary:dict];
            self.metaDescription = [self objectOrNilForKey:kCategoryResultMetaDescription fromDictionary:dict];
            self.filterPriceRange = [self objectOrNilForKey:kCategoryResultFilterPriceRange fromDictionary:dict];
            self.sidebarhider = [self objectOrNilForKey:kCategoryResultSidebarhider fromDictionary:dict];
            self.meigeeCatBlockRight = [self objectOrNilForKey:kCategoryResultMeigeeCatBlockRight fromDictionary:dict];
            self.entityId = [self objectOrNilForKey:kCategoryResultEntityId fromDictionary:dict];
            self.level = [self objectOrNilForKey:kCategoryResultLevel fromDictionary:dict];
            self.landingPage = [self objectOrNilForKey:kCategoryResultLandingPage fromDictionary:dict];
            self.entityTypeId = [self objectOrNilForKey:kCategoryResultEntityTypeId fromDictionary:dict];
            self.quickview = [self objectOrNilForKey:kCategoryResultQuickview fromDictionary:dict];
            self.compareproducts = [self objectOrNilForKey:kCategoryResultCompareproducts fromDictionary:dict];
            self.customApplyToProducts = [self objectOrNilForKey:kCategoryResultCustomApplyToProducts fromDictionary:dict];
            self.meigeeCatCustomlabel = [self objectOrNilForKey:kCategoryResultMeigeeCatCustomlabel fromDictionary:dict];
            self.metaTitle = [self objectOrNilForKey:kCategoryResultMetaTitle fromDictionary:dict];
            self.customLayoutUpdate = [self objectOrNilForKey:kCategoryResultCustomLayoutUpdate fromDictionary:dict];
            self.urlKey = [self objectOrNilForKey:kCategoryResultUrlKey fromDictionary:dict];
            self.pageLayout = [self objectOrNilForKey:kCategoryResultPageLayout fromDictionary:dict];
            self.path = [self objectOrNilForKey:kCategoryResultPath fromDictionary:dict];
            self.meigeeCatRatio = [self objectOrNilForKey:kCategoryResultMeigeeCatRatio fromDictionary:dict];
            self.meigeeCatLabeltext = [self objectOrNilForKey:kCategoryResultMeigeeCatLabeltext fromDictionary:dict];

    }
    
    return self;
    
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *mutableDict = [NSMutableDictionary dictionary];
    [mutableDict setValue:self.meigeeCatSubcontent forKey:kCategoryResultMeigeeCatSubcontent];
    [mutableDict setValue:self.parentId forKey:kCategoryResultParentId];
    [mutableDict setValue:self.moreviews forKey:kCategoryResultMoreviews];
    [mutableDict setValue:self.customDesign forKey:kCategoryResultCustomDesign];
    [mutableDict setValue:self.meigeeGridLayout forKey:kCategoryResultMeigeeGridLayout];
    [mutableDict setValue:self.availableSortBy forKey:kCategoryResultAvailableSortBy];
    [mutableDict setValue:self.childrenCount forKey:kCategoryResultChildrenCount];
    [mutableDict setValue:self.meigeeCatLinktarget forKey:kCategoryResultMeigeeCatLinktarget];
    [mutableDict setValue:self.position forKey:kCategoryResultPosition];
    [mutableDict setValue:self.meigeeCatMenutype forKey:kCategoryResultMeigeeCatMenutype];
    [mutableDict setValue:self.meigeeCatCustomlink forKey:kCategoryResultMeigeeCatCustomlink];
    [mutableDict setValue:self.wishlist forKey:kCategoryResultWishlist];
    [mutableDict setValue:self.metaKeywords forKey:kCategoryResultMetaKeywords];
    [mutableDict setValue:self.addtocart forKey:kCategoryResultAddtocart];
    [mutableDict setValue:self.urlPath forKey:kCategoryResultUrlPath];
    [mutableDict setValue:self.ratingAddReviewLink forKey:kCategoryResultRatingAddReviewLink];
    [mutableDict setValue:self.mailtofriend forKey:kCategoryResultMailtofriend];
    [mutableDict setValue:self.customDesignFrom forKey:kCategoryResultCustomDesignFrom];
    [mutableDict setValue:self.displayMode forKey:kCategoryResultDisplayMode];
    [mutableDict setValue:self.resultDescription forKey:kCategoryResultDescription];
    [mutableDict setValue:self.customDesignTo forKey:kCategoryResultCustomDesignTo];
    [mutableDict setValue:self.meigeeCatBgOption forKey:kCategoryResultMeigeeCatBgOption];
    [mutableDict setValue:[self.child dictionaryRepresentation] forKey:kCategoryResultChild];
    [mutableDict setValue:self.isActive forKey:kCategoryResultIsActive];
    [mutableDict setValue:self.meigeeCatBlockTop forKey:kCategoryResultMeigeeCatBlockTop];
    [mutableDict setValue:self.attributeSetId forKey:kCategoryResultAttributeSetId];
    [mutableDict setValue:self.includeInMenu forKey:kCategoryResultIncludeInMenu];
    [mutableDict setValue:self.updatedAt forKey:kCategoryResultUpdatedAt];
    [mutableDict setValue:self.meigeeCatMaxQuantity forKey:kCategoryResultMeigeeCatMaxQuantity];
    [mutableDict setValue:self.meigeeCatBlockBottom forKey:kCategoryResultMeigeeCatBlockBottom];
    [mutableDict setValue:self.name forKey:kCategoryResultName];
    [mutableDict setValue:self.ratingStars forKey:kCategoryResultRatingStars];
    [mutableDict setValue:self.productname forKey:kCategoryResultProductname];
    [mutableDict setValue:self.ratingCustLink forKey:kCategoryResultRatingCustLink];
    [mutableDict setValue:self.createdAt forKey:kCategoryResultCreatedAt];
    [mutableDict setValue:self.productprice forKey:kCategoryResultProductprice];
    [mutableDict setValue:self.customUseParentSettings forKey:kCategoryResultCustomUseParentSettings];
    [mutableDict setValue:self.isAnchor forKey:kCategoryResultIsAnchor];
    [mutableDict setValue:self.metaDescription forKey:kCategoryResultMetaDescription];
    [mutableDict setValue:self.filterPriceRange forKey:kCategoryResultFilterPriceRange];
    [mutableDict setValue:self.sidebarhider forKey:kCategoryResultSidebarhider];
    [mutableDict setValue:self.meigeeCatBlockRight forKey:kCategoryResultMeigeeCatBlockRight];
    [mutableDict setValue:self.entityId forKey:kCategoryResultEntityId];
    [mutableDict setValue:self.level forKey:kCategoryResultLevel];
    [mutableDict setValue:self.landingPage forKey:kCategoryResultLandingPage];
    [mutableDict setValue:self.entityTypeId forKey:kCategoryResultEntityTypeId];
    [mutableDict setValue:self.quickview forKey:kCategoryResultQuickview];
    [mutableDict setValue:self.compareproducts forKey:kCategoryResultCompareproducts];
    [mutableDict setValue:self.customApplyToProducts forKey:kCategoryResultCustomApplyToProducts];
    [mutableDict setValue:self.meigeeCatCustomlabel forKey:kCategoryResultMeigeeCatCustomlabel];
    [mutableDict setValue:self.metaTitle forKey:kCategoryResultMetaTitle];
    [mutableDict setValue:self.customLayoutUpdate forKey:kCategoryResultCustomLayoutUpdate];
    [mutableDict setValue:self.urlKey forKey:kCategoryResultUrlKey];
    [mutableDict setValue:self.pageLayout forKey:kCategoryResultPageLayout];
    [mutableDict setValue:self.path forKey:kCategoryResultPath];
    [mutableDict setValue:self.meigeeCatRatio forKey:kCategoryResultMeigeeCatRatio];
    [mutableDict setValue:self.meigeeCatLabeltext forKey:kCategoryResultMeigeeCatLabeltext];

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

    self.meigeeCatSubcontent = [aDecoder decodeObjectForKey:kCategoryResultMeigeeCatSubcontent];
    self.parentId = [aDecoder decodeObjectForKey:kCategoryResultParentId];
    self.moreviews = [aDecoder decodeObjectForKey:kCategoryResultMoreviews];
    self.customDesign = [aDecoder decodeObjectForKey:kCategoryResultCustomDesign];
    self.meigeeGridLayout = [aDecoder decodeObjectForKey:kCategoryResultMeigeeGridLayout];
    self.availableSortBy = [aDecoder decodeObjectForKey:kCategoryResultAvailableSortBy];
    self.childrenCount = [aDecoder decodeObjectForKey:kCategoryResultChildrenCount];
    self.meigeeCatLinktarget = [aDecoder decodeObjectForKey:kCategoryResultMeigeeCatLinktarget];
    self.position = [aDecoder decodeObjectForKey:kCategoryResultPosition];
    self.meigeeCatMenutype = [aDecoder decodeObjectForKey:kCategoryResultMeigeeCatMenutype];
    self.meigeeCatCustomlink = [aDecoder decodeObjectForKey:kCategoryResultMeigeeCatCustomlink];
    self.wishlist = [aDecoder decodeObjectForKey:kCategoryResultWishlist];
    self.metaKeywords = [aDecoder decodeObjectForKey:kCategoryResultMetaKeywords];
    self.addtocart = [aDecoder decodeObjectForKey:kCategoryResultAddtocart];
    self.urlPath = [aDecoder decodeObjectForKey:kCategoryResultUrlPath];
    self.ratingAddReviewLink = [aDecoder decodeObjectForKey:kCategoryResultRatingAddReviewLink];
    self.mailtofriend = [aDecoder decodeObjectForKey:kCategoryResultMailtofriend];
    self.customDesignFrom = [aDecoder decodeObjectForKey:kCategoryResultCustomDesignFrom];
    self.displayMode = [aDecoder decodeObjectForKey:kCategoryResultDisplayMode];
    self.resultDescription = [aDecoder decodeObjectForKey:kCategoryResultDescription];
    self.customDesignTo = [aDecoder decodeObjectForKey:kCategoryResultCustomDesignTo];
    self.meigeeCatBgOption = [aDecoder decodeObjectForKey:kCategoryResultMeigeeCatBgOption];
    self.child = [aDecoder decodeObjectForKey:kCategoryResultChild];
    self.isActive = [aDecoder decodeObjectForKey:kCategoryResultIsActive];
    self.meigeeCatBlockTop = [aDecoder decodeObjectForKey:kCategoryResultMeigeeCatBlockTop];
    self.attributeSetId = [aDecoder decodeObjectForKey:kCategoryResultAttributeSetId];
    self.includeInMenu = [aDecoder decodeObjectForKey:kCategoryResultIncludeInMenu];
    self.updatedAt = [aDecoder decodeObjectForKey:kCategoryResultUpdatedAt];
    self.meigeeCatMaxQuantity = [aDecoder decodeObjectForKey:kCategoryResultMeigeeCatMaxQuantity];
    self.meigeeCatBlockBottom = [aDecoder decodeObjectForKey:kCategoryResultMeigeeCatBlockBottom];
    self.name = [aDecoder decodeObjectForKey:kCategoryResultName];
    self.ratingStars = [aDecoder decodeObjectForKey:kCategoryResultRatingStars];
    self.productname = [aDecoder decodeObjectForKey:kCategoryResultProductname];
    self.ratingCustLink = [aDecoder decodeObjectForKey:kCategoryResultRatingCustLink];
    self.createdAt = [aDecoder decodeObjectForKey:kCategoryResultCreatedAt];
    self.productprice = [aDecoder decodeObjectForKey:kCategoryResultProductprice];
    self.customUseParentSettings = [aDecoder decodeObjectForKey:kCategoryResultCustomUseParentSettings];
    self.isAnchor = [aDecoder decodeObjectForKey:kCategoryResultIsAnchor];
    self.metaDescription = [aDecoder decodeObjectForKey:kCategoryResultMetaDescription];
    self.filterPriceRange = [aDecoder decodeObjectForKey:kCategoryResultFilterPriceRange];
    self.sidebarhider = [aDecoder decodeObjectForKey:kCategoryResultSidebarhider];
    self.meigeeCatBlockRight = [aDecoder decodeObjectForKey:kCategoryResultMeigeeCatBlockRight];
    self.entityId = [aDecoder decodeObjectForKey:kCategoryResultEntityId];
    self.level = [aDecoder decodeObjectForKey:kCategoryResultLevel];
    self.landingPage = [aDecoder decodeObjectForKey:kCategoryResultLandingPage];
    self.entityTypeId = [aDecoder decodeObjectForKey:kCategoryResultEntityTypeId];
    self.quickview = [aDecoder decodeObjectForKey:kCategoryResultQuickview];
    self.compareproducts = [aDecoder decodeObjectForKey:kCategoryResultCompareproducts];
    self.customApplyToProducts = [aDecoder decodeObjectForKey:kCategoryResultCustomApplyToProducts];
    self.meigeeCatCustomlabel = [aDecoder decodeObjectForKey:kCategoryResultMeigeeCatCustomlabel];
    self.metaTitle = [aDecoder decodeObjectForKey:kCategoryResultMetaTitle];
    self.customLayoutUpdate = [aDecoder decodeObjectForKey:kCategoryResultCustomLayoutUpdate];
    self.urlKey = [aDecoder decodeObjectForKey:kCategoryResultUrlKey];
    self.pageLayout = [aDecoder decodeObjectForKey:kCategoryResultPageLayout];
    self.path = [aDecoder decodeObjectForKey:kCategoryResultPath];
    self.meigeeCatRatio = [aDecoder decodeObjectForKey:kCategoryResultMeigeeCatRatio];
    self.meigeeCatLabeltext = [aDecoder decodeObjectForKey:kCategoryResultMeigeeCatLabeltext];
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{

    [aCoder encodeObject:_meigeeCatSubcontent forKey:kCategoryResultMeigeeCatSubcontent];
    [aCoder encodeObject:_parentId forKey:kCategoryResultParentId];
    [aCoder encodeObject:_moreviews forKey:kCategoryResultMoreviews];
    [aCoder encodeObject:_customDesign forKey:kCategoryResultCustomDesign];
    [aCoder encodeObject:_meigeeGridLayout forKey:kCategoryResultMeigeeGridLayout];
    [aCoder encodeObject:_availableSortBy forKey:kCategoryResultAvailableSortBy];
    [aCoder encodeObject:_childrenCount forKey:kCategoryResultChildrenCount];
    [aCoder encodeObject:_meigeeCatLinktarget forKey:kCategoryResultMeigeeCatLinktarget];
    [aCoder encodeObject:_position forKey:kCategoryResultPosition];
    [aCoder encodeObject:_meigeeCatMenutype forKey:kCategoryResultMeigeeCatMenutype];
    [aCoder encodeObject:_meigeeCatCustomlink forKey:kCategoryResultMeigeeCatCustomlink];
    [aCoder encodeObject:_wishlist forKey:kCategoryResultWishlist];
    [aCoder encodeObject:_metaKeywords forKey:kCategoryResultMetaKeywords];
    [aCoder encodeObject:_addtocart forKey:kCategoryResultAddtocart];
    [aCoder encodeObject:_urlPath forKey:kCategoryResultUrlPath];
    [aCoder encodeObject:_ratingAddReviewLink forKey:kCategoryResultRatingAddReviewLink];
    [aCoder encodeObject:_mailtofriend forKey:kCategoryResultMailtofriend];
    [aCoder encodeObject:_customDesignFrom forKey:kCategoryResultCustomDesignFrom];
    [aCoder encodeObject:_displayMode forKey:kCategoryResultDisplayMode];
    [aCoder encodeObject:_resultDescription forKey:kCategoryResultDescription];
    [aCoder encodeObject:_customDesignTo forKey:kCategoryResultCustomDesignTo];
    [aCoder encodeObject:_meigeeCatBgOption forKey:kCategoryResultMeigeeCatBgOption];
    [aCoder encodeObject:_child forKey:kCategoryResultChild];
    [aCoder encodeObject:_isActive forKey:kCategoryResultIsActive];
    [aCoder encodeObject:_meigeeCatBlockTop forKey:kCategoryResultMeigeeCatBlockTop];
    [aCoder encodeObject:_attributeSetId forKey:kCategoryResultAttributeSetId];
    [aCoder encodeObject:_includeInMenu forKey:kCategoryResultIncludeInMenu];
    [aCoder encodeObject:_updatedAt forKey:kCategoryResultUpdatedAt];
    [aCoder encodeObject:_meigeeCatMaxQuantity forKey:kCategoryResultMeigeeCatMaxQuantity];
    [aCoder encodeObject:_meigeeCatBlockBottom forKey:kCategoryResultMeigeeCatBlockBottom];
    [aCoder encodeObject:_name forKey:kCategoryResultName];
    [aCoder encodeObject:_ratingStars forKey:kCategoryResultRatingStars];
    [aCoder encodeObject:_productname forKey:kCategoryResultProductname];
    [aCoder encodeObject:_ratingCustLink forKey:kCategoryResultRatingCustLink];
    [aCoder encodeObject:_createdAt forKey:kCategoryResultCreatedAt];
    [aCoder encodeObject:_productprice forKey:kCategoryResultProductprice];
    [aCoder encodeObject:_customUseParentSettings forKey:kCategoryResultCustomUseParentSettings];
    [aCoder encodeObject:_isAnchor forKey:kCategoryResultIsAnchor];
    [aCoder encodeObject:_metaDescription forKey:kCategoryResultMetaDescription];
    [aCoder encodeObject:_filterPriceRange forKey:kCategoryResultFilterPriceRange];
    [aCoder encodeObject:_sidebarhider forKey:kCategoryResultSidebarhider];
    [aCoder encodeObject:_meigeeCatBlockRight forKey:kCategoryResultMeigeeCatBlockRight];
    [aCoder encodeObject:_entityId forKey:kCategoryResultEntityId];
    [aCoder encodeObject:_level forKey:kCategoryResultLevel];
    [aCoder encodeObject:_landingPage forKey:kCategoryResultLandingPage];
    [aCoder encodeObject:_entityTypeId forKey:kCategoryResultEntityTypeId];
    [aCoder encodeObject:_quickview forKey:kCategoryResultQuickview];
    [aCoder encodeObject:_compareproducts forKey:kCategoryResultCompareproducts];
    [aCoder encodeObject:_customApplyToProducts forKey:kCategoryResultCustomApplyToProducts];
    [aCoder encodeObject:_meigeeCatCustomlabel forKey:kCategoryResultMeigeeCatCustomlabel];
    [aCoder encodeObject:_metaTitle forKey:kCategoryResultMetaTitle];
    [aCoder encodeObject:_customLayoutUpdate forKey:kCategoryResultCustomLayoutUpdate];
    [aCoder encodeObject:_urlKey forKey:kCategoryResultUrlKey];
    [aCoder encodeObject:_pageLayout forKey:kCategoryResultPageLayout];
    [aCoder encodeObject:_path forKey:kCategoryResultPath];
    [aCoder encodeObject:_meigeeCatRatio forKey:kCategoryResultMeigeeCatRatio];
    [aCoder encodeObject:_meigeeCatLabeltext forKey:kCategoryResultMeigeeCatLabeltext];
}

- (id)copyWithZone:(NSZone *)zone
{
    CategoryResult *copy = [[CategoryResult alloc] init];
    
    if (copy) {

        copy.meigeeCatSubcontent = [self.meigeeCatSubcontent copyWithZone:zone];
        copy.parentId = [self.parentId copyWithZone:zone];
        copy.moreviews = [self.moreviews copyWithZone:zone];
        copy.customDesign = [self.customDesign copyWithZone:zone];
        copy.meigeeGridLayout = [self.meigeeGridLayout copyWithZone:zone];
        copy.availableSortBy = [self.availableSortBy copyWithZone:zone];
        copy.childrenCount = [self.childrenCount copyWithZone:zone];
        copy.meigeeCatLinktarget = [self.meigeeCatLinktarget copyWithZone:zone];
        copy.position = [self.position copyWithZone:zone];
        copy.meigeeCatMenutype = [self.meigeeCatMenutype copyWithZone:zone];
        copy.meigeeCatCustomlink = [self.meigeeCatCustomlink copyWithZone:zone];
        copy.wishlist = [self.wishlist copyWithZone:zone];
        copy.metaKeywords = [self.metaKeywords copyWithZone:zone];
        copy.addtocart = [self.addtocart copyWithZone:zone];
        copy.urlPath = [self.urlPath copyWithZone:zone];
        copy.ratingAddReviewLink = [self.ratingAddReviewLink copyWithZone:zone];
        copy.mailtofriend = [self.mailtofriend copyWithZone:zone];
        copy.customDesignFrom = [self.customDesignFrom copyWithZone:zone];
        copy.displayMode = [self.displayMode copyWithZone:zone];
        copy.resultDescription = [self.resultDescription copyWithZone:zone];
        copy.customDesignTo = [self.customDesignTo copyWithZone:zone];
        copy.meigeeCatBgOption = [self.meigeeCatBgOption copyWithZone:zone];
        copy.child = [self.child copyWithZone:zone];
        copy.isActive = [self.isActive copyWithZone:zone];
        copy.meigeeCatBlockTop = [self.meigeeCatBlockTop copyWithZone:zone];
        copy.attributeSetId = [self.attributeSetId copyWithZone:zone];
        copy.includeInMenu = [self.includeInMenu copyWithZone:zone];
        copy.updatedAt = [self.updatedAt copyWithZone:zone];
        copy.meigeeCatMaxQuantity = [self.meigeeCatMaxQuantity copyWithZone:zone];
        copy.meigeeCatBlockBottom = [self.meigeeCatBlockBottom copyWithZone:zone];
        copy.name = [self.name copyWithZone:zone];
        copy.ratingStars = [self.ratingStars copyWithZone:zone];
        copy.productname = [self.productname copyWithZone:zone];
        copy.ratingCustLink = [self.ratingCustLink copyWithZone:zone];
        copy.createdAt = [self.createdAt copyWithZone:zone];
        copy.productprice = [self.productprice copyWithZone:zone];
        copy.customUseParentSettings = [self.customUseParentSettings copyWithZone:zone];
        copy.isAnchor = [self.isAnchor copyWithZone:zone];
        copy.metaDescription = [self.metaDescription copyWithZone:zone];
        copy.filterPriceRange = [self.filterPriceRange copyWithZone:zone];
        copy.sidebarhider = [self.sidebarhider copyWithZone:zone];
        copy.meigeeCatBlockRight = [self.meigeeCatBlockRight copyWithZone:zone];
        copy.entityId = [self.entityId copyWithZone:zone];
        copy.level = [self.level copyWithZone:zone];
        copy.landingPage = [self.landingPage copyWithZone:zone];
        copy.entityTypeId = [self.entityTypeId copyWithZone:zone];
        copy.quickview = [self.quickview copyWithZone:zone];
        copy.compareproducts = [self.compareproducts copyWithZone:zone];
        copy.customApplyToProducts = [self.customApplyToProducts copyWithZone:zone];
        copy.meigeeCatCustomlabel = [self.meigeeCatCustomlabel copyWithZone:zone];
        copy.metaTitle = [self.metaTitle copyWithZone:zone];
        copy.customLayoutUpdate = [self.customLayoutUpdate copyWithZone:zone];
        copy.urlKey = [self.urlKey copyWithZone:zone];
        copy.pageLayout = [self.pageLayout copyWithZone:zone];
        copy.path = [self.path copyWithZone:zone];
        copy.meigeeCatRatio = [self.meigeeCatRatio copyWithZone:zone];
        copy.meigeeCatLabeltext = [self.meigeeCatLabeltext copyWithZone:zone];
    }
    
    return copy;
}


@end
