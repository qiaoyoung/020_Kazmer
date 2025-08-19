
#import <Foundation/Foundation.h>
typedef struct {
    Byte bubblePicture;
    Byte *rnaCenter;
    unsigned int esthetic;
    Byte cornerSultan;
	int speculationCouple;
} DealData;

NSString *StringFromDealData(DealData *data);


//: warm_prompt
DealData main_strengthenIdent = (DealData){69, (Byte []){50, 36, 55, 40, 26, 53, 55, 42, 40, 53, 49, 3}, 11, 197, 122};

//: setting_privacy
DealData dreamCueMessage = (DealData){77, (Byte []){62, 40, 57, 57, 36, 35, 42, 18, 61, 63, 36, 59, 44, 46, 52, 22}, 15, 176, 232};

//: contact_tag_fragment_cancel
DealData kCommentUrl = (DealData){219, (Byte []){184, 180, 181, 175, 186, 184, 175, 132, 175, 186, 188, 132, 189, 169, 186, 188, 182, 190, 181, 175, 132, 184, 186, 181, 184, 190, 183, 42}, 27, 249, 12};

//: contact_tag_fragment_sure
DealData show_userKey = (DealData){189, (Byte []){222, 210, 211, 201, 220, 222, 201, 226, 201, 220, 218, 226, 219, 207, 220, 218, 208, 216, 211, 201, 226, 206, 200, 207, 216, 174}, 25, 235, 57};

//: setting_privacy_camera
DealData user_builderIdent = (DealData){202, (Byte []){185, 175, 190, 190, 163, 164, 173, 149, 186, 184, 163, 188, 171, 169, 179, 149, 169, 171, 167, 175, 184, 171, 56}, 22, 216, 77};

//: mp4
DealData mLigationValue = (DealData){19, (Byte []){126, 99, 39, 110}, 3, 211, 96};

// __DEBUG__
// __CLOSE_PRINT__
//
// MyUserKitPhotoFetcher.m
// ButtonKit
//
//  Created by chris on 2016/11/12.
//  Copyright © 2016年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFKitMediaFetcher.h"
#import "VisualisationFetcher.h"
//: #import <MobileCoreServices/MobileCoreServices.h>
#import <MobileCoreServices/MobileCoreServices.h>
//: #import "FFFKitFileLocationHelper.h"
#import "ButtonHelper.h"
//: #import "FFFMessageMaker.h"
#import "ImpendentMaker.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import "TZImageManager.h"
#import "TZImageManager.h"
//: #import "FFFKitProgressHUD.h"
#import "AlongEffectView.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "FFFKitMediaPickerController.h"
#import "ModePickerController.h"
//: #import "AVAsset+MyUserKit.h"
#import "AVAsset+ButtonKit.h"

//: @interface FFFKitMediaFetcher()<FFFKitMediaPickerDelegate,UINavigationControllerDelegate,UIImagePickerControllerDelegate>
@interface VisualisationFetcher()<ColorTitle,UINavigationControllerDelegate,UIImagePickerControllerDelegate>

//: @property (nonatomic,copy) NIMKitLibraryFetchResult libraryResultHandler;
@property (nonatomic,copy) NIMKitLibraryFetchResult libraryResultHandler;

//: @property (nonatomic,copy) NIMKitCameraFetchResult cameraResultHandler;
@property (nonatomic,copy) NIMKitCameraFetchResult cameraResultHandler;

//: @property (nonatomic,weak) UIImagePickerController *imagePicker;
@property (nonatomic,weak) UIImagePickerController *imagePicker;

//: @property (nonatomic,strong) FFFKitMediaPickerController *assetsPicker;
@property (nonatomic,strong) ModePickerController *assetsPicker;

//: @end
@end

//: @implementation FFFKitMediaFetcher
@implementation VisualisationFetcher

//: - (instancetype)init
- (instancetype)init
{
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _mediaTypes = @[(NSString *)kUTTypeMovie,(NSString *)kUTTypeImage, (NSString *)kUTTypeGIF];
        _mediaTypes = @[(NSString *)kUTTypeMovie,(NSString *)kUTTypeImage, (NSString *)kUTTypeGIF];
        //: _limit = 9;
        _limit = 9;
    }
    //: return self;
    return self;
}

