// __DEBUG__
// __CLOSE_PRINT__
//
//  CommingleItem.h
// Mortification
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @interface DisplayMediaItem : NSObject
@interface CommingleItem : NSObject

//: @property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *title;

//: @property (nonatomic,assign) SEL selctor;
@property (nonatomic,assign) SEL selctor;

//: @property (nonatomic,strong) UIImage *normalImage;
@property (nonatomic,strong) UIImage *normalImage;

//: @property (nonatomic,strong) UIImage *selectedImage;
@property (nonatomic,strong) UIImage *selectedImage;

//: + (DisplayMediaItem *)item:(NSString *)selector
+ (CommingleItem *)garrisonName:(NSString *)selector
           //: normalImage:(UIImage *)normalImage
           heading:(UIImage *)normalImage
         //: selectedImage:(UIImage *)selectedImage
         with:(UIImage *)selectedImage
                 //: title:(NSString *)title;
                 item:(NSString *)title;
//: @end
@end
