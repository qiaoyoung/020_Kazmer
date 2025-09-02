// __DEBUG__
// __CLOSE_PRINT__
//
//  NIMSessionTableDelegate.h
// Mortification
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "CommixCenterProtocol.h"
#import "CommixCenterProtocol.h"
//: #import "CompartmentPathDelegate.h"
#import "CompartmentPathDelegate.h"

//: @interface DisplaySessionTableAdapter : NSObject<UITableViewDelegate,UITableViewDataSource>
@interface FinancialCenterAdapter : NSObject<UITableViewDelegate,UITableViewDataSource>

//: @property (nonatomic,weak) id<NIMSessionInteractor> interactor;
@property (nonatomic,weak) id<TitleTotaleractor> interactor;

//: @property (nonatomic,weak) id<DisplayMessageCellDelegate> delegate;
@property (nonatomic,weak) id<CompartmentPath> delegate;

//: @end
@end
