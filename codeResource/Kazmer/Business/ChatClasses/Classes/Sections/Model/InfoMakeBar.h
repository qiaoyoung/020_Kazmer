// __DEBUG__
// __CLOSE_PRINT__
//
//  InfoMakeBar.h
// ButtonKit
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface FFFMediaItem : NSObject
@interface InfoMakeBar : NSObject

//: @property (nonatomic,assign) SEL selctor;
@property (nonatomic,assign) SEL selctor;

//: @property (nonatomic,strong) UIImage *normalImage;
@property (nonatomic,strong) UIImage *normalImage;

//: @property (nonatomic,strong) UIImage *selectedImage;
@property (nonatomic,strong) UIImage *selectedImage;

//: @property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *title;

//: + (FFFMediaItem *)item:(NSString *)selector
+ (InfoMakeBar *)icon:(NSString *)selector
           //: normalImage:(UIImage *)normalImage
           message:(UIImage *)normalImage
         //: selectedImage:(UIImage *)selectedImage
         name:(UIImage *)selectedImage
                 //: title:(NSString *)title;
                 sub:(NSString *)title;
//: @end
@end