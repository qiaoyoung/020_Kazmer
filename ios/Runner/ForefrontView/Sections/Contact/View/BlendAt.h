// __DEBUG__
// __CLOSE_PRINT__
//
//  BlendAt.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import "USERContactDefines.h"
#import "USERContactDefines.h"
//: #import "USERGroupedContacts.h"
#import "MessageDataCollection.h"

//: @interface USERContactUtilItem : NSObject<USERContactItemCollection>
@interface BlendAt : NSObject<TeamCollection>

//: @property (nonatomic,copy) NSArray *members;
@property (nonatomic,copy) NSArray *members;

//: @end
@end

//: @interface USERContactUtilMember : NSObject<USERContactItem, USERGroupMemberProtocol>
@interface MakeMember : NSObject<DoingAdd, CancelProtocol>

//: @property (nonatomic,copy) NSString *badge;
@property (nonatomic,copy) NSString *badge;

//: @property (nonatomic,copy) NSString *nick;
@property (nonatomic,copy) NSString *nick;

//: @property (nonatomic,copy) NSString *userId;
@property (nonatomic,copy) NSString *userId;

//: @property (nonatomic,copy) UIImage *icon;
@property (nonatomic,copy) UIImage *icon;

//: @property (nonatomic,copy) NSString *selName;
@property (nonatomic,copy) NSString *selName;

//: @property (nonatomic,copy) NSString *vcName;
@property (nonatomic,copy) NSString *vcName;

//: @end
@end