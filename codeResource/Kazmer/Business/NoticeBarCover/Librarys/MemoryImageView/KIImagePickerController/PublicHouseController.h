// __DEBUG__
// __CLOSE_PRINT__
//
//  PublicHouseController.h
//  Kitalker
//
//  Created by chen on 13-3-19.
//  Copyright (c) 2013年 yangfeng. All rights reserved.
//

// __M_A_C_R_O__
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>
//: #import "UIImage+KIAdditions.h"
#import "UIImage+Page.h"
//: #import "KIImageCropperViewController.h"
#import "StatuteContentViewController.h"

//: @protocol KIImagePickerControllerDelegate;
@protocol GeorgiaHomeBoyDelegate;

//: @interface KIImagePickerController : NSObject <UIActionSheetDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate> {
@interface PublicHouseController : NSObject <UIActionSheetDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate> {
    //: __weak id<KIImagePickerControllerDelegate> _delegate;
    __weak id<GeorgiaHomeBoyDelegate> _delegate;
    //: UIViewController *_viewController;
    UIViewController *_viewController;
    //: UIActionSheet *_actionSheet;
    UIActionSheet *_actionSheet;
    //: UIImagePickerController *_imagePickerController;
    UIImagePickerController *_imagePickerController;
    //: CGSize _cropSize;
    CGSize _cropSize;
    //: NSString *_title;
    NSString *_title;
    //: NSArray *_otherItems;
    NSArray *_otherItems;
    //: BOOL _showDelete;
    BOOL _showDelete;
}

//: @property (nonatomic, strong) NSString *title;
@property (nonatomic, strong) NSString *title;

//: - (id)initWithDelegate:(id<KIImagePickerControllerDelegate>)delegate
- (id)initWithContainerRead:(id<GeorgiaHomeBoyDelegate>)delegate
        //: viewController:(UIViewController *)viewController;
        toFile:(UIViewController *)viewController;

//: - (id)initWithDelegate:(id<KIImagePickerControllerDelegate>)delegate
- (id)initWithDelete:(id<GeorgiaHomeBoyDelegate>)delegate
                 //: title:(NSString *)title
                 data:(NSString *)title
        //: viewController:(UIViewController *)viewController;
        quantity_strong:(UIViewController *)viewController;

//: - (void)showWithDeleteButton:(BOOL)showDelete;
- (void)parent:(BOOL)showDelete;

//: - (void)showWithDeleteButton:(BOOL)showDelete cropSize:(CGSize)cropSize;
- (void)constituentSize:(BOOL)showDelete duringMessageSize:(CGSize)cropSize;

//: - (void)showWithDeleteButton:(BOOL)showDelete cropSize:(CGSize)cropSize otherItems:(NSArray *)items;
- (void)add:(BOOL)showDelete distance:(CGSize)cropSize sass:(NSArray *)items;

//: @end
@end

//: @protocol KIImagePickerControllerDelegate <NSObject>
@protocol GeorgiaHomeBoyDelegate <NSObject>

//: @optional
@optional

//: - (void)KIImagePickerController:(KIImagePickerController *)controller didFinishPickImage:(UIImage *)image;
- (void)takeHome:(PublicHouseController *)controller point:(UIImage *)image;

//: - (void)KIImagePickerController:(KIImagePickerController *)controller didSelectedOtherIndex:(NSUInteger)index;
- (void)along:(PublicHouseController *)controller border:(NSUInteger)index;

//: - (void)KIImagePickerControllerDidCancel:(KIImagePickerController *)controller;
- (void)cancelled:(PublicHouseController *)controller;

//: - (void)KINavigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated;
- (void)center:(UINavigationController *)navigationController label:(UIViewController *)viewController dittyBagRecord:(BOOL)animated;

//: - (void)KINavigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated;
- (void)mediaTitle:(UINavigationController *)navigationController message:(UIViewController *)viewController reply:(BOOL)animated;

//: @end
@end