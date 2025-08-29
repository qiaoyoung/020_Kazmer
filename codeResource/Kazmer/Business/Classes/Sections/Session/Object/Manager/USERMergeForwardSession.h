//
//  USERMergeForwardSession.h
//  NIM
//
//  Created by Netease on 2019/10/16.
//  Copyright © 2019 Netease. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^USERMergeForwardProcess)(CGFloat process);
typedef void(^USERMergeForwardResult)(NSError * _Nonnull error, NIMMessage * _Nonnull message);


@interface USERMergeForwardTask : NSObject

- (void)resume;

@end

@interface USERMergeForwardSession : NSObject

- (USERMergeForwardTask *)forwardTaskWithMessages:(NSMutableArray <NIMMessage *> *)messages
                                          process:(_Nullable USERMergeForwardProcess)process
                                       completion:(_Nullable USERMergeForwardResult)completion;

@end

NS_ASSUME_NONNULL_END
