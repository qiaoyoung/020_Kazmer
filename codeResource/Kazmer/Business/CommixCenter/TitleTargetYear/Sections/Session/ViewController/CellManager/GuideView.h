// __DEBUG__
// __CLOSE_PRINT__
//
//  GuideView.h
//  sohunews
//
//  Created by tianyulong on 2020/4/20.
//  Copyright © 2020 Sohu.com. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "UUMarqueeView.h"
#import "SessionNameView.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: typedef enum : NSUInteger {
typedef enum : NSUInteger {
    //: CompletingUserInfoType_headicon = 1,
    CompletingUserInfoType_headicon = 1,
//: } CompletingUserInfoType;
} CompletingUserInfoType;

//: @interface SNLeadCompleteInfo : UIView
@interface GuideView : UIView

//: @property (nonatomic, strong) UUMarqueeView *leftwardMarqueeView;
@property (nonatomic, strong) SessionNameView *leftwardMarqueeView;

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
+ (instancetype)name:(float)delay
                                                 //: superView:(UIView *)superView
                                                 toTeam:(UIView *)superView
                                    //: CompletingUserInfoType:(CompletingUserInfoType)type
                                    along:(CompletingUserInfoType)type
                                               //: withMessage:(NSString *)msg
                                               imageIndependent:(NSString *)msg
                                                 //: trueBlock:(void (^)(void))trueBlock
                                                 sure:(void (^)(void))trueBlock
                                               //: cancleBlock:(void (^)(void))callback;
                                               arrow:(void (^)(void))callback;

//: - (void)p_updateInTransaction:(void (^)(SNLeadCompleteInfo *tipView))transactionBlock;
- (void)flush:(void (^)(GuideView *tipView))transactionBlock;

//: - (void)p_showOnView:(UIView *)superView;
- (void)viewTeam:(UIView *)superView;

//: - (void)p_dismiss;
- (void)canTitle;


//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END