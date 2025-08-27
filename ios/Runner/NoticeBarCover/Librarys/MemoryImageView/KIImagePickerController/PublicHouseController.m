
#import <Foundation/Foundation.h>

NSString *StringFromSineData(Byte *data);        


//: contact_tag_fragment_cancel
Byte main_ureaAcidMsg[] = {81, 27, 79, 12, 31, 203, 146, 175, 161, 33, 131, 124, 20, 32, 31, 37, 18, 20, 37, 16, 37, 18, 24, 16, 23, 35, 18, 24, 30, 22, 31, 37, 16, 20, 18, 31, 20, 22, 29, 81};

//: please_choose
Byte userImageVidStr[] = {35, 13, 68, 6, 91, 79, 44, 40, 33, 29, 47, 33, 27, 31, 36, 43, 43, 47, 33, 216};

//: UIImagePickerControllerOriginalImage
Byte userVersionResortPath[] = {38, 36, 21, 6, 162, 251, 64, 52, 52, 88, 76, 82, 80, 59, 84, 78, 86, 80, 93, 46, 90, 89, 95, 93, 90, 87, 87, 80, 93, 58, 93, 84, 82, 84, 89, 76, 87, 52, 88, 76, 82, 80, 132};

//: friend_circle_activity_camera
Byte notiUserNuclearCoveText[] = {53, 29, 27, 11, 248, 192, 93, 168, 28, 150, 50, 75, 87, 78, 74, 83, 73, 68, 72, 78, 87, 72, 81, 74, 68, 70, 72, 89, 78, 91, 78, 89, 94, 68, 72, 70, 82, 74, 87, 70, 86};

//: friend_circle_activity_from_phone
Byte user_titleStr[] = {30, 33, 22, 5, 129, 80, 92, 83, 79, 88, 78, 73, 77, 83, 92, 77, 86, 79, 73, 75, 77, 94, 83, 96, 83, 94, 99, 73, 80, 92, 89, 87, 73, 90, 82, 89, 88, 79, 6};

// __DEBUG__
// __CLOSE_PRINT__
//
//  PublicHouseController.m
//  Kitalker
//
//  Created by chen on 13-3-19.
//  Copyright (c) 2013年 ibm. All rights reserved.
//

// __M_A_C_R_O__
//: #import "KIImagePickerController.h"
#import "PublicHouseController.h"
//: #import <Photos/PHPhotoLibrary.h>
#import <Photos/PHPhotoLibrary.h>

//: @interface KIImagePickerController ()
@interface PublicHouseController ()
//: @property (nonatomic, weak) id<KIImagePickerControllerDelegate> delegate;
@property (nonatomic, weak) id<GeorgiaHomeBoyDelegate> delegate;
//: @property (nonatomic, strong) UIViewController *viewController;
@property (nonatomic, strong) UIViewController *viewController;
//: @property (nonatomic, assign) CGSize cropSize;
@property (nonatomic, assign) CGSize cropSize;
//: @property (nonatomic, strong) NSArray *otherItems;
@property (nonatomic, strong) NSArray *otherItems;
//: @property (nonatomic, assign) BOOL showDelete;
@property (nonatomic, assign) BOOL showDelete;
//: @end
@end

//: @implementation KIImagePickerController
@implementation PublicHouseController
//: @synthesize delegate = _delegate;
@synthesize delegate = _delegate;
//: @synthesize viewController = _viewController;
@synthesize viewController = _viewController;
//: @synthesize title = _title;
@synthesize title = _title;
//: @synthesize cropSize = _cropSize;
@synthesize cropSize = _cropSize;
//: @synthesize otherItems = _otherItems;
@synthesize otherItems = _otherItems;
//: @synthesize showDelete = _showDelete;
@synthesize showDelete = _showDelete;

