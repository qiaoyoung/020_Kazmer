// __DEBUG__
// __CLOSE_PRINT__
//
//  DisplayCardDataSourceProtocol.h
//  NIM
//
//  Created by chris on 15/3/5.
//  Copyright (c) 2015年 Netease. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>

// __M_A_C_R_O__

//: @protocol DisplayKitSelectCardData;
@protocol ChangeLength;

//: typedef void(^NIMTeamCardRowSelectedBlock)(id <DisplayKitSelectCardData> item);
typedef void(^NIMTeamCardRowSelectedBlock)(id <ChangeLength> item);

//: typedef NS_ENUM(NSInteger, NIMKitCardHeaderOpeator){
typedef NS_ENUM(NSInteger, NIMKitCardHeaderOpeator){
    //: CardHeaderOpeatorNone = 0,
    CardHeaderOpeatorNone = 0,
    //: CardHeaderOpeatorAdd = (1UL << 0),
    CardHeaderOpeatorAdd = (1UL << 0),
    //: CardHeaderOpeatorRemove = (1UL << 1),
    CardHeaderOpeatorRemove = (1UL << 1),
//: };
};

//: typedef NS_ENUM(NSInteger, NIMKitTeamCardRowItemType) {
typedef NS_ENUM(NSInteger, NIMKitTeamCardRowItemType) {
    //: TeamCardRowItemTypeCommon,
    TeamCardRowItemTypeCommon,
    //: TeamCardRowItemTypeTeamMember,
    TeamCardRowItemTypeTeamMember,
    //: TeamCardRowItemTypeRedButton,
    TeamCardRowItemTypeRedButton,
    //: TeamCardRowItemTypeBlueButton,
    TeamCardRowItemTypeBlueButton,
    //: TeamCardRowItemTypeSwitch,
    TeamCardRowItemTypeSwitch,
    //: TeamCardRowItemTypeSelected,
    TeamCardRowItemTypeSelected,
//: };
};

//: @protocol DisplayKitCardHeaderData <NSObject>
@protocol HalogenComment <NSObject>

//: - (NSString*)teamId;
- (NSString*)add;

//: - (NSString*)userId;
- (NSString*)findRead;

//: - (NIMTeamMemberType)userType;
- (NIMTeamMemberType)underSession;

//: - (void)setUserType:(NIMTeamMemberType)userType;
- (void)setUnderSession:(NIMTeamMemberType)userType;

//: - (NIMTeamType)teamType;
- (NIMTeamType)key;

//: - (UIImage*)imageNormal;
- (UIImage*)theoreticalAccount;

//: - (NSString*)title;
- (NSString*)secret;

//: - (NSString*)imageUrl;
- (NSString*)texts;

//: - (NSString*)inviterAccid;
- (NSString*)pressed;

//: - (BOOL)isMuted;
- (BOOL)cellMuted;

//: - (BOOL)isMyUserId;
- (BOOL)inputId;

//: @end
@end

//: @protocol DisplayKitSelectCardData <NSObject>
@protocol ChangeLength <NSObject>

//: - (id)value;
- (id)move;

//: - (NSString*)title;
- (NSString*)shouldAcross;

//: - (NSString*)img;
- (NSString*)complete;

//: - (BOOL)selected;
- (BOOL)systemManager;

//: - (void)setSelected:(BOOL)selected;
- (void)setSystemManager:(BOOL)selected;

//: @end
@end

//: @protocol USERCardBodyData <NSObject>
@protocol TranslateName <NSObject>

//: - (NSString*)title;
- (NSString*)sumeract;

//: - (id)value;
- (id)notColorOf;

//: - (NIMKitTeamCardRowItemType)type;
- (NIMKitTeamCardRowItemType)title;

//: - (CGFloat)rowHeight;
- (CGFloat)doing;

//: - (NIMTeamCardRowSelectedBlock)selectedBlock;
- (NIMTeamCardRowSelectedBlock)tab;

//: - (NSMutableArray <id <DisplayKitSelectCardData>> *)optionItems;
- (NSMutableArray <id <ChangeLength>> *)maturityDate;

//: @optional
@optional
//: - (NSString*)subTitle;
- (NSString*)media;

//: - (UIImage*)img;
- (UIImage*)name;

//: - (SEL)action;
- (SEL)showStyle;

//: - (BOOL)actionDisabled;
- (BOOL)rangeDisabled;

//: - (BOOL)switchOn;
- (BOOL)cut;

//: - (NSInteger)identify;
- (NSInteger)noteIdentify;

//: - (BOOL)disableUserInteraction;
- (BOOL)date;

//: @end
@end
