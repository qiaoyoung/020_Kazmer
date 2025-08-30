// __DEBUG__
// __CLOSE_PRINT__
//
//  DisplayContactDefines.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

// __M_A_C_R_O__

//: @protocol NIMGroupMemberProtocol <NSObject>
@protocol DisplayRow <NSObject>

//: - (NSString *)groupTitle;
- (NSString *)roundPathTitle;

//: - (NSString *)memberId;
- (NSString *)littleLeagueTeam;

//: - (NSString *)showName;
- (NSString *)tabTitle;

//: - (NSString *)avatarUrlString;
- (NSString *)image;

//: - (UIImage *)avatarImage;
- (UIImage *)visualImage;

//: - (id)sortKey;
- (id)overFindDown;

//: @end
@end

//: @protocol NIMContactItemCollection <NSObject>
@protocol PositionCollection <NSObject>

//显示的title名
//: - (NSString*)title;
- (NSString*)viewSumTitle;

//返回集合里的成员
//: - (NSArray*)members;
- (NSArray*)green;

//重用id
//: - (NSString*)reuseId;
- (NSString*)streetwise;

//需要构造的cell类名
//: - (NSString*)cellName;
- (NSString*)touchStatus;

//: @end
@end




//: static const CGFloat NIMContactUtilRowHeight = 57;
static const CGFloat showTextContent = 57;//util类Cell行高
//: static const CGFloat NIMContactDataRowHeight = 50;
static const CGFloat user_stateInfoIdent = 50;//data类Cell行高
//: static const NSInteger NIMContactAccessoryLeft = 10;
static const NSInteger dreamInputStr = 10;//选择框到左边的距离
//: static const NSInteger NIMContactAvatarLeft = 15;
static const NSInteger dreamObjectData = 15;//没有选择框的时候，头像到左边的距离
//: static const NSInteger NIMContactAvatarAndAccessorySpacing = 10;
static const NSInteger dream_numberFormat = 10;//头像和选择框之间的距离
//: static const NSInteger NIMContactAvatarAndTitleSpacing = 20;
static const NSInteger user_sizeResultMsg = 20;//头像和文字之间的间距
