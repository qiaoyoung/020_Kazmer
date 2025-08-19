// __DEBUG__
// __CLOSE_PRINT__
//
//  ModePickerController.h
// ButtonKit
//
//  Created by Genning on 2020/9/25.
//  Copyright © 2020 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "TZImagePickerController.h"
#import "TZImagePickerController.h"
//: #import "WatchKitMediaPickerDelegate.h"
#import "ColorTitle.h"

//: NS_ASSUME_NONNULL_BEGIN
NS_ASSUME_NONNULL_BEGIN

//: @interface WatchKitMediaPickerController : TZImagePickerController
@interface ModePickerController : TZImagePickerController

//: - (instancetype)initWithMaxImagesCount:(NSInteger)maxImagesCount;
- (instancetype)initWithTing:(NSInteger)maxImagesCount;

//: @property (nonatomic, weak) id<WatchKitMediaPickerDelegate> nim_delegate;
@property (nonatomic, weak) id<ColorTitle> nim_delegate;

//: @property(nonatomic, strong) NSArray<NSString *> *mediaTypes;
@property(nonatomic, strong) NSArray<NSString *> *mediaTypes;

//: @end
@end

//: NS_ASSUME_NONNULL_END
NS_ASSUME_NONNULL_END
