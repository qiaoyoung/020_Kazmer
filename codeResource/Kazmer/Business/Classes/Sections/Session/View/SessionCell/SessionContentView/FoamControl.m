
#import <Foundation/Foundation.h>

@interface NewspaperData : NSObject

+ (instancetype)sharedInstance;

//: isaccept
@property (nonatomic, copy) NSString *k_normalMessage;

//: normal
@property (nonatomic, copy) NSString *showMediaTableUrl;

//: icon_redpacket_
@property (nonatomic, copy) NSString *user_clusterBidMessage;

//: from_
@property (nonatomic, copy) NSString *mHorribleData;

//: redid
@property (nonatomic, copy) NSString *appFreedCigarMessage;

//: icon_redpacket_custom
@property (nonatomic, copy) NSString *main_scaleKey;

//: pressed
@property (nonatomic, copy) NSString *showEducationalText;

//: 领取红包
@property (nonatomic, copy) NSString *m_championId;

//: /wallet/isAcceptRed
@property (nonatomic, copy) NSString *k_veteranName;

//: 查看红包
@property (nonatomic, copy) NSString *app_allPath;

//: data
@property (nonatomic, copy) NSString *k_clubTapMessage;

@end

@implementation NewspaperData

+ (instancetype)sharedInstance {
    static NewspaperData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)NewspaperDataToCache:(Byte *)data {
    int whitetail = data[0];
    int admitSexyCluster = data[1];
    for (int i = 0; i < whitetail / 2; i++) {
        int begin = admitSexyCluster + i;
        int end = admitSexyCluster + whitetail - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[admitSexyCluster + whitetail] = 0;
    return data + admitSexyCluster;
}

- (NSString *)StringFromNewspaperData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self NewspaperDataToCache:data]];
}  

//: data
- (NSString *)k_clubTapMessage {
    if (!_k_clubTapMessage) {
        Byte value[] = {4, 9, 219, 190, 236, 227, 147, 220, 42, 97, 116, 97, 100, 60};
        _k_clubTapMessage = [self StringFromNewspaperData:value];
    }
    return _k_clubTapMessage;
}

//: 查看红包
- (NSString *)app_allPath {
    if (!_app_allPath) {
        Byte value[] = {12, 2, 133, 140, 229, 162, 186, 231, 139, 156, 231, 165, 159, 230, 135};
        _app_allPath = [self StringFromNewspaperData:value];
    }
    return _app_allPath;
}

//: icon_redpacket_
- (NSString *)user_clusterBidMessage {
    if (!_user_clusterBidMessage) {
        Byte value[] = {15, 4, 94, 145, 95, 116, 101, 107, 99, 97, 112, 100, 101, 114, 95, 110, 111, 99, 105, 213};
        _user_clusterBidMessage = [self StringFromNewspaperData:value];
    }
    return _user_clusterBidMessage;
}

//: isaccept
- (NSString *)k_normalMessage {
    if (!_k_normalMessage) {
        Byte value[] = {8, 12, 6, 219, 209, 9, 246, 64, 101, 167, 210, 155, 116, 112, 101, 99, 99, 97, 115, 105, 233};
        _k_normalMessage = [self StringFromNewspaperData:value];
    }
    return _k_normalMessage;
}

//: normal
- (NSString *)showMediaTableUrl {
    if (!_showMediaTableUrl) {
        Byte value[] = {6, 5, 45, 6, 125, 108, 97, 109, 114, 111, 110, 194};
        _showMediaTableUrl = [self StringFromNewspaperData:value];
    }
    return _showMediaTableUrl;
}

//: /wallet/isAcceptRed
- (NSString *)k_veteranName {
    if (!_k_veteranName) {
        Byte value[] = {19, 12, 227, 114, 28, 86, 164, 33, 14, 63, 228, 202, 100, 101, 82, 116, 112, 101, 99, 99, 65, 115, 105, 47, 116, 101, 108, 108, 97, 119, 47, 199};
        _k_veteranName = [self StringFromNewspaperData:value];
    }
    return _k_veteranName;
}

//: redid
- (NSString *)appFreedCigarMessage {
    if (!_appFreedCigarMessage) {
        Byte value[] = {5, 12, 248, 15, 155, 4, 82, 65, 120, 43, 189, 18, 100, 105, 100, 101, 114, 26};
        _appFreedCigarMessage = [self StringFromNewspaperData:value];
    }
    return _appFreedCigarMessage;
}

//: from_
- (NSString *)mHorribleData {
    if (!_mHorribleData) {
        Byte value[] = {5, 12, 108, 2, 245, 62, 26, 232, 73, 58, 35, 102, 95, 109, 111, 114, 102, 80};
        _mHorribleData = [self StringFromNewspaperData:value];
    }
    return _mHorribleData;
}

