//
//  USERSearchLocalHistoryObject.h
//  NIM
//
//  Created by chris on 15/7/8.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, USERSearchLocalHistoryType){
    SearchLocalHistoryTypeEntrance,
    SearchLocalHistoryTypeContent,
};

@class USERSearchLocalHistoryObject;
@protocol USERSearchObjectRefresh <NSObject>

- (void)refresh:(USERSearchLocalHistoryObject *)object;

@end

@interface USERSearchLocalHistoryObject : NSObject

@property (nonatomic,copy)   NSString *content;

@property (nonatomic,assign) CGFloat uiHeight;

@property (nonatomic,assign) USERSearchLocalHistoryType type;

@property (nonatomic,readonly) NIMMessage *message;

- (instancetype)initWithMessage:(NIMMessage *)message;

@end
