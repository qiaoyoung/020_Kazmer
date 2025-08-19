// __DEBUG__
// __CLOSE_PRINT__
//
//  MaxConfigurator.m
// ButtonKit
//
//  Created by chris on 2016/11/7.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionConfigurator.h"
#import "MaxConfigurator.h"
//: #import "FFFSessionMsgDatasource.h"
#import "InfoDatasource.h"
//: #import "FFFSessionInteractorImpl.h"
#import "FindValueBackground.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFMessageModel.h"
#import "CentralProcessingUnitModel.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "FFFSessionInteractorImpl.h"
#import "FindValueBackground.h"
//: #import "FFFSessionDataSourceImpl.h"
#import "ViewImpl.h"
//: #import "FFFSessionLayoutImpl.h"
#import "NameImpl.h"
//: #import "FFFSessionTableAdapter.h"
#import "QuickHearingArrayAdapter.h"

/*
                                            CollectionViewController 类关系图
 
 
             .........................................................................
             .                                                                       .
             .                                                                       .
             .                                                                       .                  | ---> [NIMSessionDatasource]
             .                                                                       .
             .                                                       | ---> [StuffTotaleractor] -->  |
             .
             .                                                                                          | ---> [RepresentationEdge]
             .
             ↓
  [CollectionViewController]-------> [MaxConfigurator] -----> |
             |
             |
             |
             |
             ↓                                                       | ---> [QuickHearingArrayAdapter]
       [UITableView]                                                              .
            ↑                                                                     .
            .                                                                     .
            .                                                                     .
            .......................................................................
 */

//: @interface FFFSessionConfigurator()
@interface MaxConfigurator()

//: @property (nonatomic,strong) FFFSessionInteractorImpl *interactor;
@property (nonatomic,strong) FindValueBackground *interactor;

//: @property (nonatomic,strong) FFFSessionTableAdapter *tableAdapter;
@property (nonatomic,strong) QuickHearingArrayAdapter *tableAdapter;

//: @end
@end

//: @implementation FFFSessionConfigurator
@implementation MaxConfigurator

//: - (void)setup:(FFFSessionViewController *)vc
- (void)messageAt:(CollectionViewController *)vc
{
    //: NIMSession *session = vc.session;
    NIMSession *session = vc.session;
    //: id<FFFSessionConfig>sessionConfig = vc.sessionConfig;
    id<MessagePinImage>sessionConfig = vc.sessionConfig;
    //: UITableView *tableView = vc.tableView;
    UITableView *tableView = vc.tableView;
    //: FFFInputView *inputView = vc.sessionInputView;
    SignView *inputView = vc.sessionInputView;

    //: FFFSessionDataSourceImpl *datasource = [[FFFSessionDataSourceImpl alloc] initWithSession:session config:sessionConfig];
    ViewImpl *datasource = [[ViewImpl alloc] initWithValue:session pastSearched:sessionConfig];
    //: FFFSessionLayoutImpl *layout = [[FFFSessionLayoutImpl alloc] initWithSession:session config:sessionConfig];
    NameImpl *layout = [[NameImpl alloc] initWithChromatic:session config:sessionConfig];
    //: layout.tableView = tableView;
    layout.tableView = tableView;
    //: layout.inputView = inputView;
    layout.inputView = inputView;


    //: _interactor = [[FFFSessionInteractorImpl alloc] initWithSession:session config:sessionConfig];
    _interactor = [[FindValueBackground alloc] initWithBottom:session should:sessionConfig];
    //: _interactor.delegate = vc;
    _interactor.delegate = vc;
    //: _interactor.dataSource = datasource;
    _interactor.dataSource = datasource;
    //: _interactor.layout = layout;
    _interactor.layout = layout;

    //: [layout setDelegate:_interactor];
    [layout setDelegate:_interactor];

    //: _tableAdapter = [[FFFSessionTableAdapter alloc] init];
    _tableAdapter = [[QuickHearingArrayAdapter alloc] init];
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
