// __DEBUG__
// __CLOSE_PRINT__
//
//  DentalFlossSessionConfig.h
//  NIM
//
//  Created by He on 2020/4/12.
//  Copyright © 2020 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERSessionConfig.h"
#import "CropConfig.h"

//: @class NIMMessage;
@class NIMMessage;
//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface USERThreadSessionConfig : USERSessionConfig
@interface DentalFlossSessionConfig : CropConfig

//: - (instancetype)initWithMessage:(NIMMessage *)message;
- (instancetype)initWithTeam:(NIMMessage *)message;

//: @end
@end

//: @interface USERThreadDataSourceProvider : NSObject <DisplayKitMessageProvider>
@interface PathProvider : NSObject <LabelSessionProvider>

//: @property (nonatomic,strong) NIMMessage *threadMessage;
@property (nonatomic,strong) NIMMessage *threadMessage;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