//: - (id)initWithDelegate:(id<KIImagePickerControllerDelegate>)delegate viewController:(UIViewController *)viewController {
- (id)initWithContainerRead:(id<GeorgiaHomeBoyDelegate>)delegate toFile:(UIViewController *)viewController {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: self.delegate = delegate;
        self.delegate = delegate;
        //: self.viewController = viewController;
        self.viewController = viewController;
        //: self.title = [WatchLanguageManager getTextWithKey:@"please_choose"];
        self.title = [PaintedNaturalLanguageTo exhibit:StringFromSineData(userImageVidStr)];//@"请选择";
    }
    //: return self;
    return self;
}

//: - (id)initWithDelegate:(id<KIImagePickerControllerDelegate>)delegate
- (id)initWithDelete:(id<GeorgiaHomeBoyDelegate>)delegate
                 //: title:(NSString *)title
                 data:(NSString *)title
        //: viewController:(UIViewController *)viewController {
        quantity_strong:(UIViewController *)viewController {
    //: if (self = [super init]) {
    if (self = [super init]) {
        //: self.delegate = delegate;
        self.delegate = delegate;
        //: self.viewController = viewController;
        self.viewController = viewController;
        //: self.title = title;
        self.title = title;
    }
    //: return self;
    return self;
}

//: - (void)showWithDeleteButton:(BOOL)showDelete {
- (void)parent:(BOOL)showDelete {
    //: UIApplication *applicaiton = [UIApplication sharedApplication];
    UIApplication *applicaiton = [UIApplication sharedApplication];

    //: [[self actionSheet:showDelete] showInView:[applicaiton keyWindow]];
    [[self upwardsAccount:showDelete] showInView:[applicaiton keyWindow]];
}

//: - (void)showWithDeleteButton:(BOOL)showDelete cropSize:(CGSize)cropSize {
- (void)constituentSize:(BOOL)showDelete duringMessageSize:(CGSize)cropSize {
    //: [self setCropSize:cropSize];
    [self setCropSize:cropSize];
    //: [self showWithDeleteButton:showDelete];
    [self parent:showDelete];
}

//: - (void)showWithDeleteButton:(BOOL)showDelete cropSize:(CGSize)cropSize otherItems:(NSArray *)items {
- (void)add:(BOOL)showDelete distance:(CGSize)cropSize sass:(NSArray *)items {
    //: [self setOtherItems:items];
    [self setOtherItems:items];
    //: [self showWithDeleteButton:showDelete cropSize:cropSize];
    [self constituentSize:showDelete duringMessageSize:cropSize];
}

//: - (UIActionSheet *)actionSheet:(BOOL)needDelete {
- (UIActionSheet *)upwardsAccount:(BOOL)needDelete {
    //: self.showDelete = needDelete;
    self.showDelete = needDelete;

    //: if (_actionSheet == nil) {
    if (_actionSheet == nil) {

        //: NSString *from_phone = [WatchLanguageManager getTextWithKey:@"friend_circle_activity_from_phone"];
        NSString *from_phone = [PaintedNaturalLanguageTo exhibit:StringFromSineData(user_titleStr)];
        //: NSString *activity_camera = [WatchLanguageManager getTextWithKey:@"friend_circle_activity_camera"];
        NSString *activity_camera = [PaintedNaturalLanguageTo exhibit:StringFromSineData(notiUserNuclearCoveText)];

        //: _actionSheet = [[UIActionSheet alloc] initWithTitle:self.title
        _actionSheet = [[UIActionSheet alloc] initWithTitle:self.title
                                                   //: delegate:self
                                                   delegate:self
                                          //: cancelButtonTitle:nil
                                          cancelButtonTitle:nil
                                     //: destructiveButtonTitle:nil
                                     destructiveButtonTitle:nil
                                          //: otherButtonTitles:from_phone, activity_camera, nil];
                                          otherButtonTitles:from_phone, activity_camera, nil];

        //: NSUInteger cancelIndex = 1;
        NSUInteger cancelIndex = 1;
        //: if (self.showDelete) {
        if (self.showDelete) {
            //: [_actionSheet addButtonWithTitle:@"删除".nim_localized];
            [_actionSheet addButtonWithTitle:@"删除".messageWith];
            //: cancelIndex++;
            cancelIndex++;
        }

        //: for (NSString *title in self.otherItems) {
        for (NSString *title in self.otherItems) {
            //: [_actionSheet addButtonWithTitle:title];
            [_actionSheet addButtonWithTitle:title];
            //: cancelIndex++;
            cancelIndex++;
        }

        //: [_actionSheet addButtonWithTitle:[WatchLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"]];
        [_actionSheet addButtonWithTitle:[PaintedNaturalLanguageTo exhibit:StringFromSineData(main_ureaAcidMsg)]];
        //: cancelIndex++;
        cancelIndex++;

        //: _actionSheet.cancelButtonIndex = cancelIndex;
        _actionSheet.cancelButtonIndex = cancelIndex;
        //[self retain];
    }
    //: return _actionSheet;
    return _actionSheet;
}

