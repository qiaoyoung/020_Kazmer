// __DEBUG__
// __CLOSE_PRINT__
//
//  InfoMakeBar.m
// ButtonKit
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMediaItem.h"
#import "InfoMakeBar.h"

//: @implementation FFFMediaItem
@implementation InfoMakeBar

//: + (FFFMediaItem *)item:(NSString *)selector
+ (InfoMakeBar *)icon:(NSString *)selector
           //: normalImage:(UIImage *)normalImage
           message:(UIImage *)normalImage
         //: selectedImage:(UIImage *)selectedImage
         name:(UIImage *)selectedImage
                 //: title:(NSString *)title
                 sub:(NSString *)title
{
    //: FFFMediaItem *item = [[FFFMediaItem alloc] init];
    InfoMakeBar *item = [[InfoMakeBar alloc] init];
    //: item.selctor = NSSelectorFromString(selector);
    item.selctor = NSSelectorFromString(selector);
    //: item.normalImage = normalImage;
    item.normalImage = normalImage;
    //: item.selectedImage = selectedImage;
    item.selectedImage = selectedImage;
    //: item.title = title;
    item.title = title;
    //: return item;
    return item;
}

//: @end
@end