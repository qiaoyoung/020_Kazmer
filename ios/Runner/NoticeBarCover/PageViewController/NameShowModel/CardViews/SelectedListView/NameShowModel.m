// __DEBUG__
// __CLOSE_PRINT__
//
//  NameShowModel.m
//  LEEAlertDemo
//
//  Created by 李响 on 2017/6/4.
//  Copyright © 2017年 lee. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SelectedListModel.h"
#import "NameShowModel.h"

//: @implementation SelectedListModel
@implementation NameShowModel

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithPast:(NSInteger)sid
                      //: Title:(NSString *)title{
                      utilizer:(NSString *)title{

    //: return [[SelectedListModel alloc] initWithSid:sid Title:title Context:nil];
    return [[NameShowModel alloc] initWithContainerKey:sid nearFit:title name:nil];
}

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithContainerKey:(NSInteger)sid
                      //: Title:(NSString *)title
                      nearFit:(NSString *)title
                    //: Context:(id)context{
                    name:(id)context{

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