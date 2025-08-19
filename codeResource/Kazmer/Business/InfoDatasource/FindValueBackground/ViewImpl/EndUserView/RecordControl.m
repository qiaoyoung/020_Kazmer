
#import <Foundation/Foundation.h>
typedef struct {
    Byte pieceLigation;
    Byte *overseeQuick;
    unsigned int crowCigar;
    Byte imageDynamics;
	int tunnelManUgly;
	int engagementMessage;
	int committee;
} HelicopterData;

NSString *StringFromHelicopterData(HelicopterData *data);


//: head_default_group
HelicopterData app_sexyNameMessage = (HelicopterData){220, (Byte []){180, 185, 189, 184, 131, 184, 185, 186, 189, 169, 176, 168, 131, 187, 174, 179, 169, 172, 212}, 18, 180, 36, 245, 125};

// __DEBUG__
// __CLOSE_PRINT__
//
//  RecordControl.m
// ButtonKit
//
//  Created by chris on 15/2/10.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchAvatarImageView.h"
#import "RecordControl.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "objc/runtime.h"
#import "objc/runtime.h"
//: #import "WatchKitDependency.h"
#import "WatchKitDependency.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//: #import "WatchKitInfoFetchOption.h"
#import "CoverTingContent.h"
//: #import "WatchKitUrlManager.h"
#import "KitShow.h"

//: @interface WatchAvatarImageView()
@interface RecordControl()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;

//: @end
@end

//: @implementation WatchAvatarImageView
@implementation RecordControl

//: - (id)initWithFrame:(CGRect)frame
- (id)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: [self setup];
        [self session];
    }
    //: return self;
    return self;
}


