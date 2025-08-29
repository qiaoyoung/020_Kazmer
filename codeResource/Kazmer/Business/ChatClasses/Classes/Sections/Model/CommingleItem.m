// __DEBUG__
// __CLOSE_PRINT__
//
//  CommingleItem.m
// Mortification
//
//  Created by amao on 8/11/15.
//  Copyright (c) 2015 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFMediaItem.h"
#import "CommingleItem.h"

//: @implementation FFFMediaItem
@implementation CommingleItem

//: + (FFFMediaItem *)item:(NSString *)selector
+ (CommingleItem *)garrisonName:(NSString *)selector
           //: normalImage:(UIImage *)normalImage
           heading:(UIImage *)normalImage
         //: selectedImage:(UIImage *)selectedImage
         with:(UIImage *)selectedImage
                 //: title:(NSString *)title
                 item:(NSString *)title
{
    //: FFFMediaItem *item = [[FFFMediaItem alloc] init];
    CommingleItem *item = [[CommingleItem alloc] init];
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