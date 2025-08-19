// __DEBUG__
// __CLOSE_PRINT__
//
//  ColumnView.h
//  sohunews
//
//  Created by tianyulong on 2020/4/20.
//  Copyright © 2020 Sohu.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "UUMarqueeView.h"
#import "BubbleEmptyView.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef enum : NSUInteger {
typedef enum : NSUInteger {
    //: CompletingUserInfoType_headicon = 1,
    CompletingUserInfoType_headicon = 1,
//: } CompletingUserInfoType;
} CompletingUserInfoType;

//: @interface SNLeadCompleteInfo : UIView
@interface ColumnView : UIView

//: @property (nonatomic, strong) UUMarqueeView *leftwardMarqueeView;
@property (nonatomic, strong) BubbleEmptyView *leftwardMarqueeView;

//: @property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *title;
//: @property (nonatomic, copy) NSString *actionTitle;
@property (nonatomic, copy) NSString *actionTitle;
//: @property (nonatomic, assign) CompletingUserInfoType completeType;
@property (nonatomic, assign) CompletingUserInfoType completeType;

//: @property (nonatomic, copy) void (^completion)(void);
@property (nonatomic, copy) void (^completion)(void);
//: @property (nonatomic, copy) void (^cancleCompletion)(void);
@property (nonatomic, copy) void (^cancleCompletion)(void);

/// 引导用户完善资料，显示提示框
//: + (instancetype)showTipViewForCompletingUserInfolWithDelay:(float)delay
+ (instancetype)after:(float)delay
                                                 //: superView:(UIView *)superView
                                                 distanceRefresh:(UIView *)superView
                                    //: CompletingUserInfoType:(CompletingUserInfoType)type
                                    ditheredColorBlock:(CompletingUserInfoType)type
                                               //: withMessage:(NSString *)msg
                                               shared:(NSString *)msg
                                                 //: trueBlock:(void (^)(void))trueBlock
                                                 backBlock:(void (^)(void))trueBlock
                                               //: cancleBlock:(void (^)(void))callback;
                                               location:(void (^)(void))callback;

//: - (void)p_updateInTransaction:(void (^)(SNLeadCompleteInfo *tipView))transactionBlock;
- (void)threadBar:(void (^)(ColumnView *tipView))transactionBlock;

//: - (void)p_showOnView:(UIView *)superView;
- (void)container:(UIView *)superView;

//: - (void)p_dismiss;
- (void)bury;


//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END