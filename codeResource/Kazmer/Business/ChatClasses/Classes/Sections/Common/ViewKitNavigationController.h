// __DEBUG__
// __CLOSE_PRINT__
//
//  ViewKitNavigationController.h
// Mortification
//
//  Created by Genning on 2020/9/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "DisplayKitMediaPickerDelegate.h"
#import "MarkSession.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface DisplayKitMediaPickerController : TZImagePickerController
@interface ViewKitNavigationController : TZImagePickerController

//: - (instancetype)initWithMaxImagesCount:(NSInteger)maxImagesCount;
- (instancetype)initWithMargin:(NSInteger)maxImagesCount;

//: @property (nonatomic, weak) id<DisplayKitMediaPickerDelegate> nim_delegate;
@property (nonatomic, weak) id<MarkSession> nim_delegate;

//: @property(nonatomic, strong) NSArray<NSString *> *mediaTypes;
@property(nonatomic, strong) NSArray<NSString *> *mediaTypes;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
