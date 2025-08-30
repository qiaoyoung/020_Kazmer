// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleTargetYear.m
// Mortification
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplaySessionConfigurator.h"
#import "TitleTargetYear.h"
//: #import "DisplaySessionMsgDatasource.h"
#import "BubbleCropView.h"
//: #import "DisplaySessionInteractorImpl.h"
#import "PraiseCommentSize.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "DisplayMessageModel.h"
#import "CleanDoing.h"
//: #import "NSString+Mortification.h"
#import "NSString+Mortification.h"
//: #import "DisplaySessionInteractorImpl.h"
#import "PraiseCommentSize.h"
//: #import "DisplaySessionDataSourceImpl.h"
#import "CommentControl.h"
//: #import "DisplaySessionLayoutImpl.h"
#import "ValueAtImpl.h"
//: #import "DisplaySessionTableAdapter.h"
#import "FinancialCenterAdapter.h"

/*
                                            ReplyViewController 类关系图
 
 
             .........................................................................
             .                                                                       .
             .                                                                       .
             .                                                                       .                  | ---> [NIMSessionDatasource]
             .                                                                       .
             .                                                       | ---> [TitleTotaleractor] -->  |
             .
             .                                                                                          | ---> [CancelLayout]
             .
             ↓
  [ReplyViewController]-------> [TitleTargetYear] -----> |
             |
             |
             |
             |
             ↓                                                       | ---> [FinancialCenterAdapter]
       [UITableView]                                                              .
            ↑                                                                     .
            .                                                                     .
            .                                                                     .
            .......................................................................
 */

//: @interface DisplaySessionConfigurator()
@interface TitleTargetYear()

//: @property (nonatomic,strong) DisplaySessionInteractorImpl *interactor;
@property (nonatomic,strong) PraiseCommentSize *interactor;

//: @property (nonatomic,strong) DisplaySessionTableAdapter *tableAdapter;
@property (nonatomic,strong) FinancialCenterAdapter *tableAdapter;

//: @end
@end

//: @implementation DisplaySessionConfigurator
@implementation TitleTargetYear

//: - (void)setup:(DisplaySessionViewController *)vc
- (void)color:(ReplyViewController *)vc
{
    //: NIMSession *session = vc.session;
    NIMSession *session = vc.session;
    //: id<DisplaySessionConfig> sessionConfig = vc.sessionConfig;
    id<ColorConfig> sessionConfig = vc.sessionConfig;
    //: UITableView *tableView = vc.tableView;
    UITableView *tableView = vc.tableView;
    //: DisplayInputView *inputView = vc.sessionInputView;
    ContextInputView *inputView = vc.sessionInputView;

    //: DisplaySessionDataSourceImpl *datasource = [[DisplaySessionDataSourceImpl alloc] initWithSession:session config:sessionConfig];
    CommentControl *datasource = [[CommentControl alloc] initWithTip:session viewFileSessionWith:sessionConfig];
    //: DisplaySessionLayoutImpl *layout = [[DisplaySessionLayoutImpl alloc] initWithSession:session config:sessionConfig];
    ValueAtImpl *layout = [[ValueAtImpl alloc] initWithInfo:session specialSession:sessionConfig];
    //: layout.tableView = tableView;
    layout.tableView = tableView;
    //: layout.inputView = inputView;
    layout.inputView = inputView;


    //: _interactor = [[DisplaySessionInteractorImpl alloc] initWithSession:session config:sessionConfig];
    _interactor = [[PraiseCommentSize alloc] initWithCrop:session dismiss:sessionConfig];
    //: _interactor.delegate = vc;
    _interactor.delegate = vc;
    //: _interactor.dataSource = datasource;
    _interactor.dataSource = datasource;
    //: _interactor.layout = layout;
    _interactor.layout = layout;

    //: [layout setDelegate:_interactor];
    [layout setDelegate:_interactor];

    //: _tableAdapter = [[DisplaySessionTableAdapter alloc] init];
    _tableAdapter = [[FinancialCenterAdapter alloc] init];
    //: _tableAdapter.interactor = _interactor;
    _tableAdapter.interactor = _interactor;
    //: _tableAdapter.delegate = vc;
    _tableAdapter.delegate = vc;
    //: vc.tableView.delegate = _tableAdapter;
    vc.tableView.delegate = _tableAdapter;
    //: vc.tableView.dataSource = _tableAdapter;
    vc.tableView.dataSource = _tableAdapter;


    //: [vc setInteractor:_interactor];
    [vc setInteractor:_interactor];
}


//: @end
@end
