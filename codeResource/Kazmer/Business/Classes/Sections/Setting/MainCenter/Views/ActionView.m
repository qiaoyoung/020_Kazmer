
#import <Foundation/Foundation.h>

@interface VitaminData : NSObject

+ (instancetype)sharedInstance;

//: #333333
@property (nonatomic, copy) NSString *kContentLastModelSeeminglyName;

//: #FF483D
@property (nonatomic, copy) NSString *kNameReservationTitle;

//: account_delete_tip1
@property (nonatomic, copy) NSString *kText_intactContent;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *kTitle_nonprofitString;

//: #2C3042
@property (nonatomic, copy) NSString *kNameMoleValue;

//: #5D5F66
@property (nonatomic, copy) NSString *kName_scienceValue;

//: contact_tag_fragment_cancel
@property (nonatomic, copy) NSString *kContent_civilianRecordString;

//: activity_comment_setting_cancel_account
@property (nonatomic, copy) NSString *kTextStableValue;

//: account_delete_tip2
@property (nonatomic, copy) NSString *kTitle_selectedData;

@end

@implementation VitaminData

//: contact_tag_fragment_sure
- (NSString *)kTitle_nonprofitString {
    if (!_kTitle_nonprofitString) {
		NSArray<NSNumber *> *origin = @[@25, @40, @13, @44, @184, @248, @171, @157, @241, @68, @245, @138, @131, @59, @71, @70, @76, @57, @59, @76, @55, @76, @57, @63, @55, @62, @74, @57, @63, @69, @61, @70, @76, @55, @75, @77, @74, @61, @133];
		NSData *data = [VitaminData VitaminDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_nonprofitString = [self StringFromVitaminData:value];
    }
    return _kTitle_nonprofitString;
}

//: #FF483D
- (NSString *)kNameReservationTitle {
    if (!_kNameReservationTitle) {
		NSArray<NSNumber *> *origin = @[@7, @40, @8, @160, @67, @226, @81, @123, @251, @30, @30, @12, @16, @11, @28, @105];
		NSData *data = [VitaminData VitaminDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameReservationTitle = [self StringFromVitaminData:value];
    }
    return _kNameReservationTitle;
}

+ (NSData *)VitaminDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

//: account_delete_tip1
- (NSString *)kText_intactContent {
    if (!_kText_intactContent) {
		NSArray<NSNumber *> *origin = @[@19, @87, @3, @10, @12, @12, @24, @30, @23, @29, @8, @13, @14, @21, @14, @29, @14, @8, @29, @18, @25, @218, @25];
		NSData *data = [VitaminData VitaminDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kText_intactContent = [self StringFromVitaminData:value];
    }
    return _kText_intactContent;
}

//: #5D5F66
- (NSString *)kName_scienceValue {
    if (!_kName_scienceValue) {
		NSArray<NSNumber *> *origin = @[@7, @83, @3, @208, @226, @241, @226, @243, @227, @227, @129];
		NSData *data = [VitaminData VitaminDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kName_scienceValue = [self StringFromVitaminData:value];
    }
    return _kName_scienceValue;
}

//: #333333
- (NSString *)kContentLastModelSeeminglyName {
    if (!_kContentLastModelSeeminglyName) {
		NSArray<NSNumber *> *origin = @[@7, @87, @9, @148, @106, @62, @95, @166, @69, @204, @220, @220, @220, @220, @220, @220, @26];
		NSData *data = [VitaminData VitaminDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContentLastModelSeeminglyName = [self StringFromVitaminData:value];
    }
    return _kContentLastModelSeeminglyName;
}

- (Byte *)VitaminDataToCache:(Byte *)data {
    int periodOfTimeTroubled = data[0];
    Byte thoughNut = data[1];
    int countelligence = data[2];
    for (int i = countelligence; i < countelligence + periodOfTimeTroubled; i++) {
        int value = data[i] + thoughNut;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[countelligence + periodOfTimeTroubled] = 0;
    return data + countelligence;
}

+ (instancetype)sharedInstance {
    static VitaminData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: account_delete_tip2
- (NSString *)kTitle_selectedData {
    if (!_kTitle_selectedData) {
		NSArray<NSNumber *> *origin = @[@19, @45, @13, @148, @243, @206, @83, @20, @198, @131, @23, @71, @62, @52, @54, @54, @66, @72, @65, @71, @50, @55, @56, @63, @56, @71, @56, @50, @71, @60, @67, @5, @32];
		NSData *data = [VitaminData VitaminDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTitle_selectedData = [self StringFromVitaminData:value];
    }
    return _kTitle_selectedData;
}

//: #2C3042
- (NSString *)kNameMoleValue {
    if (!_kNameMoleValue) {
		NSArray<NSNumber *> *origin = @[@7, @63, @5, @91, @75, @228, @243, @4, @244, @241, @245, @243, @43];
		NSData *data = [VitaminData VitaminDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kNameMoleValue = [self StringFromVitaminData:value];
    }
    return _kNameMoleValue;
}

- (NSString *)StringFromVitaminData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self VitaminDataToCache:data]];
}

//: activity_comment_setting_cancel_account
- (NSString *)kTextStableValue {
    if (!_kTextStableValue) {
		NSArray<NSNumber *> *origin = @[@39, @42, @5, @8, @156, @55, @57, @74, @63, @76, @63, @74, @79, @53, @57, @69, @67, @67, @59, @68, @74, @53, @73, @59, @74, @74, @63, @68, @61, @53, @57, @55, @68, @57, @59, @66, @53, @55, @57, @57, @69, @75, @68, @74, @163];
		NSData *data = [VitaminData VitaminDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kTextStableValue = [self StringFromVitaminData:value];
    }
    return _kTextStableValue;
}

//: contact_tag_fragment_cancel
- (NSString *)kContent_civilianRecordString {
    if (!_kContent_civilianRecordString) {
		NSArray<NSNumber *> *origin = @[@27, @26, @3, @73, @85, @84, @90, @71, @73, @90, @69, @90, @71, @77, @69, @76, @88, @71, @77, @83, @75, @84, @90, @69, @73, @71, @84, @73, @75, @82, @218];
		NSData *data = [VitaminData VitaminDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        _kContent_civilianRecordString = [self StringFromVitaminData:value];
    }
    return _kContent_civilianRecordString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ActionView.m
//  Riverla
//
//  Created by mac on 2025/5/16.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DeleteAccountTipView.h"
#import "ActionView.h"

//: @interface DeleteAccountTipView ()
@interface ActionView ()

//: @property (nonatomic,strong) UIButton *closeBtn;
@property (nonatomic,strong) UIButton *closeBtn;
//: @property (nonatomic,strong) UIView *box;
@property (nonatomic,strong) UIView *box;
//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;
//: @property (nonatomic,strong) UIButton *sureBtn;
@property (nonatomic,strong) UIButton *sureBtn;
//: @property (nonatomic,strong) UIView *contentBox;
@property (nonatomic,strong) UIView *contentBox;

//: @end
@end

//: @implementation DeleteAccountTipView
@implementation ActionView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];

        //: [self initUI];
        [self initQuickUi];

    }
    //: return self;
    return self;
}


//: - (void)animationClose
- (void)ingatheringBy
{
    //: self.hidden = YES;
    self.hidden = YES;
}



//: - (UIButton *)closeBtn {
- (UIButton *)closeBtn {
    //: if (!_closeBtn) {
    if (!_closeBtn) {
        //: _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _closeBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_closeBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_closeBtn addTarget:self action:@selector(ingatheringBy) forControlEvents:UIControlEventTouchUpInside];
        //: _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _closeBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_closeBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_closeBtn setTitleColor:[UIColor cell:[VitaminData sharedInstance].kName_scienceValue] forState:UIControlStateNormal];
        //: [_closeBtn setTitle:[DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_closeBtn setTitle:[MakeManager cell:[VitaminData sharedInstance].kContent_civilianRecordString] forState:UIControlStateNormal];
        //: _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        _closeBtn.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: _closeBtn.layer.borderWidth = 0.5;
        _closeBtn.layer.borderWidth = 0.5;
        //: _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        _closeBtn.layer.borderColor = [UIColor colorWithRed:236/255.0 green:236/255.0 blue:236/255.0 alpha:1].CGColor;
        //: _closeBtn.layer.cornerRadius = 20;
        _closeBtn.layer.cornerRadius = 20;
    }
    //: return _closeBtn;
    return _closeBtn;
}

//: - (UIButton *)sureBtn {
- (UIButton *)sureBtn {
    //: if (!_sureBtn) {
    if (!_sureBtn) {
        //: _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _sureBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sureBtn addTarget:self action:@selector(handleSubmit) forControlEvents:UIControlEventTouchUpInside];
        [_sureBtn addTarget:self action:@selector(eigenvalueFor) forControlEvents:UIControlEventTouchUpInside];
        //: _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _sureBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_sureBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: [_sureBtn setTitle:[DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_sureBtn setTitle:[MakeManager cell:[VitaminData sharedInstance].kTitle_nonprofitString] forState:UIControlStateNormal];
        //: _sureBtn.backgroundColor = [UIColor colorWithHexString:@"#FF483D"];
        _sureBtn.backgroundColor = [UIColor cell:[VitaminData sharedInstance].kNameReservationTitle];
        //: _sureBtn.layer.cornerRadius = 20;
        _sureBtn.layer.cornerRadius = 20;

    }
    //: return _sureBtn;
    return _sureBtn;
}

//: - (void)handleSubmit
- (void)eigenvalueFor
{
    //: [self animationClose];
    [self ingatheringBy];
    //: if ([self.delegate respondsToSelector:@selector(didTouchDeleteSureButton)]) {
    if ([self.delegate respondsToSelector:@selector(parentButton)]) {
        //: [self.delegate didTouchDeleteSureButton];
        [self.delegate parentButton];
    }

}

//: - (UIView *)contentBox
- (UIView *)contentBox
{
    //: if(!_contentBox){
    if(!_contentBox){
        //: _contentBox = [[UIView alloc]init];
        _contentBox = [[UIView alloc]init];

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40);
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-30-40);

        //: UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, width, 20)];
        UILabel *labtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, 15, width, 20)];
        //: labtitle1.font = [UIFont systemFontOfSize:14.f];
        labtitle1.font = [UIFont systemFontOfSize:14.f];
        //: labtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labtitle1.textColor = [UIColor cell:[VitaminData sharedInstance].kContentLastModelSeeminglyName];
        //: labtitle1.text = [DisplayLanguageManager getTextWithKey:@"account_delete_tip1"];
        labtitle1.text = [MakeManager cell:[VitaminData sharedInstance].kText_intactContent];
        //: labtitle1.numberOfLines = 0;
        labtitle1.numberOfLines = 0;
        //: [_contentBox addSubview:labtitle1];
        [_contentBox addSubview:labtitle1];
        //: [labtitle1 sizeToFit];
        [labtitle1 sizeToFit];

        //: UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom+10, width, 70)];
        UILabel *labsubtitle1 = [[UILabel alloc] initWithFrame:CGRectMake(0, labtitle1.bottom+10, width, 70)];
        //: labsubtitle1.font = [UIFont systemFontOfSize:14.f];
        labsubtitle1.font = [UIFont systemFontOfSize:14.f];
        //: labsubtitle1.textColor = [UIColor colorWithHexString:@"#333333"];
        labsubtitle1.textColor = [UIColor cell:[VitaminData sharedInstance].kContentLastModelSeeminglyName];
        //: labsubtitle1.text = [DisplayLanguageManager getTextWithKey:@"account_delete_tip2"];
        labsubtitle1.text = [MakeManager cell:[VitaminData sharedInstance].kTitle_selectedData];
        //: labsubtitle1.numberOfLines = 0;
        labsubtitle1.numberOfLines = 0;
        //: [_contentBox addSubview:labsubtitle1];
        [_contentBox addSubview:labsubtitle1];
        //: [labsubtitle1 sizeToFit];
        [labsubtitle1 sizeToFit];

    }
    //: return _contentBox;
    return _contentBox;
}

//: #pragma mark -- Setter && Getter
#pragma mark -- Setter && Getter
//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] init];
        _titleLabel = [[UILabel alloc] init];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"#2C3042"];
        _titleLabel.textColor = [UIColor cell:[VitaminData sharedInstance].kNameMoleValue];
        //: _titleLabel.textAlignment = NSTextAlignmentCenter;
        _titleLabel.textAlignment = NSTextAlignmentCenter;
        //: _titleLabel.text = [DisplayLanguageManager getTextWithKey:@"activity_comment_setting_cancel_account"];
        _titleLabel.text = [MakeManager cell:[VitaminData sharedInstance].kTextStableValue];
    }
    //: return _titleLabel;
    return _titleLabel;
}