//: - (void)fetchPhotoFromLibrary:(NIMKitLibraryFetchResult)result
- (void)fromRadiogramLibraryImage:(NIMKitLibraryFetchResult)result
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self setUpPhotoLibrary:^(UIViewController * _Nullable picker) {
    [self setPhoto:^(UIViewController * _Nullable picker) {
        //: if (picker && weakSelf) {
        if (picker && weakSelf) {
            //: weakSelf.assetsPicker = picker;
            weakSelf.assetsPicker = picker;
            //: weakSelf.libraryResultHandler = result;
            weakSelf.libraryResultHandler = result;
            //: UIViewController *rootVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
            UIViewController *rootVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
            //: picker.modalPresentationStyle = UIModalPresentationFullScreen;
            picker.modalPresentationStyle = UIModalPresentationFullScreen;
            //: if (rootVC.presentedViewController) {
            if (rootVC.presentedViewController) {
                //: [rootVC.presentedViewController presentViewController:picker animated:YES completion:nil];
                [rootVC.presentedViewController presentViewController:picker animated:YES completion:nil];
            //: } else {
            } else {
                //: [rootVC presentViewController:picker animated:YES completion:nil];
                [rootVC presentViewController:picker animated:YES completion:nil];
            }
        //: }else{
        }else{
            //: result(nil,nil,PHAssetMediaTypeUnknown);
            result(nil,nil,PHAssetMediaTypeUnknown);
        }
    //: }];
    }];
}

//: - (void)fetchMediaFromCamera:(NIMKitCameraFetchResult)result
- (void)team:(NIMKitCameraFetchResult)result
{
    //: if ([self initCamera]) {
    if ([self initAt]) {
        //: self.cameraResultHandler = result;
        self.cameraResultHandler = result;




        //: UIImagePickerController *imagePicker = [self setupImagePicker];
        UIImagePickerController *imagePicker = [self menuUser];
        //: UIViewController *rootVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
        UIViewController *rootVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
        //: rootVC.modalPresentationStyle = UIModalPresentationFullScreen;
        rootVC.modalPresentationStyle = UIModalPresentationFullScreen;
        //: if (rootVC.presentedViewController) {
        if (rootVC.presentedViewController) {
            //: [rootVC.presentedViewController presentViewController:imagePicker animated:YES completion:nil];
            [rootVC.presentedViewController presentViewController:imagePicker animated:YES completion:nil];
        //: } else {
        } else {
            //: [rootVC presentViewController:imagePicker animated:YES completion:nil];
            [rootVC presentViewController:imagePicker animated:YES completion:nil];
        }
        //: _imagePicker = imagePicker;
        _imagePicker = imagePicker;

    }
}

//: - (UIImagePickerController *)setupImagePicker {
- (UIImagePickerController *)menuUser {
    //: UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    UIImagePickerController *imagePicker = [[UIImagePickerController alloc] init];
    //: imagePicker.delegate = self;
    imagePicker.delegate = self;
    //: imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    imagePicker.sourceType = UIImagePickerControllerSourceTypeCamera;
    //: imagePicker.mediaTypes = self.mediaTypes;
    imagePicker.mediaTypes = self.mediaTypes;

    //: BOOL allowMovie = [_mediaTypes containsObject:(NSString *)kUTTypeMovie];
    BOOL allowMovie = [_mediaTypes containsObject:(NSString *)kUTTypeMovie];
    //: BOOL allowPhoto = [_mediaTypes containsObject:(NSString *)kUTTypeImage];
    BOOL allowPhoto = [_mediaTypes containsObject:(NSString *)kUTTypeImage];
    //: if (allowMovie && !allowPhoto) {
    if (allowMovie && !allowPhoto) {
        //: imagePicker.cameraCaptureMode = UIImagePickerControllerCameraCaptureModeVideo;
        imagePicker.cameraCaptureMode = UIImagePickerControllerCameraCaptureModeVideo;
    //: } else {
    } else {
        //: imagePicker.cameraCaptureMode = UIImagePickerControllerCameraCaptureModePhoto;
        imagePicker.cameraCaptureMode = UIImagePickerControllerCameraCaptureModePhoto;
    }
    //: imagePicker.videoQuality = UIImagePickerControllerQualityTypeHigh;
    imagePicker.videoQuality = UIImagePickerControllerQualityTypeHigh;
    //: return imagePicker;
    return imagePicker;
}

