// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFBaseSessionContentConfig.h
// Mortification
//
//  Created by amao on 9/15/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"

//: @protocol CCCSessionContentConfig <NSObject>
@protocol OnTopConfig <NSObject>
//: @required
@required

//: - (CGSize)contentSize:(CGFloat)cellWidth message:(NIMMessage *)message;
- (CGSize)step:(CGFloat)cellWidth menu:(NIMMessage *)message;

//: - (NSString *)cellContent:(NIMMessage *)message;
- (NSString *)viewTing:(NIMMessage *)message;

//: - (UIEdgeInsets)contentViewInsets:(NIMMessage *)message;
- (UIEdgeInsets)nameSearched:(NIMMessage *)message;


//: @optional
@optional
//: - (BOOL)enableBackgroundBubbleView:(NIMMessage *)message;
- (BOOL)scaling:(NIMMessage *)message;

//: @end
@end

//: @interface FFFSessionContentConfigFactory : NSObject
@interface SumryCrop : NSObject
//: + (instancetype)sharedFacotry;
+ (instancetype)transferFacotry;
//: - (id<CCCSessionContentConfig>)configBy:(NIMMessage *)message;
- (id<OnTopConfig>)standard:(NIMMessage *)message;
//: - (id<CCCSessionContentConfig>)replyConfigBy:(NIMMessage *)message;
- (id<OnTopConfig>)readTeam:(NIMMessage *)message;

//: @end
@end