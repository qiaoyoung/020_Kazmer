// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionLayout.h
// ButtonKit
//
//  Created by chris on 2016/11/8.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionConfigurator.h"
#import "MaxConfigurator.h"
//: #import "FFFSessionPrivateProtocol.h"
#import "FFFSessionPrivateProtocol.h"

//: @interface FFFSessionLayoutImpl : NSObject<NIMSessionLayout>
@interface NameImpl : NSObject<RepresentationEdge>

//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;

//: @property (nonatomic,strong) FFFInputView *inputView;
@property (nonatomic,strong) SignView *inputView;

//: - (instancetype)initWithSession:(NIMSession *)session
- (instancetype)initWithChromatic:(NIMSession *)session
                         //: config:(id<FFFSessionConfig>)sessionConfig;
                         config:(id<MessagePinImage>)sessionConfig;

//: @end
@end