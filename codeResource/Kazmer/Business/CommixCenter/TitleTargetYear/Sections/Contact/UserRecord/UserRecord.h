// __DEBUG__
// __CLOSE_PRINT__
//
//  UserRecord.h
// Mortification
//
//  Created by emily on 2017/7/26.
//  Copyright © 2017年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <NIMSDK/NIMSDK.h>
#import <NIMSDK/NIMSDK.h>
//: #import "DisplayContactDefines.h"
#import "DisplayContactDefines.h"

//: @interface UserGroupedData : NSObject
@interface UserRecord : NSObject

//: @property(nonatomic, strong) NSArray *members;
@property(nonatomic, strong) NSArray *members;

//: @property(nonatomic, strong) NSArray *specialMembers;
@property(nonatomic, strong) NSArray *specialMembers;
//联系人title
//: @property(nonatomic, readonly) NSArray *sectionTitles;
@property(nonatomic, readonly) NSArray *sectionTitles;
//联系人姓名
//: @property(nonatomic, readonly) NSDictionary *contentDic;
@property(nonatomic, readonly) NSDictionary *contentDic;

//: @end
@end
