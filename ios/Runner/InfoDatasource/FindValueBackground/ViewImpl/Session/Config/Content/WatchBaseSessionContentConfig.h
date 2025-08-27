// __DEBUG__
// __CLOSE_PRINT__
//
//  WatchBaseSessionContentConfig.h
// ButtonKit
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "WatchGlobalMacro.h"
#import "WatchGlobalMacro.h"

//: @protocol CCCSessionContentConfig <NSObject>
@protocol TableAccumulationReplacement <NSObject>
//: @required
@required

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message;
- (CGSize)year:(CGFloat)cellWidth table:(NIMMessage *)message;

//: - (NSString *)cellContent:(NIMMessage *)message;
- (NSString *)textDistance:(NIMMessage *)message;

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message;
- (UIEdgeInsets)contentInsets:(NIMMessage *)message;


//: @optional
@optional
//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message;
- (BOOL)threadded:(NIMMessage *)message;

//: @end
@end

//: @interface WatchSessionContentConfigFactory : NSObject
@interface AccumulationFactory : NSObject
//: + (instancetype)sharedFacotry;
+ (instancetype)commonValue;
//: - (id<CCCSessionContentConfig>)configBy:(NIMMessage *)message;
- (id<TableAccumulationReplacement>)feel:(NIMMessage *)message;
//: - (id<CCCSessionContentConfig>)replyConfigBy:(NIMMessage *)message;
- (id<TableAccumulationReplacement>)title:(NIMMessage *)message;

//: @end
@end
