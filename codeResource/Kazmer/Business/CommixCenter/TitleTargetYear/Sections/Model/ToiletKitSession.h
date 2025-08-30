// __DEBUG__
// __CLOSE_PRINT__
//
//  ToiletKitSession.h
// Mortification
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "DisplayMessageModel.h"
#import "CleanDoing.h"

//: @interface DisplayKitEvent : NSObject
@interface ToiletKitSession : NSObject

//: @property (nonatomic,strong) DisplayMessageModel *messageModel;
@property (nonatomic,strong) CleanDoing *messageModel;

//: @property (nonatomic,strong) id data;
@property (nonatomic,strong) id data;

//: @property (nonatomic,copy) NSString *eventName;
@property (nonatomic,copy) NSString *eventName;

//: @end
@end




//: extern NSString *const DisplayKitEventNameTapContent;
extern NSString *const userStateId;
//: extern NSString *const DisplayKitEventNameTapLabelLink;
extern NSString *const show_contentData;
//: extern NSString *const DisplayKitEventNameTapAudio;
extern NSString *const app_successDoingceMsg;

//: extern NSString *const DisplayKitEventNameTapRepliedContent;
extern NSString *const kCommentSystemIdent;
