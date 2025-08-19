// __DEBUG__
// __CLOSE_PRINT__
//
//  BroadcastView.h
//  JYImageTextCombine
//
//  Created by JackYoung on 2022/4/1.
//  Copyright © 2022 Jack Young. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface FFFBubbleMenuView : UIView
@interface BroadcastView : UIView

//: + (instancetype)shareMenuView;
+ (instancetype)dismissDisappear;// 单例模式

//type：类型  selectionTextRectInWindow：选中文本在window坐标系中的frame
//cursorStartRect:start的光标位置
//block是选择功能按钮的title
//: - (void)showViewWithButtonModels:(NSArray *)array
- (void)accountIn:(NSArray *)array
                 //: cursorStartRect:(CGRect)cursorStartRect selectionTextRectInWindow:(CGRect)rect selectBlock:(void(^)(FFFMediaItem *item))block
                 openBlock:(CGRect)cursorStartRect queryion:(CGRect)rect bubble:(void(^)(InfoMakeBar *item))block
                     //: praiseBlock:(void(^)(NSInteger tag))praiseblock;
                     show:(void(^)(NSInteger tag))praiseblock;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END