//: - (UIImagePickerController *)imagePickerController {
- (UIImagePickerController *)doing {
    //: if (_imagePickerController == nil) {
    if (_imagePickerController == nil) {
        //: _imagePickerController = [[UIImagePickerController alloc] init];
        _imagePickerController = [[UIImagePickerController alloc] init];
        //: [_imagePickerController setDelegate:self];
        [_imagePickerController setDelegate:self];
    }
    //: return _imagePickerController;
    return _imagePickerController;
}

- (void)actionSheet:(UIActionSheet *)actionSheet didDismissWithButtonIndex:(NSInteger)buttonIndex {
    //: if (buttonIndex == 0) {
    if (buttonIndex == 0) {

        //: [self requestAuthorizationForPhotoLibrary];
        [self fullPin];

    //: } else if (buttonIndex == 1) {
    } else if (buttonIndex == 1) {

        //: [self requestAuthorizationForVideo];
        [self contentPath];

    //: } else if (buttonIndex == actionSheet.cancelButtonIndex) {
    } else if (buttonIndex == actionSheet.cancelButtonIndex) {
        //: if ([self.delegate respondsToSelector:@selector(KIImagePickerControllerDidCancel:)]) {
        if ([self.delegate respondsToSelector:@selector(cancelled:)]) {
            //: [self.delegate KIImagePickerControllerDidCancel:self];
            [self.delegate cancelled:self];
        }
        //: [self dismiss];
        [self before];
    //: } else if (self.showDelete && buttonIndex == 2) {
    } else if (self.showDelete && buttonIndex == 2) {
        //: [self pickImage:nil];
        [self theDisable:nil];
    //: } else {
    } else {
        //: [self didSelectedOtherIndex:buttonIndex-(self.showDelete?3:2)];
        [self elect:buttonIndex-(self.showDelete?3:2)];
    }
}


/**
 *  请求相机权限
 */