//: icon_redpacket_custom
- (NSString *)main_scaleKey {
    if (!_main_scaleKey) {
        Byte value[] = {21, 12, 137, 38, 109, 137, 199, 201, 218, 81, 70, 203, 109, 111, 116, 115, 117, 99, 95, 116, 101, 107, 99, 97, 112, 100, 101, 114, 95, 110, 111, 99, 105, 254};
        _main_scaleKey = [self StringFromNewspaperData:value];
    }
    return _main_scaleKey;
}

//: pressed
- (NSString *)showEducationalText {
    if (!_showEducationalText) {
        Byte value[] = {7, 12, 197, 96, 197, 95, 252, 111, 85, 26, 250, 152, 100, 101, 115, 115, 101, 114, 112, 23};
        _showEducationalText = [self StringFromNewspaperData:value];
    }
    return _showEducationalText;
}

//: 领取红包
- (NSString *)m_championId {
    if (!_m_championId) {
        Byte value[] = {12, 6, 227, 116, 30, 214, 133, 140, 229, 162, 186, 231, 150, 143, 229, 134, 162, 233, 76};
        _m_championId = [self StringFromNewspaperData:value];
    }
    return _m_championId;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  FoamControl.m
//  NIM
//
//  Created by chris on 2017/7/17.
//  Copyright © 2017年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESSessionRedPacketContentView.h"
#import "FoamControl.h"
//: #import "NTESRedPacketAttachment.h"
#import "InfoMessageBackground.h"

//: NSString *const NIMDemoEventNameOpenRedPacket = @"NIMDemoEventNameOpenRedPacket";
NSString *const user_maxMessage = @"NIMDemoEventNameOpenRedPacket";

//: @interface NTESSessionRedPacketContentView()
@interface FoamControl()

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

//: @implementation NTESSessionRedPacketContentView
@implementation FoamControl

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initSumView{
    //: self = [super initSessionMessageContentView];
    self = [super initSumView];
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
        _redPacketImage.image = [UIImage imageNamed:[NewspaperData sharedInstance].main_scaleKey];
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
- (void)searched:(id)sender
{
    //: if ([self.delegate respondsToSelector:@selector(onCatchEvent:)]) {
    if ([self.delegate respondsToSelector:@selector(modelled:)]) {
        //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
        CoverShowEvent *event = [[CoverShowEvent alloc] init];
        //: event.eventName = NIMDemoEventNameOpenRedPacket;
        event.eventName = user_maxMessage;
        //: event.messageModel = self.model;
        event.messageModel = self.model;
        //: event.data = self;
        event.data = self;
        //: [self.delegate onCatchEvent:event];
        [self.delegate modelled:event];
    }
}

//: #pragma mark - 系统父类方法
#pragma mark - 系统父类方法
//: - (void)refresh:(FFFMessageModel*)data{
- (void)lengthAt:(CentralProcessingUnitModel*)data{
    //: [super refresh:data];
    [super lengthAt:data];

    //: NIMCustomObject *object = data.message.messageObject;
    NIMCustomObject *object = data.message.messageObject;
    //: NTESRedPacketAttachment *attachment = (NTESRedPacketAttachment *)object.attachment;
    InfoMessageBackground *attachment = (InfoMessageBackground *)object.attachment;

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
    //: self.subTitleLabel.text = self.model.message.isOutgoingMsg? @"查看红包".ntes_localized : @"领取红包".ntes_localized;
    self.subTitleLabel.text = self.model.message.isOutgoingMsg? [NewspaperData sharedInstance].app_allPath.textIndex : [NewspaperData sharedInstance].m_championId.textIndex;

    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"redid"] = attachment.redPacketId;
    dict[[NewspaperData sharedInstance].appFreedCigarMessage] = attachment.redPacketId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/isAcceptRed"] params:dict isShow:NO success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[NewspaperData sharedInstance].k_veteranName] reload_strong:dict with:NO forward:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *dataDict = [resultDict valueObjectForKey:@"data"];
        NSDictionary *dataDict = [resultDict successAdd:[NewspaperData sharedInstance].k_clubTapMessage];
        //: NSString *isaccept = [dataDict newStringValueForKey:@"isaccept"];
        NSString *isaccept = [dataDict record:[NewspaperData sharedInstance].k_normalMessage];
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
    } title:^(id responseObject, NSError *error) {

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
- (UIImage *)upPage:(UIControlState)state accountVisualisation:(BOOL)outgoing
{
    //: NSString *stateString = state == UIControlStateNormal? @"normal" : @"pressed";
    NSString *stateString = state == UIControlStateNormal? [NewspaperData sharedInstance].showMediaTableUrl : [NewspaperData sharedInstance].showEducationalText;
    //: NSString *imageName = @"icon_redpacket_";
    NSString *imageName = [NewspaperData sharedInstance].user_clusterBidMessage;
    //: if (outgoing)
    if (outgoing)
    {
        //: imageName = [imageName stringByAppendingString:@"from_"];
        imageName = [imageName stringByAppendingString:[NewspaperData sharedInstance].mHorribleData];
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