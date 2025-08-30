// __DEBUG__
// __CLOSE_PRINT__
//
//  CellAt.m
//  LEEAlertDemo
//
//  Created by 李响 on 2017/6/4.
//  Copyright © 2017年 lee. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SelectedListModel.h"
#import "CellAt.h"

//: @implementation SelectedListModel
@implementation CellAt

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithUserName:(NSInteger)sid
                      //: Title:(NSString *)title{
                      container:(NSString *)title{

    //: return [[SelectedListModel alloc] initWithSid:sid Title:title Context:nil];
    return [[CellAt alloc] initWithTargetView:sid must:title disappear:nil];
}

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithTargetView:(NSInteger)sid
                      //: Title:(NSString *)title
                      must:(NSString *)title
                    //: Context:(id)context{
                    disappear:(id)context{

    //: self = [super init];
    self = [super init];

    //: if (self) {
    if (self) {

        //: _sid = sid;
        _sid = sid;

        //: _title = title;
        _title = title;

        //: _context = context;
        _context = context;
    }

    //: return self;
    return self;
}

//: @end
@end