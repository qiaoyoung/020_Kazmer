//
//  NIMClientAntispamResult.h
//  NIMSDK
//
//  Created by 陈吉力 on 2025/8/18.
//  Copyright © 2025 Netease. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NIMGlobalDefs.h"

NS_ASSUME_NONNULL_BEGIN

@interface NIMClientAntispamResult : NSObject
/// 客户端反垃圾文本命中后操作类型
@property (nonatomic, assign) NIMClientAntispamOperateType operateType;
/// 处理后的文本内容
@property (nonatomic, copy) NSString *replacedText;

@end

NS_ASSUME_NONNULL_END
