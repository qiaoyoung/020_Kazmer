// __DEBUG__
// __CLOSE_PRINT__
//
//  USERContactDefines.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__

//: @protocol USERContactItemCollection <NSObject>
@protocol TeamCollection <NSObject>
//: @required
@required
//显示的title名
//: - (NSString*)title;
- (NSString*)with;

//返回集合里的成员
//: - (NSArray*)members;
- (NSArray*)session;

//重用id
//: - (NSString*)reuseId;
- (NSString*)addImage;

//需要构造的cell类名
//: - (NSString*)cellName;
- (NSString*)min;

//: @end
@end

//: @protocol USERContactItem<NSObject>
@protocol DoingAdd<NSObject>
//: @required
@required
//userId和Vcname必有一个有值，根据有值的状态push进不同的页面
//: - (NSString*)vcName;
- (NSString*)recordName;

//userId和Vcname必有一个有值，根据有值的状态push进不同的页面
//: - (NSString*)userId;
- (NSString*)findRead;

//返回行高
//: - (CGFloat)uiHeight;
- (CGFloat)rationalMotive;

//重用id
//: - (NSString*)reuseId;
- (NSString*)nameDoing;

//需要构造的cell类名
//: - (NSString*)cellName;
- (NSString*)background;

//badge
//: - (NSString *)badge;
- (NSString *)shoot;

//显示名
//: - (NSString *)nick;
- (NSString *)sessionCenter;

//占位图
//: - (UIImage *)icon;
- (UIImage *)file;

//头像url
//: - (NSString *)avatarUrl;
- (NSString *)sort;

//accessoryView
//: - (BOOL)showAccessoryView;
- (BOOL)by;

//: @optional
@optional
//: - (NSString *)selName;
- (NSString *)windowText;


//: @end
@end

//: @protocol USERContactCell <NSObject>
@protocol StandardCell <NSObject>

//: - (void)refreshWithContactItem:(id<USERContactItem>)item;
- (void)ofIndex:(id<DoingAdd>)item;

//: - (void)addDelegate:(id)delegate;
- (void)towardNotice:(id)delegate;

//: @end
@end







//: static const CGFloat USERContactUtilRowHeight = 57;
static const CGFloat app_cellStr = 57;//util类Cell行高
//: static const CGFloat USERContactDataRowHeight = 50;
static const CGFloat k_blockUrl = 50;//data类Cell行高
//: static const NSInteger USERContactAvatarLeft = 10;
static const NSInteger dream_linkUserFormat = 10;//没有选择框的时候，头像到左边的距离
//: static const NSInteger USERContactAvatarAndAccessorySpacing = 10;
static const NSInteger dreamToKey = 10;//头像和选择框之间的距离