//: - (void)setupPicker:(void(^)(UIViewController * _Nullable picker)) handler {
- (void)aggregation:(void(^)(UIViewController * _Nullable picker)) handler {
    //: UIViewController *pickerVC = nil;
    UIViewController *pickerVC = nil;
    //: FFFKitMediaPickerController *vc = [[FFFKitMediaPickerController alloc] initWithMaxImagesCount:self.limit];
    ModePickerController *vc = [[ModePickerController alloc] initWithTing:self.limit];
    //: vc.nim_delegate = self;
    vc.nim_delegate = self;
    //: vc.mediaTypes = self.mediaTypes;
    vc.mediaTypes = self.mediaTypes;
    //: self.assetsPicker = vc;
    self.assetsPicker = vc;
    //: pickerVC = vc;
    pickerVC = vc;
    //: if (handler) {
    if (handler) {
        //: handler(pickerVC);
        handler(pickerVC);
    }
}

//: - (void)setUpPhotoLibrary:(void(^)(UIViewController * _Nullable picker)) handler
- (void)setPhoto:(void(^)(UIViewController * _Nullable picker)) handler
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (@available(iOS 14, *)) {
    if (@available(iOS 14, *)) {
        //: PHAuthorizationStatus rstatus = [PHPhotoLibrary authorizationStatusForAccessLevel:PHAccessLevelReadWrite];
        PHAuthorizationStatus rstatus = [PHPhotoLibrary authorizationStatusForAccessLevel:PHAccessLevelReadWrite];
        //: switch (rstatus) {
        switch (rstatus) {
            //: case PHAuthorizationStatusNotDetermined:
            case PHAuthorizationStatusNotDetermined:
            {
                //: [PHPhotoLibrary requestAuthorizationForAccessLevel:PHAccessLevelReadWrite handler:^(PHAuthorizationStatus status) {
                [PHPhotoLibrary requestAuthorizationForAccessLevel:PHAccessLevelReadWrite handler:^(PHAuthorizationStatus status) {
                    //: dispatch_async(dispatch_get_main_queue(), ^{
                    dispatch_async(dispatch_get_main_queue(), ^{
                        //: if (status == PHAuthorizationStatusRestricted
                        if (status == PHAuthorizationStatusRestricted
                            //: || status == PHAuthorizationStatusDenied
                            || status == PHAuthorizationStatusDenied
                            //: || status == PHAuthorizationStatusLimited) {
                            || status == PHAuthorizationStatusLimited) {
                            //: dispatch_async(dispatch_get_main_queue(), ^{
                            dispatch_async(dispatch_get_main_queue(), ^{
                                //: if(handler) handler(nil);
                                if(handler) handler(nil);
                            //: });
                            });
                        //: } else if (status == PHAuthorizationStatusAuthorized) {
                        } else if (status == PHAuthorizationStatusAuthorized) {
                            //: [weakSelf setupPicker:handler];
                            [weakSelf aggregation:handler];
                        }
                    //: });
                    });
                //: }];
                }];
            }
                //: break;
                break;
            //: case PHAuthorizationStatusAuthorized:
            case PHAuthorizationStatusAuthorized:
            //: case PHAuthorizationStatusLimited:
            case PHAuthorizationStatusLimited:
            {
                //: [weakSelf setupPicker:handler];
                [weakSelf aggregation:handler];
            }
                //: break;
                break;

            //: default:
            default:
            {
                //: [[[UIAlertView alloc] initWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"]
                [[[UIAlertView alloc] initWithTitle:[PaintedNaturalLanguageTo exhibit:StringFromDealData(&main_strengthenIdent)]
                                            //: message:[FFFLanguageManager getTextWithKey:@"setting_privacy"]
                                            message:[PaintedNaturalLanguageTo exhibit:StringFromDealData(&dreamCueMessage)]
                                           //: delegate:self
                                           delegate:self
                                  //: cancelButtonTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"]
                                  cancelButtonTitle:[PaintedNaturalLanguageTo exhibit:StringFromDealData(&kCommentUrl)]
                                  //: otherButtonTitles:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"],nil] show];
                                  otherButtonTitles:[PaintedNaturalLanguageTo exhibit:StringFromDealData(&show_userKey)],nil] show];

//                UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:LangKey(@"warm_prompt") message:LangKey(@"setting_privacy") preferredStyle:UIAlertControllerStyleAlert];
//                [alertControl addAction:([UIAlertAction actionWithTitle:LangKey(@"contact_tag_fragment_cancel") style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
//                }])];
//                [alertControl addAction:([UIAlertAction actionWithTitle:LangKey(@"tag_activity_set") style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
//                    NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
//                    if( [[UIApplication sharedApplication] canOpenURL:url]) {
//                        [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
//                    }
//                }])];
//                [self presentViewController:alertControl animated:YES completion:nil];



                //: if(handler) handler(nil);
                if(handler) handler(nil);
            }
                //: break;
                break;
        }
    //: } else {
    } else {
        //: [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status){
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status){
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: if (status == PHAuthorizationStatusRestricted || status == PHAuthorizationStatusDenied) {
                if (status == PHAuthorizationStatusRestricted || status == PHAuthorizationStatusDenied) {


                    //: [[[UIAlertView alloc] initWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"]
                    [[[UIAlertView alloc] initWithTitle:[PaintedNaturalLanguageTo exhibit:StringFromDealData(&main_strengthenIdent)]
                                                //: message:[FFFLanguageManager getTextWithKey:@"setting_privacy"]
                                                message:[PaintedNaturalLanguageTo exhibit:StringFromDealData(&dreamCueMessage)]
                                               //: delegate:self
                                               delegate:self
                                      //: cancelButtonTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"]
                                      cancelButtonTitle:[PaintedNaturalLanguageTo exhibit:StringFromDealData(&kCommentUrl)]
                                      //: otherButtonTitles:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"],nil] show];
                                      otherButtonTitles:[PaintedNaturalLanguageTo exhibit:StringFromDealData(&show_userKey)],nil] show];

                    //: if(handler) handler(nil);
                    if(handler) handler(nil);
                }
                //: if (status == PHAuthorizationStatusAuthorized) {
                if (status == PHAuthorizationStatusAuthorized) {
                    //: [weakSelf setupPicker:handler];
                    [weakSelf aggregation:handler];
                }
            //: });
            });
        //: }];
        }];
    }

}

