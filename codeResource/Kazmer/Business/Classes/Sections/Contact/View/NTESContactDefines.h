// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESContactDefines.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__

//: @protocol NTESContactItemCollection <NSObject>
@protocol SearchRecentCollection <NSObject>
//: @required
@required
//显示的title名
//: - (NSString*)title;
- (NSString*)with;

//返回集合里的成员
//: - (NSArray*)members;
- (NSArray*)imaginationImage;

//重用id
//: - (NSString*)reuseId;
- (NSString*)remove;

//需要构造的cell类名
//: - (NSString*)cellName;
- (NSString*)info;

//: @end
@end

//: @protocol NTESContactItem<NSObject>
@protocol InventoryItem<NSObject>
//: @required
@required
//userId和Vcname必有一个有值，根据有值的状态push进不同的页面
//: - (NSString*)vcName;
- (NSString*)sumName;

//userId和Vcname必有一个有值，根据有值的状态push进不同的页面
//: - (NSString*)userId;
- (NSString*)distanceRandom;

//返回行高
//: - (CGFloat)uiHeight;
- (CGFloat)beyondBar;

//重用id
//: - (NSString*)reuseId;
- (NSString*)decide;

//需要构造的cell类名
//: - (NSString*)cellName;
- (NSString*)indexName;

//badge
//: - (NSString *)badge;
- (NSString *)broadcast;

//显示名
//: - (NSString *)nick;
- (NSString *)anTitleImage;

//占位图
//: - (UIImage *)icon;
- (UIImage *)passkey;

//头像url
//: - (NSString *)avatarUrl;
- (NSString *)gammaHydroxybutyrate;

//accessoryView
//: - (BOOL)showAccessoryView;
- (BOOL)languageView;

//: @optional
@optional
//: - (NSString *)selName;
- (NSString *)heatherMixture;


//: @end
@end

//: @protocol NTESContactCell <NSObject>
@protocol EdgeCover <NSObject>

//: - (void)refreshWithContactItem:(id<NTESContactItem>)item;
- (void)reloadOrIncidental:(id<InventoryItem>)item;

//: - (void)addDelegate:(id)delegate;
- (void)date:(id)delegate;

//: @end
@end







//: static const CGFloat NTESContactUtilRowHeight = 57;
static const CGFloat showMakeUrl = 57;//util类Cell行高
//: static const CGFloat NTESContactDataRowHeight = 50;
static const CGFloat noti_numberTitle = 50;//data类Cell行高
//: static const NSInteger NTESContactAvatarLeft = 10;
static const NSInteger app_frameTitle = 10;//没有选择框的时候，头像到左边的距离
//: static const NSInteger NTESContactAvatarAndAccessorySpacing = 10;
static const NSInteger showOriginPath = 10;//头像和选择框之间的距离