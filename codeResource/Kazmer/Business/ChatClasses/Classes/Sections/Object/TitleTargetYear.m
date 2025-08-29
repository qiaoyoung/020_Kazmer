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
//: #import "FFFSessionConfigurator.h"
#import "TitleTargetYear.h"
//: #import "FFFSessionMsgDatasource.h"
#import "BubbleCropView.h"
//: #import "FFFSessionInteractorImpl.h"
#import "PraiseCommentSize.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "FFFMessageModel.h"
#import "CleanDoing.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "FFFSessionInteractorImpl.h"
#import "PraiseCommentSize.h"
//: #import "FFFSessionDataSourceImpl.h"
#import "CommentControl.h"
//: #import "FFFSessionLayoutImpl.h"
#import "ValueAtImpl.h"
//: #import "FFFSessionTableAdapter.h"
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

//: @interface FFFSessionConfigurator()
@interface TitleTargetYear()

//: @property (nonatomic,strong) FFFSessionInteractorImpl *interactor;
@property (nonatomic,strong) PraiseCommentSize *interactor;

//: @property (nonatomic,strong) FFFSessionTableAdapter *tableAdapter;
@property (nonatomic,strong) FinancialCenterAdapter *tableAdapter;

//: @end
@end

//: @implementation FFFSessionConfigurator
@implementation TitleTargetYear

//: - (void)setup:(FFFSessionViewController *)vc
- (void)color:(ReplyViewController *)vc
{
    //: NIMSession *session = vc.session;
    NIMSession *session = vc.session;
    //: id<FFFSessionConfig> sessionConfig = vc.sessionConfig;
    id<ColorConfig> sessionConfig = vc.messageBar;
    //: UITableView *tableView = vc.tableView;
    UITableView *tableView = vc.tableView;
    //: FFFInputView *inputView = vc.sessionInputView;
    ContextInputView *inputView = vc.sessionInputView;

    //: FFFSessionDataSourceImpl *datasource = [[FFFSessionDataSourceImpl alloc] initWithSession:session config:sessionConfig];
    CommentControl *datasource = [[CommentControl alloc] initWithTip:session viewFileSessionWith:sessionConfig];
    //: FFFSessionLayoutImpl *layout = [[FFFSessionLayoutImpl alloc] initWithSession:session config:sessionConfig];
    ValueAtImpl *layout = [[ValueAtImpl alloc] initWithInfo:session specialSession:sessionConfig];
    //: layout.tableView = tableView;
    layout.tableView = tableView;
    //: layout.inputView = inputView;
    layout.inputView = inputView;


    //: _interactor = [[FFFSessionInteractorImpl alloc] initWithSession:session config:sessionConfig];
    _interactor = [[PraiseCommentSize alloc] initWithCrop:session dismiss:sessionConfig];
    //: _interactor.delegate = vc;
    _interactor.delegate = vc;
    //: _interactor.dataSource = datasource;
    _interactor.dataSource = datasource;
    //: _interactor.layout = layout;
    _interactor.layout = layout;

    //: [layout setDelegate:_interactor];
    [layout setKey:_interactor];

    //: _tableAdapter = [[FFFSessionTableAdapter alloc] init];
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