//: - (id)initWithCoder:(NSCoder *)aDecoder
- (id)initWithCoder:(NSCoder *)aDecoder
{
    //: if (self = [super initWithCoder:aDecoder])
    if (self = [super initWithCoder:aDecoder])
    {
        //: [self setup];
        [self session];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: [self setupRadius];
    [self dateTo];

    //: if (!__CGSizeEqualToSize(self.imageView.nim_size, self.nim_size))
    if (!__CGSizeEqualToSize(self.imageView.nim_size, self.nim_size))
    {
        //: self.imageView.nim_size = self.nim_size;
        self.imageView.nim_size = self.nim_size;
//        self.imageView.image = [self imageAddCorner:_image
//                                             radius:_cornerRadius
//                                            andSize:self.bounds.size];
        //: self.imageView.image = _image;
        self.imageView.image = _image;
    }

}

//: - (void)setup{
- (void)session{
    //: [self setupRadius];
    [self dateTo];
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


//: - (void)setupRadius{
- (void)dateTo{
    //: switch ([MyUserKit sharedKit].config.avatarType)
    switch ([ButtonKit sheerOption].config.avatarType)
    {
        //: case NIMKitAvatarTypeNone:
        case NIMKitAvatarTypeNone:
            //: _cornerRadius = 0;
            _cornerRadius = 0;
            //: break;
            break;
        //: case NIMKitAvatarTypeRounded:
        case NIMKitAvatarTypeRounded:
            //: _cornerRadius = self.nim_width *.5f;
            _cornerRadius = self.nim_width *.5f;//self.nim_width *.5f;
            //: break;
            break;
        //: case NIMKitAvatarTypeRadiusCorner:
        case NIMKitAvatarTypeRadiusCorner:
            //: _cornerRadius = self.nim_width *.5f;
            _cornerRadius = self.nim_width *.5f;
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
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

//: - (UIImage*)imageAddCorner:(UIImage *)image radius:(CGFloat)radius andSize:(CGSize)size
- (UIImage*)length:(UIImage *)image radiusView:(CGFloat)radius add:(CGSize)size
{
    //: CGRect rect = CGRectMake(0, 0, size.width, size.height);
    CGRect rect = CGRectMake(0, 0, size.width, size.height);

    //: UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    UIGraphicsBeginImageContextWithOptions(size, NO, [UIScreen mainScreen].scale);
    //: CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //: CGPathRef path = self.path;
    CGPathRef path = self.restore;
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

//: - (CGPathRef)path
- (CGPathRef)restore
{
    //: return [[UIBezierPath bezierPathWithRoundedRect:self.bounds
    return [[UIBezierPath bezierPathWithRoundedRect:self.bounds
                                       //: cornerRadius:self.cornerRadius] CGPath];
                                       cornerRadius:self.cornerRadius] CGPath];
}

//: - (void)setAvatarBySession:(NIMSession *)session
- (void)setIcon:(NIMSession *)session
{
    //: WatchKitInfo *info = nil;
    TingMessage *info = nil;
    //: if (session.sessionType == NIMSessionTypeTeam) {
    if (session.sessionType == NIMSessionTypeTeam) {
        //: info = [[MyUserKit sharedKit] infoByTeam:session.sessionId option:nil];
        info = [[ButtonKit sheerOption] pressMedia:session.sessionId sizeOption:nil];
//        info.avatarImage = [UIImage grayImageWithName:@"contact_group_header" color:RGB_COLOR_String(kCommonBGColor_All)];
        //: info.avatarImage = [UIImage imageNamed:@"head_default_group"];
        info.avatarImage = [UIImage imageNamed:StringFromHelicopterData(&app_sexyNameMessage)];
    //: } else if (session.sessionType == NIMSessionTypeSuperTeam) {
    } else if (session.sessionType == NIMSessionTypeSuperTeam) {
        //: info = [[MyUserKit sharedKit] infoBySuperTeam:session.sessionId option:nil];
        info = [[ButtonKit sheerOption] tiddler:session.sessionId ting:nil];
//        info.avatarImage = [UIImage grayImageWithName:@"contact_group_header" color:RGB_COLOR_String(kCommonBGColor_All)];
        //: info.avatarImage = [UIImage imageNamed:@"head_default_group"];
        info.avatarImage = [UIImage imageNamed:StringFromHelicopterData(&app_sexyNameMessage)];
    //: } else {
    } else {
        //: WatchKitInfoFetchOption *option = [[WatchKitInfoFetchOption alloc] init];
        CoverTingContent *option = [[CoverTingContent alloc] init];
        //: option.session = session;
        option.session = session;
        //: info = [[MyUserKit sharedKit] infoByUser:session.sessionId option:option];
        info = [[ButtonKit sheerOption] past:session.sessionId skinColour_strong:option];
    }
    //: [self setImageWithUrlString:info.avatarUrlString placeholderImage:info.avatarImage options:0];
    [self copernicanSystem:info.avatarUrlString container:info.avatarImage nameMentalPictureWithBucketAuditoryImagePlaceholderOptions:0];
}

//: - (void)setAvatarByMessage:(NIMMessage *)message
- (void)setStyleMessage:(NIMMessage *)message
{
    //: WatchKitInfoFetchOption *option = [[WatchKitInfoFetchOption alloc] init];
    CoverTingContent *option = [[CoverTingContent alloc] init];
    //: option.message = message;
    option.message = message;
    //: NSString *from = message.from;
    NSString *from = message.from;
    //: WatchKitInfo *info = [[MyUserKit sharedKit] infoByUser:from option:option];
    TingMessage *info = [[ButtonKit sheerOption] past:from skinColour_strong:option];
    //: [self setImageWithUrlString:info.avatarUrlString placeholderImage:info.avatarImage options:0];
    [self copernicanSystem:info.avatarUrlString container:info.avatarImage nameMentalPictureWithBucketAuditoryImagePlaceholderOptions:0];
}

//: - (void)nim_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder {
- (void)message:(NSURL *)url state:(UIImage *)placeholder {
    //: [self setImageWithUrlString:url.absoluteString placeholderImage:placeholder options:0];
    [self copernicanSystem:url.absoluteString container:placeholder nameMentalPictureWithBucketAuditoryImagePlaceholderOptions:0];
}

//: - (void)nim_setImageWithURL:(NSURL *)url placeholderImage:(UIImage *)placeholder options:(SDWebImageOptions)options {
- (void)press:(NSURL *)url title:(UIImage *)placeholder bubbleImageOptions:(SDWebImageOptions)options {
    //: [self setImageWithUrlString:url.absoluteString placeholderImage:placeholder options:options];
    [self copernicanSystem:url.absoluteString container:placeholder nameMentalPictureWithBucketAuditoryImagePlaceholderOptions:options];
}

//: - (void)setImageWithUrlString:(NSString *)urlString placeholderImage:(UIImage *)placeholderImage options:(SDWebImageOptions)options {
- (void)copernicanSystem:(NSString *)urlString container:(UIImage *)placeholderImage nameMentalPictureWithBucketAuditoryImagePlaceholderOptions:(SDWebImageOptions)options {
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
    //: [[WatchKitUrlManager shareManager] queryQriginalUrlWithShortUrl:urlString completion:^(NSString *originalUrl, NSError *error) {
    [[KitShow cornerShare] valueCompletion:urlString beyondScreenForce:^(NSString *originalUrl, NSError *error) {
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
        [weakSelf titleContent:targetUrl table:placeholderImage show:options];
    //: }];
    }];
}

//: - (void)didSetImageUrl:(NSURL *)url placeholderImage:(UIImage *)placeholderImage options:(SDWebImageOptions)options {
- (void)titleContent:(NSURL *)url table:(UIImage *)placeholderImage show:(SDWebImageOptions)options {
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

Byte *HelicopterDataToByte(HelicopterData *data) {
    if (data->imageDynamics < 139) return data->overseeQuick;
    for (int i = 0; i < data->crowCigar; i++) {
        data->overseeQuick[i] ^= data->pieceLigation;
    }
    data->overseeQuick[data->crowCigar] = 0;
    data->imageDynamics = 7;
	if (data->crowCigar >= 3) {
		data->tunnelManUgly = data->overseeQuick[0];
		data->engagementMessage = data->overseeQuick[1];
		data->committee = data->overseeQuick[2];
	}
    return data->overseeQuick;
}

NSString *StringFromHelicopterData(HelicopterData *data) {
    return [NSString stringWithUTF8String:(char *)HelicopterDataToByte(data)];
}