//: - (void)requestAuthorizationForVideo {
- (void)contentPath {

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    AVAuthorizationStatus authorityStaus = [AVCaptureDevice authorizationStatusForMediaType:AVMediaTypeVideo];
    //: if (AVAuthorizationStatusNotDetermined == authorityStaus) {
    if (AVAuthorizationStatusNotDetermined == authorityStaus) {
        //: [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
        [AVCaptureDevice requestAccessForMediaType:AVMediaTypeVideo completionHandler:^(BOOL granted) {
            //: if (granted == YES) {
            if (granted == YES) {
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    @
                     //: try{} @finally{} __typeof__(self) self = __weak_self__;
                     try{} @finally{} __typeof__(self) self = __weak_self__;
                                    ;

                    //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                    if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
                        //: [[self imagePickerController] setSourceType:UIImagePickerControllerSourceTypeCamera];
                        [[self doing] setSourceType:UIImagePickerControllerSourceTypeCamera];
                        //: [self imagePickerController].modalPresentationStyle = UIModalPresentationFullScreen;
                        [self doing].modalPresentationStyle = UIModalPresentationFullScreen;

                        //: [_viewController presentViewController:[self imagePickerController] animated:YES completion:^{
                        [_viewController presentViewController:[self doing] animated:YES completion:^{

                        //: }];
                        }];

                    }
                //: });
                });
            }
        //: }];
        }];
    //: } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
    } else if (AVAuthorizationStatusAuthorized == authorityStaus) {
        //: if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        if ([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
            //: [[self imagePickerController] setSourceType:UIImagePickerControllerSourceTypeCamera];
            [[self doing] setSourceType:UIImagePickerControllerSourceTypeCamera];
            //: [self imagePickerController].modalPresentationStyle = UIModalPresentationFullScreen;
            [self doing].modalPresentationStyle = UIModalPresentationFullScreen;

            //: [_viewController presentViewController:[self imagePickerController] animated:YES completion:^{
            [_viewController presentViewController:[self doing] animated:YES completion:^{

            //: }];
            }];

        }
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }
    }
}

/**
 *  请求相册
 */
//: - (void)requestAuthorizationForPhotoLibrary
- (void)fullPin
{
    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    //: if (PHAuthorizationStatusNotDetermined == authStatus) {
    if (PHAuthorizationStatusNotDetermined == authStatus) {
        //: [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            //: if (PHAuthorizationStatusAuthorized == status) {
            if (PHAuthorizationStatusAuthorized == status) {
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [self callPhotoAction];
                    [self rubyRed];
                //: });
                });
            }
        //: }];
        }];
        //: return;
        return;
    //: } else if (PHAuthorizationStatusAuthorized == authStatus){
    } else if (PHAuthorizationStatusAuthorized == authStatus){
        //: [self callPhotoAction];
        [self rubyRed];
    //: } else {
    } else {
//        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//        if( [[UIApplication sharedApplication] canOpenURL:url]) {
//            [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//        }
    }
}

//: - (void)callPhotoAction {
- (void)rubyRed {

    //: [[self imagePickerController] setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    [[self doing] setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
    //: [self imagePickerController].modalPresentationStyle = UIModalPresentationFullScreen;
    [self doing].modalPresentationStyle = UIModalPresentationFullScreen;

    //: [_viewController presentViewController:[self imagePickerController] animated:YES completion:^{
    [_viewController presentViewController:[self doing] animated:YES completion:^{

    //: }];
    }];

}



//: - (void)pickImage:(UIImage *)image {
- (void)theDisable:(UIImage *)image {
    //: if (self.delegate != nil && [self.delegate respondsToSelector:@selector(KIImagePickerController:didFinishPickImage:)]) {
    if (self.delegate != nil && [self.delegate respondsToSelector:@selector(takeHome:point:)]) {
        //: [self.delegate KIImagePickerController:self didFinishPickImage:image];
        [self.delegate takeHome:self point:image];
    }
    //: [self dismiss];
    [self before];
}

//: - (void)didSelectedOtherIndex:(NSUInteger)index {
- (void)elect:(NSUInteger)index {
    //: if (self.delegate != nil && [self.delegate respondsToSelector:@selector(KIImagePickerController:didSelectedOtherIndex:)]) {
    if (self.delegate != nil && [self.delegate respondsToSelector:@selector(along:border:)]) {
        //: [self.delegate KIImagePickerController:self didSelectedOtherIndex:index];
        [self.delegate along:self border:index];
    }
}

//: - (void)dismiss {
- (void)before {
    //: [[self imagePickerController] dismissViewControllerAnimated:YES completion:^{
    [[self doing] dismissViewControllerAnimated:YES completion:^{

    //: }];
    }];
}



