// __DEBUG__
// __CLOSE_PRINT__
//
//  ChangeViewControl.h
//  NIM
//
//  Created by Netease on 2019/10/17.
//  Copyright © 2019 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionMessageContentView.h"
#import "WithTopView.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: extern NSString *const NIMDemoEventNameOpenMergeMessage; 
extern NSString *const m_contentKey(NSString *value); //自定义消息打开合并消息

//: @interface USERSessionMultiRetweetContentView : FFFSessionMessageContentView
@interface ChangeViewControl : WithTopView

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END