//
//  USERContactUtilItem.h
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "USERContactDefines.h"
#import "USERGroupedContacts.h"

@interface USERContactUtilItem : NSObject<USERContactItemCollection>

@property (nonatomic,copy) NSArray *members;

@end

@interface USERContactUtilMember : NSObject<USERContactItem, USERGroupMemberProtocol>

@property (nonatomic,copy) NSString *nick;

@property (nonatomic,copy) NSString *badge;

@property (nonatomic,copy) UIImage *icon;

@property (nonatomic,copy) NSString *vcName;

@property (nonatomic,copy) NSString *userId;

@property (nonatomic,copy) NSString *selName;

@end
