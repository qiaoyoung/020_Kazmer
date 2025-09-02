// __DEBUG__
// __CLOSE_PRINT__
//
//  DigitiserView.h
//  NIM
//
//  Created by Yan Wang on 2024/7/27.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface ZMONScanToolBar : UIView
@interface DigitiserView : UIView

//: - (void)showTorch;
- (void)sendWith;
//: - (void)dismissTorch;
- (void)instanceWith;

//: - (void)addAlbumTarget:(id)aTarget action:(SEL)aAction;
- (void)choose:(id)aTarget soul:(SEL)aAction;
//: - (void)addQRCodeTarget:(id)aTarget action:(SEL)aAction;
- (void)targetCenter:(id)aTarget dba:(SEL)aAction;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END