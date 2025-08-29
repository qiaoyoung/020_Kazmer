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
//: #import "FFFMessageModel.h"
#import "CleanDoing.h"

//: @interface FFFKitEvent : NSObject
@interface ToiletKitSession : NSObject

//: @property (nonatomic,strong) FFFMessageModel *messageModel;
@property (nonatomic,strong) CleanDoing *messageModel;

//: @property (nonatomic,strong) id data;
@property (nonatomic,strong) id data;

//: @property (nonatomic,copy) NSString *eventName;
@property (nonatomic,copy) NSString *eventName;

//: @end
@end




//: extern NSString *const FFFKitEventNameTapContent;
extern NSString *const userStateId;
//: extern NSString *const FFFKitEventNameTapLabelLink;
extern NSString *const show_contentData;
//: extern NSString *const FFFKitEventNameTapAudio;
extern NSString *const app_successDoingceMsg;

//: extern NSString *const FFFKitEventNameTapRepliedContent;
extern NSString *const kCommentSystemIdent;