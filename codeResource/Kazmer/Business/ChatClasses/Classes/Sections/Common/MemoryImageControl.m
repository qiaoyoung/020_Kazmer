
#import <Foundation/Foundation.h>

typedef struct {
    Byte moo;
    Byte *inspectionVersus;
    unsigned int rentalCell;
	int burningEchoItem;
	int indianReservation;
	int wherever;
} StructGearStepData;

@interface GearStepData : NSObject

@end

@implementation GearStepData

+ (NSData *)GearStepDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)GearStepDataToByte:(StructGearStepData *)data {
    for (int i = 0; i < data->rentalCell; i++) {
        data->inspectionVersus[i] ^= data->moo;
    }
    data->inspectionVersus[data->rentalCell] = 0;
	if (data->rentalCell >= 3) {
		data->burningEchoItem = data->inspectionVersus[0];
		data->indianReservation = data->inspectionVersus[1];
		data->wherever = data->inspectionVersus[2];
	}
    return data->inspectionVersus;
}

+ (NSString *)StringFromGearStepData:(StructGearStepData *)data {
    return [NSString stringWithUTF8String:(char *)[self GearStepDataToByte:data]];
}

//: head_default_group
+ (NSString *)kNameGreatlyString {
    /* static */ NSString *kNameGreatlyString = nil;
    if (!kNameGreatlyString) {
		NSString *origin = @"14191d182318191a1d091008231b0e13090c69";
		NSData *data = [GearStepData GearStepDataToData:origin];
        StructGearStepData value = (StructGearStepData){124, (Byte *)data.bytes, 18, 227, 63, 155};
        kNameGreatlyString = [self StringFromGearStepData:&value];
    }
    return kNameGreatlyString;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  MemoryImageControl.m
// Mortification
//
//  Created by chris on 15/2/10.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFAvatarImageView.h"
#import "MemoryImageControl.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "objc/runtime.h"
#import "objc/runtime.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "FFFKitInfoFetchOption.h"
#import "CellClean.h"
//: #import "FFFKitUrlManager.h"
#import "ManagingDirectorChange.h"

//: @interface FFFAvatarImageView()
@interface MemoryImageControl()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;

//: @end
@end

//: @implementation FFFAvatarImageView
@implementation MemoryImageControl

//: - (CGPathRef)path
- (CGPathRef)alongPage
{
    //: return [[UIBezierPath bezierPathWithRoundedRect:self.bounds
    return [[UIBezierPath bezierPathWithRoundedRect:self.bounds
                                       //: cornerRadius:self.cornerRadius] CGPath];
                                       cornerRadius:self.cornerRadius] CGPath];
}


//: - (void)setAvatarBySession:(NIMSession *)session
- (void)setSessionShoot:(NIMSession *)session
{
    //: FFFKitInfo *info = nil;
    CancelTeamCorner *info = nil;
    //: if (session.sessionType == NIMSessionTypeTeam) {
    if (session.sessionType == NIMSessionTypeTeam) {
        //: info = [[MyUserKit sharedKit] infoByTeam:session.sessionId option:nil];
        info = [[Mortification text] ability:session.sessionId naturalEvent_strong:nil];
//        info.avatarImage = [UIImage grayImageWithName:@"contact_group_header" color:RGB_COLOR_String(kCommonBGColor_All)];
        //: info.avatarImage = [UIImage imageNamed:@"head_default_group"];
        info.avatarImage = [UIImage imageNamed:[GearStepData kNameGreatlyString]];
    //: } else if (session.sessionType == NIMSessionTypeSuperTeam) {
    } else if (session.sessionType == NIMSessionTypeSuperTeam) {
        //: info = [[MyUserKit sharedKit] infoBySuperTeam:session.sessionId option:nil];
        info = [[Mortification text] cellList:session.sessionId view:nil];
//        info.avatarImage = [UIImage grayImageWithName:@"contact_group_header" color:RGB_COLOR_String(kCommonBGColor_All)];
        //: info.avatarImage = [UIImage imageNamed:@"head_default_group"];
        info.avatarImage = [UIImage imageNamed:[GearStepData kNameGreatlyString]];
    //: } else {
    } else {
        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        CellClean *option = [[CellClean alloc] init];
        //: option.session = session;
        option.session = session;
        //: info = [[MyUserKit sharedKit] infoByUser:session.sessionId option:option];
        info = [[Mortification text] tingVoice:session.sessionId keepingOption:option];
    }
    //: [self setImageWithUrlString:info.avatarUrlString placeholderImage:info.avatarImage options:0];
    [self ofOptions:info.avatarUrlString placeholderRestore:info.avatarImage back:0];
}

//: - (id)initWithCoder:(NSCoder *)aDecoder
- (id)initWithCoder:(NSCoder *)aDecoder
{
    //: if (self = [super initWithCoder:aDecoder])
    if (self = [super initWithCoder:aDecoder])
    {
        //: [self setup];
        [self managerSetup];
    }
    //: return self;
    return self;
}

//: - (id)initWithFrame:(CGRect)frame
- (id)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: [self setup];
        [self managerSetup];
    }
    //: return self;
    return self;
}


