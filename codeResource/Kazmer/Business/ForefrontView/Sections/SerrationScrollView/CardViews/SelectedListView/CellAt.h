// __DEBUG__
// __CLOSE_PRINT__
//
//  CellAt.h
//  LEEAlertDemo
//
//  Created by 李响 on 2017/6/4.
//  Copyright © 2017年 lee. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>

//: @interface SelectedListModel : NSObject
@interface CellAt : NSObject

//: @property (nonatomic , strong ) id context;
@property (nonatomic , strong ) id context;

//: @property (nonatomic , assign ) NSInteger sid;
@property (nonatomic , assign ) NSInteger sid;

//: @property (nonatomic , copy ) NSString *title;
@property (nonatomic , copy ) NSString *title;

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithUserName:(NSInteger)sid
                      //: Title:(NSString *)title;
                      container:(NSString *)title;

//: - (instancetype)initWithSid:(NSInteger)sid
- (instancetype)initWithTargetView:(NSInteger)sid
                      //: Title:(NSString *)title
                      must:(NSString *)title
                    //: Context:(id)context;
                    disappear:(id)context;

//: @end
@end