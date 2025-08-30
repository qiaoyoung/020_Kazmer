// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageFlipMax.h
//  NIM
//
//  Created by chris on 15/7/8.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: typedef NS_ENUM(NSInteger, USERSearchLocalHistoryType){
typedef NS_ENUM(NSInteger, USERSearchLocalHistoryType){
    //: SearchLocalHistoryTypeEntrance,
    SearchLocalHistoryTypeEntrance,
    //: SearchLocalHistoryTypeContent,
    SearchLocalHistoryTypeContent,
//: };
};

//: @class USERSearchLocalHistoryObject;
@class MessageFlipMax;
//: @protocol USERSearchObjectRefresh <NSObject>
@protocol SizeAdd <NSObject>

//: - (void)refresh:(USERSearchLocalHistoryObject *)object;
- (void)blueDismiss:(MessageFlipMax *)object;

//: @end
@end

//: @interface USERSearchLocalHistoryObject : NSObject
@interface MessageFlipMax : NSObject

//: @property (nonatomic,assign) CGFloat uiHeight;
@property (nonatomic,assign) CGFloat uiHeight;

//: @property (nonatomic,readonly) NIMMessage *message;
@property (nonatomic,readonly) NIMMessage *message;

//: @property (nonatomic,copy) NSString *content;
@property (nonatomic,copy) NSString *content;

//: @property (nonatomic,assign) USERSearchLocalHistoryType type;
@property (nonatomic,assign) USERSearchLocalHistoryType type;

//: - (instancetype)initWithMessage:(NIMMessage *)message;
- (instancetype)initWithTeamStreetwiseMessage:(NIMMessage *)message;

//: @end
@end