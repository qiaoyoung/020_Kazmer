// __DEBUG__
// __CLOSE_PRINT__
//
//  KEKEProject
//  KEKEChat
//
//  Created by tyl.
//  Copyright © 2024 Ali. All rights reserved.
//
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

// __M_A_C_R_O__

//: @class SGScanCode;
@class TitleGrowing;

//: @protocol SGScanCodeDelegate <NSObject>
@protocol CustomValue <NSObject>
/// 扫描二维码结果函数
///
/// @param scanCode     TitleGrowing 对象
/// @param result       扫描二维码数据
//: - (void)scanCode:(SGScanCode *)scanCode result:(NSString *)result;
- (void)fromResult:(TitleGrowing *)scanCode title_strong:(NSString *)result;

//: @end
@end


//: @protocol SGScanCodeSampleBufferDelegate <NSObject>
@protocol TitleDelegate <NSObject>
/// 扫描时捕获外界光线强弱函数
///
/// @param scanCode     TitleGrowing 对象
/// @param brightness   光线强弱值
//: - (void)scanCode:(SGScanCode *)scanCode brightness:(CGFloat)brightness;
- (void)totalerval:(TitleGrowing *)scanCode exceptBrightnessWith:(CGFloat)brightness;

//: @end
@end