//: - (void)setup{
- (void)managerSetup{
    //: [self setupRadius];
    [self clean];
    //: _imageView = [[UIImageView alloc] initWithFrame:self.bounds];
    _imageView = [[UIImageView alloc] initWithFrame:self.bounds];
    //: _imageView.contentMode = UIViewContentModeScaleAspectFill;
    _imageView.contentMode = UIViewContentModeScaleAspectFill;
    //: _imageView.clipsToBounds = YES;
    _imageView.clipsToBounds = YES;
    //: [self addSubview:_imageView];
    [self addSubview:_imageView];
    //: _imageView.layer.masksToBounds = YES;
    _imageView.layer.masksToBounds = YES;
    //: _imageView.layer.cornerRadius = _cornerRadius;
    _imageView.layer.cornerRadius = _cornerRadius;
    //: self.backgroundColor = [UIColor clearColor];
    self.backgroundColor = [UIColor clearColor];

}


//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: [self setupRadius];
    [self clean];

    //: if (!__CGSizeEqualToSize(self.imageView.device_size, self.device_size))
    if (!__CGSizeEqualToSize(self.imageView.device_size, self.device_size))
    {
        //: self.imageView.device_size = self.device_size;
        self.imageView.device_size = self.device_size;
//        self.imageView.image = [self imageAddCorner:_image
//                                             radius:_cornerRadius
//                                            andSize:self.bounds.size];
        //: self.imageView.image = _image;
        self.imageView.image = _image;
    }

}

