// __DEBUG__
// __CLOSE_PRINT__
//
//  StatuteContentViewController.h
//  ChineseTastes
//
//  Created by 刘 波 on 13-7-8.
//  Copyright (c) 2013年 beartech. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "KIImageCropperView.h"
#import "TimeModeView.h"

//: @interface KIImageCropperViewController : UIViewController {
@interface StatuteContentViewController : UIViewController {
    //: CGSize _cropSize;
    CGSize _cropSize;
    //: UIImage *_image;
    UIImage *_image;
    //: KIImageCropperView *_imageCropperView;
    TimeModeView *_imageCropperView;
    //: void(^_croppedImage)(UIImage *image);
    void(^_croppedImage)(UIImage *image);
}

//: - (id)initWithImage:(UIImage *)image cropSize:(CGSize)cropSize;
- (id)initWithBench:(UIImage *)image fruitageLocation:(CGSize)cropSize;

//: - (void)setCroppedImage:(void(^)(UIImage *image))block;
- (void)setDefendingTeam:(void(^)(UIImage *image))block;

//: @end
@end