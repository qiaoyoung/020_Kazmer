// __DEBUG__
// __CLOSE_PRINT__
//
//  CoverShowEvent.h
// ButtonKit
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
#import "CentralProcessingUnitModel.h"

//: @interface FFFKitEvent : NSObject
@interface CoverShowEvent : NSObject

//: @property (nonatomic,copy) NSString *eventName;
@property (nonatomic,copy) NSString *eventName;

//: @property (nonatomic,strong) FFFMessageModel *messageModel;
@property (nonatomic,strong) CentralProcessingUnitModel *messageModel;

//: @property (nonatomic,strong) id data;
@property (nonatomic,strong) id data;

//: @end
@end




//: extern NSString *const FFFKitEventNameTapContent;
extern NSString *const appCommentStr;
//: extern NSString *const FFFKitEventNameTapLabelLink;
extern NSString *const dream_topMessage;
//: extern NSString *const FFFKitEventNameTapAudio;
extern NSString *const m_originalMsg;

//: extern NSString *const FFFKitEventNameTapRepliedContent;
extern NSString *const kKitValue;