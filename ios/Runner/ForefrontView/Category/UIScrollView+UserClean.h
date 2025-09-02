// __DEBUG__
// __CLOSE_PRINT__
//
//  UIScrollView+UserClean.h
//  NIM
//
//  Created by chris on 16/1/24.
//  Copyright © 2016年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: typedef enum USERScrollViewDirection {
typedef enum USERScrollViewDirection {
    //: USERScrollViewDirectionNone,
    USERScrollViewDirectionNone,
    //: USERScrollViewDirectionRight,
    USERScrollViewDirectionRight,
    //: USERScrollViewDirectionLeft,
    USERScrollViewDirectionLeft,
    //: USERScrollViewDirectionUp,
    USERScrollViewDirectionUp,
    //: USERScrollViewDirectionDown,
    USERScrollViewDirectionDown,
//: } USERScrollViewDirection;
} USERScrollViewDirection;


//: @interface UIScrollView (Direction)
@interface UIScrollView (Page)

//: - (void)startObservingDirection;
- (void)contentDirection;
//: - (void)stopObservingDirection;
- (void)vanguard;

//: @property (readonly, nonatomic) USERScrollViewDirection horizontalScrollingDirection;
@property (readonly, nonatomic) USERScrollViewDirection horizontalScrollingDirection;
//: @property (readonly, nonatomic) USERScrollViewDirection verticalScrollingDirection;
@property (readonly, nonatomic) USERScrollViewDirection verticalScrollingDirection;

//: @end
@end