// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableDelegate.h
// ButtonKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "WatchSessionConfigurateProtocol.h"
#import "WatchSessionConfigurateProtocol.h"
//: #import "WatchMessageCellProtocol.h"
#import "WatchMessageCellProtocol.h"

//: @interface WatchSessionTableAdapter : NSObject<UITableViewDelegate,UITableViewDataSource>
@interface QuickHearingArrayAdapter : NSObject<UITableViewDelegate,UITableViewDataSource>

//: @property (nonatomic,weak) id<NIMSessionInteractor> interactor;
@property (nonatomic,weak) id<StuffTotaleractor> interactor;

//: @property (nonatomic,weak) id<WatchMessageCellDelegate> delegate;
@property (nonatomic,weak) id<ModeQueryTime> delegate;

//: @end
@end
