// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionLayout.h
// Mortification
//
//  Created by chris on 2016/11/8.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplaySessionConfigurator.h"
#import "TitleTargetYear.h"
//: #import "DisplaySessionPrivateProtocol.h"
#import "DisplaySessionPrivateProtocol.h"

//: @interface DisplaySessionLayoutImpl : NSObject<NIMSessionLayout>
@interface ValueAtImpl : NSObject<CancelLayout>

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;

//: @property (nonatomic,strong) DisplayInputView *inputView;
@property (nonatomic,strong) ContextInputView *inputView;

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithInfo:(NIMSession *)session
                         //: config:(id<DisplaySessionConfig>)sessionConfig;
                         specialSession:(id<ColorConfig>)sessionConfig;

//: @end
@end