//: - (void)animationShow
- (void)isAnimationBe
{
    //: self.hidden = NO;
    self.hidden = NO;

}

//: - (void)initUI{
- (void)initQuickUi{
    //: _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-250)/2, [[UIScreen mainScreen] bounds].size.width-30, 250)];
    _box = [[UIView alloc]initWithFrame:CGRectMake(15, ([[UIScreen mainScreen] bounds].size.height-250)/2, [[UIScreen mainScreen] bounds].size.width-30, 250)];
    //: _box.backgroundColor = [UIColor whiteColor];
    _box.backgroundColor = [UIColor whiteColor];
    //: _box.layer.cornerRadius = 12;
    _box.layer.cornerRadius = 12;
    //: [self addSubview:_box];
    [self addSubview:_box];

    //: [_box addSubview:self.titleLabel];
    [_box addSubview:self.titleLabel];
    //: self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-30, 20);
    self.titleLabel.frame = CGRectMake(0, 20, [[UIScreen mainScreen] bounds].size.width-30, 20);


    //: [_box addSubview:self.contentBox];
    [_box addSubview:self.contentBox];
    //: self.contentBox.frame = CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 160);
    self.contentBox.frame = CGRectMake(20, self.titleLabel.bottom+10, [[UIScreen mainScreen] bounds].size.width-70, 160);


    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    //: CGFloat height = 40;
    CGFloat height = 40;

    //: [_box addSubview:self.closeBtn];
    [_box addSubview:self.closeBtn];
    //: self.closeBtn.frame = CGRectMake(20, 250-20-height, width, height);
    self.closeBtn.frame = CGRectMake(20, 250-20-height, width, height);

    //: [_box addSubview:self.sureBtn];
    [_box addSubview:self.sureBtn];
    //: self.sureBtn.frame = CGRectMake(width+40, 250-20-height, width, height);
    self.sureBtn.frame = CGRectMake(width+40, 250-20-height, width, height);
}


//: @end
@end