//: - (void)setImageWithUrlString:(NSString *)urlString placeholderImage:(UIImage *)placeholderImage options:(SDWebImageOptions)options {
- (void)ofOptions:(NSString *)urlString placeholderRestore:(UIImage *)placeholderImage back:(SDWebImageOptions)options {
    //: if (placeholderImage && self.image != placeholderImage) {
    if (placeholderImage && self.image != placeholderImage) {
        //: self.image = placeholderImage;
        self.image = placeholderImage;
    }
    //: if (urlString.length == 0) {
    if (urlString.length == 0) {
        //: return;
        return;
    }

    //查询
    //: __block NSURL *targetUrl = nil;
    __block NSURL *targetUrl = nil;
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [[FFFKitUrlManager shareManager] queryQriginalUrlWithShortUrl:urlString completion:^(NSString *originalUrl, NSError *error) {
    [[ManagingDirectorChange block] can:urlString streetwise:^(NSString *originalUrl, NSError *error) {
        //: if (urlString && !error) {
        if (urlString && !error) {
            //: targetUrl = [NSURL URLWithString:originalUrl];
            targetUrl = [NSURL URLWithString:originalUrl];
        //: } else {
        } else {
            //: targetUrl = [NSURL URLWithString:urlString];
            targetUrl = [NSURL URLWithString:urlString];
        }
        //: [weakSelf didSetImageUrl:targetUrl placeholderImage:placeholderImage options:options];
        [weakSelf down:targetUrl objectOptions:placeholderImage midfield:options];
    //: }];
    }];
}

//: - (void)setImage:(UIImage *)image
- (void)setImage:(UIImage *)image
{
    //: if (_image != image)
    if (_image != image)
    {
        //: _image = image;
        _image = image;
//        UIImage *fixedImage  = [self imageAddCorner:_image
//                                             radius:_cornerRadius
//                                            andSize:self.bounds.size];
        //: self.imageView.image = image;
        self.imageView.image = image;
    }
}

//: - (void)nim_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options {
- (void)sendWith:(NSURL *)url media:(UIImage *)placeholder doing:(SDWebImageOptions)options {
    //: [self setImageWithUrlString:url.absoluteString placeholderImage:placeholder options:options];
    [self ofOptions:url.absoluteString placeholderRestore:placeholder back:options];
}

//: - (void)setAvatarByMessage:(NIMMessage *)message
- (void)setPin:(NIMMessage *)message
{
    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    CellClean *option = [[CellClean alloc] init];
    //: option.message = message;
    option.message = message;
    //: NSString *from = message.from;
    NSString *from = message.from;
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:from option:option];
    CancelTeamCorner *info = [[Mortification text] tingVoice:from keepingOption:option];
    //: [self setImageWithUrlString:info.avatarUrlString placeholderImage:info.avatarImage options:0];
    [self ofOptions:info.avatarUrlString placeholderRestore:info.avatarImage back:0];
}

//: - (void)setupRadius{
- (void)clean{
    //: switch ([MyUserKit sharedKit].config.avatarType)
    switch ([Mortification text].config.avatarType)
    {
        //: case NIMKitAvatarTypeNone:
        case NIMKitAvatarTypeNone:
            //: _cornerRadius = 0;
            _cornerRadius = 0;
            //: break;
            break;
        //: case NIMKitAvatarTypeRounded:
        case NIMKitAvatarTypeRounded:
            //: _cornerRadius = self.device_width *.5f;
            _cornerRadius = self.device_width *.5f;//self.device_width *.5f;
            //: break;
            break;
        //: case NIMKitAvatarTypeRadiusCorner:
        case NIMKitAvatarTypeRadiusCorner:
            //: _cornerRadius = self.device_width *.5f;
            _cornerRadius = self.device_width *.5f;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
}

//: - (UIImage*)imageAddCorner:(UIImage *)image radius:(CGFloat)radius andSize:(CGSize)size
- (UIImage*)refreshBy:(UIImage *)image app:(CGFloat)radius action:(CGSize)size
{
    //: CGRect rect = CGRectMake(0, 0, size.width, size.height);
    CGRect rect = CGRectMake(0, 0, size.width, size.height);

    //: UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    //: CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //: CGPathRef path = self.path;
    CGPathRef path = self.alongPage;
    //: CGContextAddPath(ctx,path);
    CGContextAddPath(ctx,path);
    //: CGContextClip(ctx);
    CGContextClip(ctx);
    //: [image drawInRect:rect];
    [image drawInRect:rect];
    //: CGContextDrawPath(ctx, kCGPathFillStroke);
    CGContextDrawPath(ctx, kCGPathFillStroke);
    //: UIImage * newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIImage * newImage = UIGraphicsGetImageFromCurrentImageContext();
    //: UIGraphicsEndImageContext();
    UIGraphicsEndImageContext();
    //: return newImage;
    return newImage;
}

//: - (void)nim_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder {
- (void)past:(NSURL *)url display:(UIImage *)placeholder {
    //: [self setImageWithUrlString:url.absoluteString placeholderImage:placeholder options:0];
    [self ofOptions:url.absoluteString placeholderRestore:placeholder back:0];
}

//: - (void)didSetImageUrl:(NSURL *)url placeholderImage:(UIImage *)placeholderImage options:(SDWebImageOptions)options {
- (void)down:(NSURL *)url objectOptions:(UIImage *)placeholderImage midfield:(SDWebImageOptions)options {
    //: if (!url) {
    if (!url) {
        //: return;
        return;
    }
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
//    UIImage *fixedPlaceholderImage  = [self imageAddCorner:placeholderImage
//                                                    radius:_cornerRadius
//                                                   andSize:self.bounds.size];

    //: UIImage *fixedPlaceholderImage = placeholderImage;
    UIImage *fixedPlaceholderImage = placeholderImage;

    //: [_imageView sd_setImageWithURL:url
    [_imageView sd_setImageWithURL:url
                  //: placeholderImage:fixedPlaceholderImage
                  placeholderImage:fixedPlaceholderImage
                           //: options:SDWebImageAvoidAutoSetImage|SDWebImageDelayPlaceholder
                           options:SDWebImageAvoidAutoSetImage|SDWebImageDelayPlaceholder
                         //: completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
                         completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        //: if (image) {
        if (image) {
            //weakSelf.image = image;
            //: _imageView.image = image;
            _imageView.image = image;
            //: _image = image;
            _image = image;
        }

    //: }];
    }];


}
//: @end
@end