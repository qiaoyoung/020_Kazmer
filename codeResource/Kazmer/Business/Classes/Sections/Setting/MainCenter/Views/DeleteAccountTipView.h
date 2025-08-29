//
//  DeleteAccountTipView.h
//  Riverla
//
//  Created by mac on 2025/5/16.
//  Copyright © 2025 Riverla. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol USERDeleteAccountTIPDelegate <NSObject>

- (void)didTouchDeleteSureButton;

@end

@interface DeleteAccountTipView : UIView

@property (nonatomic,weak) id<USERDeleteAccountTIPDelegate> delegate;

/** 动画显示 */
- (void)animationShow;

/** 动画关闭 */
- (void)animationClose;

@end

NS_ASSUME_NONNULL_END
