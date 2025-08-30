
#import <Foundation/Foundation.h>

typedef struct {
    Byte detailBeginRecent;
    Byte *confront;
    unsigned int wort;
	int listScience;
	int comeClassify;
} StructPrivacyData;

@interface PrivacyData : NSObject

+ (instancetype)sharedInstance;

//: NIMDemoEventNameOpenRedPacket
@property (nonatomic, copy) NSString *kTitleLoopString;

//: redid
@property (nonatomic, copy) NSString *kTextItData;

//: /wallet/isAcceptRed
@property (nonatomic, copy) NSString *kName_loopTitle;

//: pressed
@property (nonatomic, copy) NSString *kTitleSateValue;

//: 查看红包
@property (nonatomic, copy) NSString *kName_roveData;

//: icon_redpacket_
@property (nonatomic, copy) NSString *kTitleCompareValue;

//: isaccept
@property (nonatomic, copy) NSString *kTitleQualityValue;

//: icon_redpacket_custom
@property (nonatomic, copy) NSString *kTitle_etcString;

//: 领取红包
@property (nonatomic, copy) NSString *kContentHuhName;

@end

@implementation PrivacyData

+ (instancetype)sharedInstance {
    static PrivacyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)PrivacyDataToData:(NSString *)value {
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

- (Byte *)PrivacyDataToByte:(StructPrivacyData *)data {
    for (int i = 0; i < data->wort; i++) {
        data->confront[i] ^= data->detailBeginRecent;
    }
    data->confront[data->wort] = 0;
	if (data->wort >= 2) {
		data->listScience = data->confront[0];
		data->comeClassify = data->confront[1];
	}
    return data->confront;
}

- (NSString *)StringFromPrivacyData:(StructPrivacyData *)data {
    return [NSString stringWithUTF8String:(char *)[self PrivacyDataToByte:data]];
}

//: /wallet/isAcceptRed
- (NSString *)kName_loopTitle {
    if (!_kName_loopTitle) {
		NSString *origin = @"94CCDAD7D7DECF94D2C8FAD8D8DECBCFE9DEDF7B";
		NSData *data = [PrivacyData PrivacyDataToData:origin];
        StructPrivacyData value = (StructPrivacyData){187, (Byte *)data.bytes, 19, 230, 85};
        _kName_loopTitle = [self StringFromPrivacyData:&value];
    }
    return _kName_loopTitle;
}

//: NIMDemoEventNameOpenRedPacket
- (NSString *)kTitleLoopString {
    if (!_kTitleLoopString) {
		NSString *origin = @"585F5B52737B79536073786258777B73596673784473724677757D736210";
		NSData *data = [PrivacyData PrivacyDataToData:origin];
        StructPrivacyData value = (StructPrivacyData){22, (Byte *)data.bytes, 29, 107, 134};
        _kTitleLoopString = [self StringFromPrivacyData:&value];
    }
    return _kTitleLoopString;
}

//: 查看红包
- (NSString *)kName_roveData {
    if (!_kName_roveData) {
		NSString *origin = @"0B72480A71660A574F08616802";
		NSData *data = [PrivacyData PrivacyDataToData:origin];
        StructPrivacyData value = (StructPrivacyData){237, (Byte *)data.bytes, 12, 23, 76};
        _kName_roveData = [self StringFromPrivacyData:&value];
    }
    return _kName_roveData;
}

//: 领取红包
- (NSString *)kContentHuhName {
    if (!_kContentHuhName) {
		NSString *origin = @"DD96B2D1BBA2D38E96D1B8B1E1";
		NSData *data = [PrivacyData PrivacyDataToData:origin];
        StructPrivacyData value = (StructPrivacyData){52, (Byte *)data.bytes, 12, 134, 31};
        _kContentHuhName = [self StringFromPrivacyData:&value];
    }
    return _kContentHuhName;
}

//: redid
- (NSString *)kTextItData {
    if (!_kTextItData) {
		NSString *origin = @"8A9D9C919C73";
		NSData *data = [PrivacyData PrivacyDataToData:origin];
        StructPrivacyData value = (StructPrivacyData){248, (Byte *)data.bytes, 5, 143, 119};
        _kTextItData = [self StringFromPrivacyData:&value];
    }
    return _kTextItData;
}

//: pressed
- (NSString *)kTitleSateValue {
    if (!_kTitleSateValue) {
		NSString *origin = @"7371667070666797";
		NSData *data = [PrivacyData PrivacyDataToData:origin];
        StructPrivacyData value = (StructPrivacyData){3, (Byte *)data.bytes, 7, 73, 8};
        _kTitleSateValue = [self StringFromPrivacyData:&value];
    }
    return _kTitleSateValue;
}

//: icon_redpacket_custom
- (NSString *)kTitle_etcString {
    if (!_kTitle_etcString) {
		NSString *origin = @"E8E2EEEFDEF3E4E5F1E0E2EAE4F5DEE2F4F2F5EEEC8A";
		NSData *data = [PrivacyData PrivacyDataToData:origin];
        StructPrivacyData value = (StructPrivacyData){129, (Byte *)data.bytes, 21, 30, 79};
        _kTitle_etcString = [self StringFromPrivacyData:&value];
    }
    return _kTitle_etcString;
}

//: isaccept
- (NSString *)kTitleQualityValue {
    if (!_kTitleQualityValue) {
		NSString *origin = @"D5CFDDDFDFD9CCC851";
		NSData *data = [PrivacyData PrivacyDataToData:origin];
        StructPrivacyData value = (StructPrivacyData){188, (Byte *)data.bytes, 8, 209, 234};
        _kTitleQualityValue = [self StringFromPrivacyData:&value];
    }
    return _kTitleQualityValue;
}

//: icon_redpacket_
- (NSString *)kTitleCompareValue {
    if (!_kTitleCompareValue) {
		NSString *origin = @"ADA7ABAA9BB6A1A0B4A5A7AFA1B09BC7";
		NSData *data = [PrivacyData PrivacyDataToData:origin];
        StructPrivacyData value = (StructPrivacyData){196, (Byte *)data.bytes, 15, 86, 155};
        _kTitleCompareValue = [self StringFromPrivacyData:&value];
    }
    return _kTitleCompareValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  GrowingControl.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERSessionRedPacketContentView.h"
#import "GrowingControl.h"
//: #import "USERRedPacketAttachment.h"
#import "LabelTagContext.h"

//: NSString *const NIMDemoEventNameOpenRedPacket = @"NIMDemoEventNameOpenRedPacket";

NSString *const app_likelyMsg (NSString *value) {
    if (value) {
        return [value.capitalizedString stringByAppendingString:@"top"];
    }
    return  [PrivacyData sharedInstance].kTitleLoopString;
};

//: @interface USERSessionRedPacketContentView()
@interface GrowingControl()

//: @property (nonatomic ,strong) UIImageView *redPacketImage;
@property (nonatomic ,strong) UIImageView *redPacketImage;

//: @property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UILabel *titleLabel;

//: @property (nonatomic, strong) UILabel *subTitleLabel;
@property (nonatomic, strong) UILabel *subTitleLabel;

//: @property (nonatomic, strong) UILabel *descLabel;
@property (nonatomic, strong) UILabel *descLabel;

//: @property (nonatomic, strong) UIView *whiteView;
@property (nonatomic, strong) UIView *whiteView;

//: @property (nonatomic, strong) UITapGestureRecognizer *tap;
@property (nonatomic, strong) UITapGestureRecognizer *tap;

//: @end
@end

//: @implementation USERSessionRedPacketContentView
@implementation GrowingControl

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initCrop{
    //: self = [super initSessionMessageContentView];
    self = [super initCrop];
    //: if (self) {
    if (self) {
        // 内容布局
//        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _titleLabel.font = [UIFont systemFontOfSize:12.f];
//        _subTitleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _subTitleLabel.font = [UIFont systemFontOfSize:12.f];
//        _descLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//        _descLabel.font = [UIFont systemFontOfSize:13.f];

        //: _redPacketImage = [[UIImageView alloc] init];
        _redPacketImage = [[UIImageView alloc] init];
        //: _redPacketImage.clipsToBounds = YES;
        _redPacketImage.clipsToBounds = YES;
        //: _redPacketImage.contentMode = UIViewContentModeScaleAspectFill;
        _redPacketImage.contentMode = UIViewContentModeScaleAspectFill;
        //: _redPacketImage.image = [UIImage imageNamed:@"icon_redpacket_custom"];
        _redPacketImage.image = [UIImage imageNamed:[PrivacyData sharedInstance].kTitle_etcString];
        //: _redPacketImage.layer.masksToBounds = YES;
        _redPacketImage.layer.masksToBounds = YES;
        //: _redPacketImage.layer.cornerRadius = 10;
        _redPacketImage.layer.cornerRadius = 10;

        //: _whiteView = [[UIView alloc] init];
        _whiteView = [[UIView alloc] init];
        //: _whiteView.userInteractionEnabled = NO;
        _whiteView.userInteractionEnabled = NO;
        //: _whiteView.backgroundColor = [UIColor whiteColor];
        _whiteView.backgroundColor = [UIColor whiteColor];
        //: _whiteView.alpha = 0.5;
        _whiteView.alpha = 0.5;
        //: _whiteView.hidden = YES;
        _whiteView.hidden = YES;

        //: self.bubbleImageView.hidden = YES;
        self.bubbleImageView.hidden = YES;

        //: [self addSubview:_redPacketImage];
        [self addSubview:_redPacketImage];
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
        //: [self addSubview:_subTitleLabel];
        [self addSubview:_subTitleLabel];
        //: [self addSubview:_descLabel];
        [self addSubview:_descLabel];
        //: [self addSubview:_whiteView];
        [self addSubview:_whiteView];

    }
    //: return self;
    return self;
}


//: - (void)onTouchUpInside:(id)sender
- (void)labelled:(id)sender
{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(surprised:)]) {
        //: DisplayKitEvent *event = [[DisplayKitEvent alloc] init];
        ToiletKitSession *event = [[ToiletKitSession alloc] init];
        //: event.eventName = NIMDemoEventNameOpenRedPacket;
        event.eventName = app_likelyMsg(nil);
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate surprised:event];
    }
}

