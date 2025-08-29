//
//  USERSessionListHeader.h
//  NIM
//
//  Created by chris on 15/3/23.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, USERListHeaderType) {
    ListHeaderTypeCommonText = 1,
    ListHeaderTypeNetStauts,
    ListHeaderTypeLoginClients,
};

@protocol USERListHeaderView <NSObject>

@required
- (void)setContentText:(NSString *)content;

@end

@protocol USERListHeaderDelegate <NSObject>

@optional

- (void)didSelectRowType:(USERListHeaderType)type;

@end

@interface USERListHeader : UIView

@property (nonatomic,weak) id<USERListHeaderDelegate> delegate;

- (void)refreshWithType:(USERListHeaderType)type value:(id)value;


@end
