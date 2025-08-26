// __DEBUG__
// __CLOSE_PRINT__
//
//  NoticeSessionConfig.h
//  NIM
//
//  Created by He on 2020/4/12.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionConfig.h"
#import "ProgressNotice.h"

//: @class NIMMessage;
@class NIMMessage;
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface NTESThreadSessionConfig : NTESSessionConfig
@interface NoticeSessionConfig : ProgressNotice

//: - (instancetype)initWithMessage:(NIMMessage *)message;
- (instancetype)initWithMember:(NIMMessage *)message;

//: @end
@end

//: @interface NTESThreadDataSourceProvider : NSObject <WatchKitMessageProvider>
@interface MaxShowProvider : NSObject <ValueOld>

//: @property (nonatomic,strong) NIMMessage *threadMessage;
@property (nonatomic,strong) NIMMessage *threadMessage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