//: #pragma mark - 系统父类方法
#pragma mark - 系统父类方法
//: - (void)refresh:(DisplayMessageModel*)data{
- (void)from:(CleanDoing*)data{
    //: [super refresh:data];
    [super from:data];

    //: NIMCustomObject *object = data.message.messageObject;
    NIMCustomObject *object = data.message.messageObject;
    //: USERRedPacketAttachment *attachment = (USERRedPacketAttachment *)object.attachment;
    LabelTagContext *attachment = (LabelTagContext *)object.attachment;

    //: self.titleLabel.text = attachment.title;
    self.titleLabel.text = attachment.title;
    //: self.descLabel.text = attachment.content;
    self.descLabel.text = attachment.content;

    //: self.titleLabel.textColor = [UIColor lightGrayColor];
    self.titleLabel.textColor = [UIColor lightGrayColor];
    //: self.subTitleLabel.textColor = [UIColor whiteColor];
    self.subTitleLabel.textColor = [UIColor whiteColor];
    //: self.descLabel.textColor = [UIColor whiteColor];
    self.descLabel.textColor = [UIColor whiteColor];

    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];
    //: CGRect rect = self.titleLabel.frame;
    CGRect rect = self.titleLabel.frame;
    //: if (CGRectGetMaxX(rect) > self.bounds.size.width)
    if (CGRectGetMaxX(rect) > self.bounds.size.width)
    {
        //: rect.size.width = self.bounds.size.width - rect.origin.x - 20;
        rect.size.width = self.bounds.size.width - rect.origin.x - 20;
        //: self.titleLabel.frame = rect;
        self.titleLabel.frame = rect;
    }
    //: self.subTitleLabel.text = self.model.message.isOutgoingMsg? @"查看红包".user_localized : @"领取红包".user_localized;
    self.subTitleLabel.text = self.model.message.isOutgoingMsg? [PrivacyData sharedInstance].kName_roveData.nominate : [PrivacyData sharedInstance].kContentHuhName.nominate;

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"redid"] = attachment.redPacketId;
    dict[[PrivacyData sharedInstance].kTextItData] = attachment.redPacketId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/isAcceptRed"] params:dict isShow:NO success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[PrivacyData sharedInstance].kName_loopTitle] query:dict showThan:NO green:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *dataDict = [resultDict valueObjectForKey:@"data"];
        NSDictionary *dataDict = [resultDict buttonAt:@"data"];
        //: NSString *isaccept = [dataDict newStringValueForKey:@"isaccept"];
        NSString *isaccept = [dataDict comment:[PrivacyData sharedInstance].kTitleQualityValue];
        //: if (isaccept.integerValue == 0) {
        if (isaccept.integerValue == 0) {
            //: _whiteView.hidden = YES;
            _whiteView.hidden = YES;
        //: }else{
        }else{
            //: _whiteView.hidden = NO;
            _whiteView.hidden = NO;
        }
    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _redPacketImage.frame = CGRectMake(0, 0, 160, 180);
    _redPacketImage.frame = CGRectMake(0, 0, 160, 180);
    //: _whiteView.frame = CGRectMake(0, 0, 160, 180);
    _whiteView.frame = CGRectMake(0, 0, 160, 180);

    //: BOOL outgoing = self.model.message.isOutgoingMsg;
    BOOL outgoing = self.model.message.isOutgoingMsg;
    //: if (outgoing)
    if (outgoing)
    {
        //: self.descLabel.frame = CGRectMake(12.0f+31.f+12.f, 17.f, 160.f, 24.f);
        self.descLabel.frame = CGRectMake(12.0f+31.f+12.f, 17.f, 160.f, 24.f);
        //: self.subTitleLabel.frame = CGRectMake(12.0f+31.f+12.f, 39.f, 150.f, 20.f);
        self.subTitleLabel.frame = CGRectMake(12.0f+31.f+12.f, 39.f, 150.f, 20.f);
        //: self.titleLabel.frame = CGRectMake(7.0f, 93.f-18.f, 180.f, 21.f);
        self.titleLabel.frame = CGRectMake(7.0f, 93.f-18.f, 180.f, 21.f);
    }
    //: else
    else
    {
        //: self.descLabel.frame = CGRectMake(12.f+31.f+12.f, 17.f, 160.f, 24.f);
        self.descLabel.frame = CGRectMake(12.f+31.f+12.f, 17.f, 160.f, 24.f);
        //: self.subTitleLabel.frame = CGRectMake(12.f+31.f+12.f, 39.f, 150.f, 20.f);
        self.subTitleLabel.frame = CGRectMake(12.f+31.f+12.f, 39.f, 150.f, 20.f);
        //: self.titleLabel.frame = CGRectMake(14.f, 93.f-18.f, 180.f, 21.f);
        self.titleLabel.frame = CGRectMake(14.f, 93.f-18.f, 180.f, 21.f);
    }
}

//: - (UIImage *)chatBubbleImageForState:(UIControlState)state outgoing:(BOOL)outgoing
- (UIImage *)colorLength:(UIControlState)state label:(BOOL)outgoing
{
    //: NSString *stateString = state == UIControlStateNormal? @"normal" : @"pressed";
    NSString *stateString = state == UIControlStateNormal? @"normal" : [PrivacyData sharedInstance].kTitleSateValue;
    //: NSString *imageName = @"icon_redpacket_";
    NSString *imageName = [PrivacyData sharedInstance].kTitleCompareValue;
    //: if (outgoing)
    if (outgoing)
    {
        //: imageName = [imageName stringByAppendingString:@"from_"];
        imageName = [imageName stringByAppendingString:@"from_"];
    }
    //: else
    else
    {
        //: imageName = [imageName stringByAppendingString:@"to_"];
        imageName = [imageName stringByAppendingString:@"to_"];
    }
    //: imageName = [imageName stringByAppendingString:stateString];
    imageName = [imageName stringByAppendingString:stateString];
    //: return [UIImage imageNamed:imageName];
    return [UIImage imageNamed:imageName];
}

//: @end
@end
//: __SAVE__ ignore_string [339.3,649.6,436.4,410.4]
