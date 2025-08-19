
#import <Foundation/Foundation.h>

typedef struct {
    Byte curio;
    Byte *endeavor;
    unsigned int fuelJury;
} StructExcessData;

@interface ExcessData : NSObject

@end

@implementation ExcessData

+ (Byte *)ExcessDataToByte:(StructExcessData *)data {
    for (int i = 0; i < data->fuelJury; i++) {
        data->endeavor[i] ^= data->curio;
    }
    data->endeavor[data->fuelJury] = 0;
    return data->endeavor;
}

+ (NSString *)StringFromExcessData:(StructExcessData *)data {
    return [NSString stringWithUTF8String:(char *)[self ExcessDataToByte:data]];
}

//: icon_map
+ (NSString *)appEstheticPath {
    /* static */ NSString *appEstheticPath = nil;
    if (!appEstheticPath) {
        StructExcessData value = (StructExcessData){238, (Byte []){135, 141, 129, 128, 177, 131, 143, 158, 43}, 8};
        appEstheticPath = [self StringFromExcessData:&value];
    }
    return appEstheticPath;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageTextView.m
// ButtonKit
//
//  Created by chris on 15/2/28.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionLocationContentView.h"
#import "MessageTextView.h"
//: #import "FFFMessageModel.h"
#import "CentralProcessingUnitModel.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"

//: @interface FFFSessionLocationContentView()
@interface MessageTextView()

//: @property (nonatomic,strong) UIImageView * imageView;
@property (nonatomic,strong) UIImageView * imageView;

//: @property (nonatomic,strong) UILabel * titleLabel;
@property (nonatomic,strong) UILabel * titleLabel;

//: @end
@end

//: @implementation FFFSessionLocationContentView
@implementation MessageTextView

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initSumView{
    //: self = [super initSessionMessageContentView];
    self = [super initSumView];
    //: if (self) {
    if (self) {
        //: self.opaque = YES;
        self.opaque = YES;
        //: UIImage *image = [UIImage imageNamed:@"icon_map"];
        UIImage *image = [UIImage imageNamed:[ExcessData appEstheticPath]];
        //: _imageView = [[UIImageView alloc] initWithImage:image];
        _imageView = [[UIImageView alloc] initWithImage:image];

        //: CALayer *maskLayer = [CALayer layer];
        CALayer *maskLayer = [CALayer layer];
        //: maskLayer.cornerRadius = 13.0;
        maskLayer.cornerRadius = 13.0;
        //: maskLayer.backgroundColor = [UIColor blackColor].CGColor;
        maskLayer.backgroundColor = [UIColor blackColor].CGColor;
        //: maskLayer.frame = _imageView.bounds;
        maskLayer.frame = _imageView.bounds;
        //: _imageView.layer.mask = maskLayer;
        _imageView.layer.mask = maskLayer;

        //: [self addSubview:_imageView];
        [self addSubview:_imageView];

        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.numberOfLines = 0;
        _titleLabel.numberOfLines = 0;
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];

    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data
- (void)lengthAt:(CentralProcessingUnitModel *)data
{
    //: [super refresh:data];
    [super lengthAt:data];
    //: NIMLocationObject * locationObject = (NIMLocationObject*)self.model.message.messageObject;
    NIMLocationObject * locationObject = (NIMLocationObject*)self.model.message.messageObject;
    //: self.titleLabel.text = locationObject.title;
    self.titleLabel.text = locationObject.title;

    //: FFFKitSetting *setting = [[MyUserKit sharedKit].config setting:data.message];
    SubObject *setting = [[ButtonKit sheerOption].config date:data.message];

    //: self.titleLabel.textColor = setting.textColor;
    self.titleLabel.textColor = setting.textColor;
    //: self.titleLabel.font = setting.font;
    self.titleLabel.font = setting.font;
}

//: - (void)onTouchUpInside:(id)sender
- (void)searched:(id)sender
{
    //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
    CoverShowEvent *event = [[CoverShowEvent alloc] init];
    //: event.eventName = FFFKitEventNameTapContent;
    event.eventName = appCommentStr;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: [self.delegate onCatchEvent:event];
    [self.delegate modelled:event];
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _titleLabel.nim_width = self.nim_width - 20;
    _titleLabel.nim_width = self.nim_width - 20;
    //: _titleLabel.nim_height= 35.f;
    _titleLabel.nim_height= 35.f;
    //: self.titleLabel.nim_centerY = 90.f;
    self.titleLabel.nim_centerY = 90.f;
    //: self.titleLabel.nim_centerX = self.nim_width * .5f;
    self.titleLabel.nim_centerX = self.nim_width * .5f;
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;

    //: CGFloat tableViewWidth = self.superview.nim_width;
    CGFloat tableViewWidth = self.superview.nim_width;
    //: CGSize contentsize = [self.model contentSize:tableViewWidth];
    CGSize contentsize = [self.model indicator:tableViewWidth];

    //: CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, contentsize.width, contentsize.height);
    //: self.imageView.frame = imageViewFrame;
    self.imageView.frame = imageViewFrame;
}


//: @end
@end