//: #pragma mark ==================================================
#pragma mark ==================================================
//: #pragma mark == UINavigationControllerDelegate
#pragma mark == UINavigationControllerDelegate
//: #pragma mark ==================================================
#pragma mark ==================================================
//: - (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
- (void)navigationController:(UINavigationController *)navigationController willShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    //: if ([self.delegate respondsToSelector:@selector(KINavigationController:willShowViewController:animated:)]) {
    if ([self.delegate respondsToSelector:@selector(center:label:dittyBagRecord:)]) {
        //: [self.delegate KINavigationController:navigationController willShowViewController:viewController animated:animated];
        [self.delegate center:navigationController label:viewController dittyBagRecord:animated];
    }
}

//: - (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
- (void)navigationController:(UINavigationController *)navigationController didShowViewController:(UIViewController *)viewController animated:(BOOL)animated{
    //: if ([self.delegate respondsToSelector:@selector(KINavigationController:didShowViewController:animated:)]) {
    if ([self.delegate respondsToSelector:@selector(mediaTitle:message:reply:)]) {
        //: [self.delegate KINavigationController:navigationController didShowViewController:viewController animated:animated];
        [self.delegate mediaTitle:navigationController message:viewController reply:animated];
    }
}

//: #pragma mark ==================================================
#pragma mark ==================================================
//: #pragma mark == UIImagePickerControllerDelegate
#pragma mark == UIImagePickerControllerDelegate
//: #pragma mark ==================================================
#pragma mark ==================================================
//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo NS_DEPRECATED_IOS(2_0, 3_0){
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingImage:(UIImage *)image editingInfo:(NSDictionary *)editingInfo NS_DEPRECATED_IOS(2_0, 3_0){

}

//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    //: UIImage *image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    UIImage *image = [info objectForKey:StringFromSineData(userVersionResortPath)];
    //    NSURL   *imageURL = [info objectForKey:@"UIImagePickerControllerReferenceURL"];
    //    NSString *imagePath = [imageURL absoluteString];
    //: [[UIApplication sharedApplication] setStatusBarHidden:NO];
    [[UIApplication sharedApplication] setStatusBarHidden:NO];
    //: if (__CGSizeEqualToSize(self.cropSize, CGSizeZero)) {
    if (__CGSizeEqualToSize(self.cropSize, CGSizeZero)) {
        //: [self pickImage:image];
        [self theDisable:image];
    //: } else {
    } else {

        //: KIImageCropperViewController *cropImageViewController = [[KIImageCropperViewController alloc] initWithImage:[image fixOrientation] cropSize:self.cropSize];
        StatuteContentViewController *cropImageViewController = [[StatuteContentViewController alloc] initWithBench:[image need] fruitageLocation:self.cropSize];
        //: UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:cropImageViewController];
        UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:cropImageViewController];
        //: [[self imagePickerController] presentViewController:nav animated:YES completion:nil];
        [[self doing] presentViewController:nav animated:YES completion:nil];
        //: [cropImageViewController setCroppedImage:^(UIImage *image) {
        [cropImageViewController setDefendingTeam:^(UIImage *image) {
            //: [self pickImage:image];
            [self theDisable:image];
        //: }];
        }];

    }
}

//: - (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    //: if ([self.delegate respondsToSelector:@selector(KIImagePickerControllerDidCancel:)]) {
    if ([self.delegate respondsToSelector:@selector(cancelled:)]) {
        //: [self.delegate KIImagePickerControllerDidCancel:self];
        [self.delegate cancelled:self];
    }
    //: [self dismiss];
    [self before];
}


//: @end
@end

Byte * SineDataToCache(Byte *data) {
    int chefPublisher = data[0];
    int historyFailureTowards = data[1];
    Byte sham = data[2];
    int chick = data[3];
    if (!chefPublisher) return data + chick;
    for (int i = chick; i < chick + historyFailureTowards; i++) {
        int value = data[i] + sham;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[chick + historyFailureTowards] = 0;
    return data + chick;
}

NSString *StringFromSineData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)SineDataToCache(data)];
}
