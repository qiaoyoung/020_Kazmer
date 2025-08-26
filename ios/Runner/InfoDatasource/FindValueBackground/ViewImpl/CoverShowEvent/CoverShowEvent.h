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
//: #import "WatchMessageModel.h"
#import "CentralProcessingUnitModel.h"

//: @interface WatchKitEvent : NSObject
@interface CoverShowEvent : NSObject

//: @property (nonatomic,copy) NSString *eventName;
@property (nonatomic,copy) NSString *eventName;

//: @property (nonatomic,strong) WatchMessageModel *messageModel;
@property (nonatomic,strong) CentralProcessingUnitModel *messageModel;

//: @property (nonatomic,strong) id data;
@property (nonatomic,strong) id data;

//: @end
@end




//: extern NSString *const WatchKitEventNameTapContent;
extern NSString *const appCommentStr;
//: extern NSString *const WatchKitEventNameTapLabelLink;
extern NSString *const dream_topMessage;
//: extern NSString *const WatchKitEventNameTapAudio;
extern NSString *const m_originalMsg;

//: extern NSString *const WatchKitEventNameTapRepliedContent;
extern NSString *const kKitValue;