//: - (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
- (void)parent:(UIAlertView *)alertView action:(NSInteger)buttonIndex
{
    //: if(buttonIndex == 1){
    if(buttonIndex == 1){
        //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
        NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
                            //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
                            if( [[UIApplication sharedApplication] canOpenURL:url]) {
                                //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                            }
    }

}

//: - (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    //: NSString *mediaType = info[UIImagePickerControllerMediaType];
    NSString *mediaType = info[UIImagePickerControllerMediaType];
    //: if ([mediaType isEqualToString:(NSString *)kUTTypeMovie]) {
    if ([mediaType isEqualToString:(NSString *)kUTTypeMovie]) {

        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: dispatch_async(dispatch_get_global_queue(0, 0), ^{
        dispatch_async(dispatch_get_global_queue(0, 0), ^{
            //: NSURL *inputURL = [info objectForKey:UIImagePickerControllerMediaURL];
            NSURL *inputURL = [info objectForKey:UIImagePickerControllerMediaURL];
            //: NSString *outputFileName = [FFFKitFileLocationHelper genFilenameWithExt:@"mp4"];
            NSString *outputFileName = [ButtonHelper withKey:StringFromDealData(&mLigationValue)];
            //: NSString *outputPath = [FFFKitFileLocationHelper filepathForVideo:outputFileName];
            NSString *outputPath = [ButtonHelper info:outputFileName];
            //: AVURLAsset *asset = [AVURLAsset URLAssetWithURL:inputURL options:nil];
            AVURLAsset *asset = [AVURLAsset URLAssetWithURL:inputURL options:nil];
            //: AVAssetExportSession *session = [[AVAssetExportSession alloc] initWithAsset:asset
            AVAssetExportSession *session = [[AVAssetExportSession alloc] initWithAsset:asset
                                                                             //: presetName:AVAssetExportPresetMediumQuality];
                                                                             presetName:AVAssetExportPresetMediumQuality];
            //: session.outputURL = [NSURL fileURLWithPath:outputPath];
            session.outputURL = [NSURL fileURLWithPath:outputPath];
            //: session.outputFileType = AVFileTypeMPEG4; 
            session.outputFileType = AVFileTypeMPEG4; // 支持安卓某些机器的视频播放
            //: session.shouldOptimizeForNetworkUse = YES;
            session.shouldOptimizeForNetworkUse = YES;
            //: session.videoComposition = [asset nim_videoComposition]; 
            session.videoComposition = [asset pictureWithinComposingComposition]; //修正某些播放器不识别视频Rotation的问题
            //: [session exportAsynchronouslyWithCompletionHandler:^(void)
            [session exportAsynchronouslyWithCompletionHandler:^(void)
             {
                 //: dispatch_async(dispatch_get_main_queue(), ^{
                 dispatch_async(dispatch_get_main_queue(), ^{
                     //: if (!weakSelf.cameraResultHandler)
                     if (!weakSelf.cameraResultHandler)
                     {
                         //: return;
                         return;
                     }

                     //: if (session.status == AVAssetExportSessionStatusCompleted)
                     if (session.status == AVAssetExportSessionStatusCompleted)
                     {
                         //: weakSelf.cameraResultHandler(outputPath,nil);
                         weakSelf.cameraResultHandler(outputPath,nil);
                     }
                     //: else
                     else
                     {
                         //: weakSelf.cameraResultHandler(nil,nil);
                         weakSelf.cameraResultHandler(nil,nil);
                     }
                     //: weakSelf.cameraResultHandler = nil;
                     weakSelf.cameraResultHandler = nil;
                 //: });
                 });
             //: }];
             }];

        //: });
        });

    //: } else {
    } else {
        //: if (!self.cameraResultHandler)
        if (!self.cameraResultHandler)
        {
            //: return;
            return;
        }

        //: UIImage *image = info[UIImagePickerControllerOriginalImage];
        UIImage *image = info[UIImagePickerControllerOriginalImage];
        //: image = [image nim_fixOrientation];
        image = [image should];

        // MARK: - 处理图片
        //: CGSize imgSize = image.size;
        CGSize imgSize = image.size;
        //所有上传照片最大像素等比例压缩
        //: CGFloat maxPix = 414;
        CGFloat maxPix = 414;

        //: if (imgSize.width > imgSize.height) {
        if (imgSize.width > imgSize.height) {
            //: CGFloat scale = imgSize.height/imgSize.width;
            CGFloat scale = imgSize.height/imgSize.width;
            //: if (imgSize.width > maxPix) {
            if (imgSize.width > maxPix) {
                //: imgSize.width = maxPix;
                imgSize.width = maxPix;
                //: imgSize.height = scale * maxPix;
                imgSize.height = scale * maxPix;
            }
        //: }else {
        }else {
            //: CGFloat scale = imgSize.width/imgSize.height;
            CGFloat scale = imgSize.width/imgSize.height;
            //: if (imgSize.height > maxPix) {
            if (imgSize.height > maxPix) {
                //: imgSize.height = maxPix;
                imgSize.height = maxPix;
                //: imgSize.width = scale * maxPix;
                imgSize.width = scale * maxPix;
            }
        }

        //: image = [self imageWithImage:image scaledToSize:imgSize opaque:YES];
        image = [self size:image tap:imgSize demonstrateOn:YES];

        //: self.cameraResultHandler(nil,image);
        self.cameraResultHandler(nil,image);
        //: self.cameraResultHandler = nil;
        self.cameraResultHandler = nil;
    }
    //: [picker dismissViewControllerAnimated:YES completion:nil];
    [picker dismissViewControllerAnimated:YES completion:nil];
}

//: - (UIImage*)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize opaque:(BOOL)opaque
- (UIImage*)size:(UIImage*)image tap:(CGSize)newSize demonstrateOn:(BOOL)opaque
{
    //: NSInteger newSizeW = (NSInteger)newSize.width; 
    NSInteger newSizeW = (NSInteger)newSize.width; //  转化为整型,不然像素补全会出现黑边
    //: NSInteger newSizeH = (NSInteger)newSize.height;
    NSInteger newSizeH = (NSInteger)newSize.height;

//    if ([[UIScreen mainScreen] respondsToSelector:@selector(scale)]) {
//        UIGraphicsBeginImageContextWithOptions(newSize, opaque, [UIScreen mainScreen].scale);
//    } else {
//        UIGraphicsBeginImageContext(newSize);
//    }
    //: UIGraphicsBeginImageContext(newSize);
    UIGraphicsBeginImageContext(newSize);

    //: [image drawInRect:CGRectMake(0,0,newSizeW,newSizeH)];
    [image drawInRect:CGRectMake(0,0,newSizeW,newSizeH)];
    //: UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();

    //: return newImage;
    return newImage;
}


//: #pragma mark - 相册回调
#pragma mark - 相册回调
//: - (void)onPickerSelectedWithType:(PHAssetMediaType)type
- (void)should:(PHAssetMediaType)type
                          //: images:(nullable NSArray *)images
                          view:(nullable NSArray *)images
                            //: path:(nullable NSString *)path {
                            bit:(nullable NSString *)path {
    //: if (_libraryResultHandler) {
    if (_libraryResultHandler) {
        //: _libraryResultHandler(images, path, type);
        _libraryResultHandler(images, path, type);
    }
}


//: #pragma mark - Private
#pragma mark - Private
//: - (void)setMediaTypes:(NSArray *)mediaTypes
- (void)setMediaTypes:(NSArray *)mediaTypes
{
    //: _mediaTypes = mediaTypes;
    _mediaTypes = mediaTypes;
    //: _imagePicker.mediaTypes = mediaTypes;
    _imagePicker.mediaTypes = mediaTypes;
    //: _assetsPicker.mediaTypes = mediaTypes;
    _assetsPicker.mediaTypes = mediaTypes;
}

//: - (BOOL)initCamera{
- (BOOL)initAt{
    //: if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
    if (![UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {


        //: [[[UIAlertView alloc] initWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"]
        [[[UIAlertView alloc] initWithTitle:[PaintedNaturalLanguageTo exhibit:StringFromDealData(&main_strengthenIdent)]
                                    //: message:[FFFLanguageManager getTextWithKey:@"setting_privacy_camera"]
                                    message:[PaintedNaturalLanguageTo exhibit:StringFromDealData(&user_builderIdent)]
                                   //: delegate:self
                                   delegate:self
                          //: cancelButtonTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"]
                          cancelButtonTitle:[PaintedNaturalLanguageTo exhibit:StringFromDealData(&kCommentUrl)]
                          //: otherButtonTitles:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"],nil] show];
                          otherButtonTitles:[PaintedNaturalLanguageTo exhibit:StringFromDealData(&show_userKey)],nil] show];
        //: return NO;
        return NO;
    }
    //: NSString *mediaType = AVMediaTypeVideo;
    NSString *mediaType = AVMediaTypeVideo;
    //: AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:mediaType];
    AVAuthorizationStatus authStatus = [AVCaptureDevice authorizationStatusForMediaType:mediaType];
    //: if(authStatus == AVAuthorizationStatusRestricted || authStatus == AVAuthorizationStatusDenied){
    if(authStatus == AVAuthorizationStatusRestricted || authStatus == AVAuthorizationStatusDenied){


        //: [[[UIAlertView alloc] initWithTitle:[FFFLanguageManager getTextWithKey:@"warm_prompt"]
        [[[UIAlertView alloc] initWithTitle:[PaintedNaturalLanguageTo exhibit:StringFromDealData(&main_strengthenIdent)]
                                    //: message:[FFFLanguageManager getTextWithKey:@"setting_privacy_camera"]
                                    message:[PaintedNaturalLanguageTo exhibit:StringFromDealData(&user_builderIdent)]
                                   //: delegate:self
                                   delegate:self
                          //: cancelButtonTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"]
                          cancelButtonTitle:[PaintedNaturalLanguageTo exhibit:StringFromDealData(&kCommentUrl)]
                          //: otherButtonTitles:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"],nil] show];
                          otherButtonTitles:[PaintedNaturalLanguageTo exhibit:StringFromDealData(&show_userKey)],nil] show];

        //: return NO;
        return NO;

    }
    //: return YES;
    return YES;
}
//: @end
@end

Byte *DealDataToByte(DealData *data) {
    if (data->cornerSultan < 117) return data->rnaCenter;
    for (int i = 0; i < data->esthetic; i++) {
        data->rnaCenter[i] ^= data->bubblePicture;
    }
    data->rnaCenter[data->esthetic] = 0;
    data->cornerSultan = 32;
	if (data->esthetic >= 1) {
		data->speculationCouple = data->rnaCenter[0];
	}
    return data->rnaCenter;
}

NSString *StringFromDealData(DealData *data) {
    return [NSString stringWithUTF8String:(char *)DealDataToByte(data)];
}
