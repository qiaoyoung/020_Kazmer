//
//  UIScrollView+USERDirection.h
//  NIM
//
//  Created by chris on 16/1/24.
//  Copyright © 2016年 Netease. All rights reserved.
//


#import <UIKit/UIKit.h>


typedef enum USERScrollViewDirection {
    USERScrollViewDirectionNone,
    USERScrollViewDirectionRight,
    USERScrollViewDirectionLeft,
    USERScrollViewDirectionUp,
    USERScrollViewDirectionDown,
} USERScrollViewDirection;


@interface UIScrollView (Direction)

- (void)startObservingDirection;
- (void)stopObservingDirection;

@property (readonly, nonatomic) USERScrollViewDirection horizontalScrollingDirection;
@property (readonly, nonatomic) USERScrollViewDirection verticalScrollingDirection;

@end
