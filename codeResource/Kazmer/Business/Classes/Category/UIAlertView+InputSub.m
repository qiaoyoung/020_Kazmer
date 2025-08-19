// __DEBUG__
// __CLOSE_PRINT__
//
//  UIAlertView+InputSub.m
//  eim_iphone
//
//  Created by amao on 12-11-7.
//  Copyright (c) 2012年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "UIAlertView+NTESBlock.h"
#import "UIAlertView+InputSub.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>

//: static char kUIAlertViewBlockAddress;
static char dreamStyleMessage;

//: @implementation UIAlertView (NTESBlock)
@implementation UIAlertView (InputSub)
//: - (void)showAlertWithCompletionHandler: (void (^)(NSInteger))block
- (void)heritage: (void (^)(NSInteger))block
{
    //: self.delegate = self;
    self.delegate = self;
    //: objc_setAssociatedObject(self,&kUIAlertViewBlockAddress,block,OBJC_ASSOCIATION_COPY);
    objc_setAssociatedObject(self,&dreamStyleMessage,block,OBJC_ASSOCIATION_COPY);
    //: [self show];
    [self show];
}


//: - (void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
- (void)pin:(UIAlertView *)alertView green:(NSInteger)buttonIndex
{
    //: AlertBlock block = objc_getAssociatedObject(self, &kUIAlertViewBlockAddress);
    AlertBlock block = objc_getAssociatedObject(self, &dreamStyleMessage);
    //: if (block)
    if (block)
    {
        //: block(buttonIndex);
        block(buttonIndex);
        //: objc_setAssociatedObject(self, &kUIAlertViewBlockAddress, nil, OBJC_ASSOCIATION_COPY);
        objc_setAssociatedObject(self, &dreamStyleMessage, nil, OBJC_ASSOCIATION_COPY);
    }
}

//: - (void)clearActionBlock
- (void)icon
{
    //: self.delegate = nil;
    self.delegate = nil;
    //: objc_setAssociatedObject(self, &kUIAlertViewBlockAddress, nil, OBJC_ASSOCIATION_COPY);
    objc_setAssociatedObject(self, &dreamStyleMessage, nil, OBJC_ASSOCIATION_COPY);
}

//: @end
@end



//: @implementation UIAlertController (NTESBlock)
@implementation UIAlertController (InputSub)
//: - (UIAlertController *)addAction:(NSString *)title
- (UIAlertController *)searched:(NSString *)title
                           //: style:(UIAlertActionStyle)style
                           shadow:(UIAlertActionStyle)style
                         //: handler:(void (^ __nullable)(UIAlertAction *action))handler
                         tabInput:(void (^ __nullable)(UIAlertAction *action))handler
{
    //: UIAlertAction *action = [UIAlertAction actionWithTitle:title style:style handler:handler];
    UIAlertAction *action = [UIAlertAction actionWithTitle:title style:style handler:handler];
    //: [self addAction:action];
    [self addAction:action];
    //: return self;
    return self;
}

//: - (void)show
- (void)along
{
    //: UIViewController *vc = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    UIViewController *vc = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    //: [vc presentViewController:self animated:YES completion:nil];
    [vc presentViewController:self animated:YES completion:nil];
}
//: @end
@end