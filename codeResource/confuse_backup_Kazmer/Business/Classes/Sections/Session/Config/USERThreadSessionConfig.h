//
//  USERThreadSessionConfig.h
//  NIM
//
//  Created by He on 2020/4/12.
//  Copyright © 2020 Netease. All rights reserved.
//

#import "USERSessionConfig.h"

@class NIMMessage;
NS_ASSUME_NONNULL_BEGIN

@interface USERThreadSessionConfig : USERSessionConfig

- (instancetype)initWithMessage:(NIMMessage *)message;

@end

@interface USERThreadDataSourceProvider : NSObject <FFFKitMessageProvider>

@property (nonatomic,strong) NIMMessage *threadMessage;

@end

NS_ASSUME_NONNULL_END
