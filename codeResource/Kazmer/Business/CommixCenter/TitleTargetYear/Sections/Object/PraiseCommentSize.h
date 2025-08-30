// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionInteractor.h
// Mortification
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "DisplaySessionPrivateProtocol.h"
#import "DisplaySessionPrivateProtocol.h"
//: #import "DisplaySessionConfigurateProtocol.h"
#import "DisplaySessionConfigurateProtocol.h"

//: @interface DisplaySessionInteractorImpl : NSObject<NIMSessionInteractor,NIMSessionLayoutDelegate>
@interface PraiseCommentSize : NSObject<TitleTotaleractor,InsideDelegate>

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithCrop:(NIMSession *)session
                         //: config:(id<DisplaySessionConfig>)sessionConfig;
                         dismiss:(id<ColorConfig>)sessionConfig;

//: @property(nonatomic,weak) id<NIMSessionInteractorDelegate> delegate;
@property(nonatomic,weak) id<SessionDisplay> delegate;

//: @property(nonatomic,strong) id<NIMSessionDataSource> dataSource;
@property(nonatomic,strong) id<AggregationSource> dataSource;

//: @property(nonatomic,strong) id<NIMSessionLayout> layout;
@property(nonatomic,strong) id<CancelLayout> layout;

//: @end
@end
