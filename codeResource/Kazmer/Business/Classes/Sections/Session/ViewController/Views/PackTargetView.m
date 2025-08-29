
#import <Foundation/Foundation.h>

@interface CombinationEchoData : NSObject

@end

@implementation CombinationEchoData

+ (NSData *)CombinationEchoDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)CombinationEchoDataToCache:(Byte *)data {
    int ploy = data[0];
    Byte bullStepCute = data[1];
    int squealer = data[2];
    for (int i = squealer; i < squealer + ploy; i++) {
        int value = data[i] - bullStepCute;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[squealer + ploy] = 0;
    return data + squealer;
}

+ (NSString *)StringFromCombinationEchoData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self CombinationEchoDataToCache:data]];
}

//: activity_pay_psw_input
+ (NSString *)kContentSenData {
    /* static */ NSString *kContentSenData = nil;
    if (!kContentSenData) {
		NSArray<NSString *> *origin = @[@"22", @"8", @"11", @"45", @"67", @"70", @"193", @"254", @"159", @"115", @"162", @"105", @"107", @"124", @"113", @"126", @"113", @"124", @"129", @"103", @"120", @"105", @"129", @"103", @"120", @"123", @"127", @"103", @"113", @"118", @"120", @"125", @"124", @"137"];
		NSData *data = [CombinationEchoData CombinationEchoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentSenData = [self StringFromCombinationEchoData:value];
    }
    return kContentSenData;
}

//: red_packet
+ (NSString *)kTitle_etcName {
    /* static */ NSString *kTitle_etcName = nil;
    if (!kTitle_etcName) {
		NSArray<NSString *> *origin = @[@"10", @"26", @"7", @"253", @"171", @"224", @"225", @"140", @"127", @"126", @"121", @"138", @"123", @"125", @"133", @"127", @"142", @"227"];
		NSData *data = [CombinationEchoData CombinationEchoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_etcName = [self StringFromCombinationEchoData:value];
    }
    return kTitle_etcName;
}

//: icon_redpackage_close
+ (NSString *)kNameSkirtString {
    /* static */ NSString *kNameSkirtString = nil;
    if (!kNameSkirtString) {
		NSArray<NSString *> *origin = @[@"21", @"91", @"13", @"98", @"104", @"182", @"79", @"18", @"241", @"6", @"152", @"154", @"169", @"196", @"190", @"202", @"201", @"186", @"205", @"192", @"191", @"203", @"188", @"190", @"198", @"188", @"194", @"192", @"186", @"190", @"199", @"202", @"206", @"192", @"67"];
		NSData *data = [CombinationEchoData CombinationEchoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameSkirtString = [self StringFromCombinationEchoData:value];
    }
    return kNameSkirtString;
}

//: change
+ (NSString *)kName_researchString {
    /* static */ NSString *kName_researchString = nil;
    if (!kName_researchString) {
		NSArray<NSString *> *origin = @[@"6", @"11", @"11", @"77", @"170", @"206", @"92", @"10", @"90", @"30", @"193", @"110", @"115", @"108", @"121", @"114", @"112", @"219"];
		NSData *data = [CombinationEchoData CombinationEchoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_researchString = [self StringFromCombinationEchoData:value];
    }
    return kName_researchString;
}

//: #888888
+ (NSString *)kTitle_knowDiscoString {
    /* static */ NSString *kTitle_knowDiscoString = nil;
    if (!kTitle_knowDiscoString) {
		NSArray<NSString *> *origin = @[@"7", @"70", @"5", @"201", @"137", @"105", @"126", @"126", @"126", @"126", @"126", @"126", @"72"];
		NSData *data = [CombinationEchoData CombinationEchoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_knowDiscoString = [self StringFromCombinationEchoData:value];
    }
    return kTitle_knowDiscoString;
}

//: #D6D6D6
+ (NSString *)kName_endFileData {
    /* static */ NSString *kName_endFileData = nil;
    if (!kName_endFileData) {
		NSArray<NSString *> *origin = @[@"7", @"21", @"12", @"32", @"87", @"101", @"206", @"33", @"163", @"38", @"158", @"80", @"56", @"89", @"75", @"89", @"75", @"89", @"75", @"81"];
		NSData *data = [CombinationEchoData CombinationEchoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_endFileData = [self StringFromCombinationEchoData:value];
    }
    return kName_endFileData;
}

//: #333333
+ (NSString *)kText_excitementData {
    /* static */ NSString *kText_excitementData = nil;
    if (!kText_excitementData) {
		NSArray<NSString *> *origin = @[@"7", @"5", @"7", @"212", @"186", @"169", @"84", @"40", @"56", @"56", @"56", @"56", @"56", @"56", @"210"];
		NSData *data = [CombinationEchoData CombinationEchoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_excitementData = [self StringFromCombinationEchoData:value];
    }
    return kText_excitementData;
}

//: amount
+ (NSString *)kTitle_errorDeviceString {
    /* static */ NSString *kTitle_errorDeviceString = nil;
    if (!kTitle_errorDeviceString) {
		NSArray<NSString *> *origin = @[@"6", @"29", @"9", @"137", @"255", @"206", @"202", @"172", @"110", @"126", @"138", @"140", @"146", @"139", @"145", @"77"];
		NSData *data = [CombinationEchoData CombinationEchoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_errorDeviceString = [self StringFromCombinationEchoData:value];
    }
    return kTitle_errorDeviceString;
}

//: #C7E8CA
+ (NSString *)kName_civilianCellData {
    /* static */ NSString *kName_civilianCellData = nil;
    if (!kName_civilianCellData) {
		NSArray<NSString *> *origin = @[@"7", @"96", @"11", @"121", @"87", @"234", @"232", @"173", @"82", @"206", @"203", @"131", @"163", @"151", @"165", @"152", @"163", @"161", @"115"];
		NSData *data = [CombinationEchoData CombinationEchoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_civilianCellData = [self StringFromCombinationEchoData:value];
    }
    return kName_civilianCellData;
}

//: icon_redpackage_money
+ (NSString *)kName_originValue {
    /* static */ NSString *kName_originValue = nil;
    if (!kName_originValue) {
		NSArray<NSString *> *origin = @[@"21", @"2", @"10", @"144", @"212", @"190", @"154", @"248", @"30", @"85", @"107", @"101", @"113", @"112", @"97", @"116", @"103", @"102", @"114", @"99", @"101", @"109", @"99", @"105", @"103", @"97", @"111", @"113", @"112", @"103", @"123", @"33"];
		NSData *data = [CombinationEchoData CombinationEchoDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_originValue = [self StringFromCombinationEchoData:value];
    }
    return kName_originValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PackTargetView.m
//  NIM
//
//  Created by 彭爽 on 2021/10/10.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERRedPackagePaySheet.h"
#import "PackTargetView.h"
//: #import "FFFAvatarImageView.h"
#import "MemoryImageControl.h"
//: #import "TPPasswordTextView.h"
#import "RowPathGlowingView.h"

//: @interface USERRedPackagePaySheet ()
@interface PackTargetView ()
//: @property (nonatomic,strong) NSDictionary *originDict;
@property (nonatomic,strong) NSDictionary *originDict;
//: @property (nonatomic,strong) UIView *backView;
@property (nonatomic,strong) UIView *backView;
//: @property (nonatomic,strong) UITextField *textfield;
@property (nonatomic,strong) UITextField *textfield;
//: @property (nonatomic,strong) UIImageView *headerImageView;
@property (nonatomic,strong) UIImageView *headerImageView;
//: @end
@end

//: @implementation USERRedPackagePaySheet
@implementation PackTargetView

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary{
-(instancetype)initWithName:(CGRect)frame shoot:(NSDictionary *)dictionary{

    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {

        //: _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        _originDict = [NSDictionary dictionaryWithDictionary:dictionary];
        //: self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];
        self.backgroundColor = [UIColor colorWithWhite:0 alpha:0.4];

        //: UIView *b = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        UIView *b = [[UIView alloc] initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: [self addSubview:b];
        [self addSubview:b];

        //: UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleSingleTapFrom)];
        UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapOn)];
        //: singleRecognizer.numberOfTapsRequired=1;
        singleRecognizer.numberOfTapsRequired=1;
        //: [b addGestureRecognizer:singleRecognizer];
        [b addGestureRecognizer:singleRecognizer];

        //: _backView = [[UIView alloc] initWithFrame:CGRectMake(30, [[UIScreen mainScreen] bounds].size.height/2- 270/2-50, [[UIScreen mainScreen] bounds].size.width-60, 270)];
        _backView = [[UIView alloc] initWithFrame:CGRectMake(30, [[UIScreen mainScreen] bounds].size.height/2- 270/2-50, [[UIScreen mainScreen] bounds].size.width-60, 270)];
        //: _backView.backgroundColor = [UIColor whiteColor];
        _backView.backgroundColor = [UIColor whiteColor];
        //: [self addSubview:_backView];
        [self addSubview:_backView];


        //: UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: closeButton.frame = CGRectMake(0, 0, 50, 50);
        closeButton.frame = CGRectMake(0, 0, 50, 50);
        //: [closeButton setImage:[UIImage imageNamed:@"icon_redpackage_close"] forState:UIControlStateNormal];
        [closeButton setImage:[UIImage imageNamed:[CombinationEchoData kNameSkirtString]] forState:UIControlStateNormal];
        //: [closeButton addTarget:self action:@selector(dismissPicker) forControlEvents:UIControlEventTouchUpInside];
        [closeButton addTarget:self action:@selector(indexTing) forControlEvents:UIControlEventTouchUpInside];
        //: [_backView addSubview:closeButton];
        [_backView addSubview:closeButton];


        //: _headerImageView = [[UIImageView alloc] init];
        _headerImageView = [[UIImageView alloc] init];
        //: [_backView addSubview:_headerImageView];
        [_backView addSubview:_headerImageView];
        //: [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(50);
            make.left.mas_offset(50);
            //: make.top.mas_offset(7.5);
            make.top.mas_offset(7.5);
            //: make.width.mas_equalTo(35);
            make.width.mas_equalTo(35);
            //: make.height.mas_equalTo(35);
            make.height.mas_equalTo(35);
        //: }];
        }];



        //: UILabel *titleLabel_1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 120, 65)];
        UILabel *titleLabel_1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 120, 65)];
        //: titleLabel_1.textColor = [UIColor colorWithHexString:@"#333333"];
        titleLabel_1.textColor = [UIColor cell:[CombinationEchoData kText_excitementData]];
        //: titleLabel_1.font = [UIFont boldSystemFontOfSize:16];
        titleLabel_1.font = [UIFont boldSystemFontOfSize:16];
        //: titleLabel_1.text = [FFFLanguageManager getTextWithKey:@"activity_pay_psw_input"];
        titleLabel_1.text = [MakeManager cell:[CombinationEchoData kContentSenData]];
        //: titleLabel_1.textAlignment = NSTextAlignmentLeft;
        titleLabel_1.textAlignment = NSTextAlignmentLeft;
        //: [_backView addSubview:titleLabel_1];
        [_backView addSubview:titleLabel_1];
        //: [titleLabel_1 mas_makeConstraints:^(MASConstraintMaker *make) {
        [titleLabel_1 mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(0);
            make.top.mas_offset(0);
            //: make.left.mas_offset(100);
            make.left.mas_offset(100);
            //: make.height.mas_equalTo(50);
            make.height.mas_equalTo(50);
            //: make.width.mas_equalTo(150);
            make.width.mas_equalTo(150);
        //: }];
        }];

        //: UIView *line = [[UIView alloc] init];
        UIView *line = [[UIView alloc] init];
        //: line.backgroundColor = [UIColor colorWithHexString:@"#C7E8CA"];
        line.backgroundColor = [UIColor cell:[CombinationEchoData kName_civilianCellData]];
        //: [_backView addSubview:line];
        [_backView addSubview:line];
        //: [line mas_makeConstraints:^(MASConstraintMaker *make) {
        [line mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.right.mas_offset(0);
            make.right.mas_offset(0);
            //: make.top.mas_offset(50);
            make.top.mas_offset(50);
            //: make.height.mas_equalTo(1);
            make.height.mas_equalTo(1);
        //: }];
        }];

        //: UILabel *title = [[UILabel alloc] init];
        UILabel *title = [[UILabel alloc] init];
        //: title.textAlignment = NSTextAlignmentCenter;
        title.textAlignment = NSTextAlignmentCenter;
        //: title.textColor = [UIColor blackColor];
        title.textColor = [UIColor blackColor];
        //: title.font = [UIFont systemFontOfSize:15];
        title.font = [UIFont systemFontOfSize:15];
        //: title.text = [FFFLanguageManager getTextWithKey:@"red_packet"];
        title.text = [MakeManager cell:[CombinationEchoData kTitle_etcName]];
        //: [_backView addSubview:title];
        [_backView addSubview:title];
        //: [title mas_makeConstraints:^(MASConstraintMaker *make) {
        [title mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(60);
            make.top.mas_offset(60);
            //: make.centerX.mas_offset(0);
            make.centerX.mas_offset(0);
            //: make.width.mas_equalTo(200);
            make.width.mas_equalTo(200);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];

        //: UILabel *amountLabel = [[UILabel alloc] init];
        UILabel *amountLabel = [[UILabel alloc] init];
        //: amountLabel.textAlignment = NSTextAlignmentCenter;
        amountLabel.textAlignment = NSTextAlignmentCenter;
        //: amountLabel.textColor = [UIColor blackColor];
        amountLabel.textColor = [UIColor blackColor];
        //: amountLabel.font = [UIFont boldSystemFontOfSize:30];
        amountLabel.font = [UIFont boldSystemFontOfSize:30];
        //: amountLabel.text = [NSString stringWithFormat:@"¥%@",[dictionary newStringValueForKey:@"amount"]];
        amountLabel.text = [NSString stringWithFormat:@"¥%@",[dictionary comment:[CombinationEchoData kTitle_errorDeviceString]]];
        //: [_backView addSubview:amountLabel];
        [_backView addSubview:amountLabel];
        //: [amountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [amountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(90);
            make.top.mas_offset(90);
            //: make.centerX.mas_offset(0);
            make.centerX.mas_offset(0);
            //: make.width.mas_equalTo(200);
            make.width.mas_equalTo(200);
            //: make.height.mas_equalTo(50);
            make.height.mas_equalTo(50);
        //: }];
        }];

        //: UIView *blackLine = [[UIView alloc] init];
        UIView *blackLine = [[UIView alloc] init];
        //: blackLine.backgroundColor = [UIColor colorWithHexString:@"#D6D6D6"];
        blackLine.backgroundColor = [UIColor cell:[CombinationEchoData kName_endFileData]];
        //: [_backView addSubview:blackLine];
        [_backView addSubview:blackLine];
        //: [blackLine mas_makeConstraints:^(MASConstraintMaker *make) {
        [blackLine mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.right.mas_offset(0);
            make.right.mas_offset(0);
            //: make.top.mas_offset(150);
            make.top.mas_offset(150);
            //: make.height.mas_equalTo(0.6);
            make.height.mas_equalTo(0.6);
        //: }];
        }];

        //: UIImageView *iconImage = [[UIImageView alloc] initWithFrame:CGRectMake(15, 155, 40, 40)];
        UIImageView *iconImage = [[UIImageView alloc] initWithFrame:CGRectMake(15, 155, 40, 40)];
        //: iconImage.image = [UIImage imageNamed:@"icon_redpackage_money"];
        iconImage.image = [UIImage imageNamed:[CombinationEchoData kName_originValue]];
        //: [_backView addSubview:iconImage];
        [_backView addSubview:iconImage];

        //: UILabel *lingq = [[UILabel alloc] initWithFrame:CGRectMake(60, 155, 100, 40)];
        UILabel *lingq = [[UILabel alloc] initWithFrame:CGRectMake(60, 155, 100, 40)];
        //: lingq.textColor = [UIColor colorWithHexString:@"#888888"];
        lingq.textColor = [UIColor cell:[CombinationEchoData kTitle_knowDiscoString]];
        //: lingq.font = [UIFont systemFontOfSize:15];
        lingq.font = [UIFont systemFontOfSize:15];
        //: lingq.text = @"change";
        lingq.text = [CombinationEchoData kName_researchString];
        //: [_backView addSubview:lingq];
        [_backView addSubview:lingq];


        //: UIView *blackLine_2 = [[UIView alloc] init];
        UIView *blackLine_2 = [[UIView alloc] init];
        //: blackLine_2.backgroundColor = [UIColor colorWithHexString:@"#D6D6D6"];
        blackLine_2.backgroundColor = [UIColor cell:[CombinationEchoData kName_endFileData]];
        //: [_backView addSubview:blackLine_2];
        [_backView addSubview:blackLine_2];
        //: [blackLine_2 mas_makeConstraints:^(MASConstraintMaker *make) {
        [blackLine_2 mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.right.mas_offset(0);
            make.right.mas_offset(0);
            //: make.top.mas_offset(200);
            make.top.mas_offset(200);
            //: make.height.mas_equalTo(0.6);
            make.height.mas_equalTo(0.6);
        //: }];
        }];


        //: CGRect rect = CGRectMake([[UIScreen mainScreen] bounds].size.width/2-30-132, 210, 264, 44);
        CGRect rect = CGRectMake([[UIScreen mainScreen] bounds].size.width/2-30-132, 210, 264, 44);
        //: TPPasswordTextView *view1 = [[TPPasswordTextView alloc] initWithFrame:rect];
        RowPathGlowingView *view1 = [[RowPathGlowingView alloc] initWithFrame:rect];
        //: view1.elementCount = 6;
        view1.elementCount = 6;
        //: view1.elementBorderColor = [UIColor lightGrayColor];
        view1.elementBorderColor = [UIColor lightGrayColor];
        //: [_backView addSubview:view1];
        [_backView addSubview:view1];
        //: view1.passwordDidChangeBlock = ^(NSString *password) {
        view1.passwordDidChangeBlock = ^(NSString *password) {

            //: if (password.length == 6) {
            if (password.length == 6) {
                //: _block(password);
                _block(password);
                //: [self dismissPicker];
                [self indexTing];
            }
        //: };
        };

        //: [self reloadHeader];
        [self cellDomain];
    }
    //: return self;
    return self;
}


//: -(void)reloadHeader{
-(void)cellDomain{
    //: NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    NSString *userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:userID option:nil];
    CancelTeamCorner *info = [[Mortification text] tingVoice:userID keepingOption:nil];
    //: NSString *headerUrl = me.userInfo.avatarUrl;
    NSString *headerUrl = me.userInfo.avatarUrl;
    //: UIImage *placeholderImage = info.avatarImage;
    UIImage *placeholderImage = info.avatarImage;
    //: [_headerImageView sd_setImageWithURL:[NSURL URLWithString:headerUrl] placeholderImage:placeholderImage];
    [_headerImageView sd_setImageWithURL:[NSURL URLWithString:headerUrl] placeholderImage:placeholderImage];
}

//: -(void)handleSingleTapFrom{
-(void)tapOn{
    //: [self dismissPicker];
    [self indexTing];
}

//: - (void)show{
- (void)elite{

    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 270/2];
        [self->_backView setComplete:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice comeDownSuperphylum]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 270/2];
    //: }];
    }];
}

//: - (void)dismissPicker{
- (void)indexTing{
    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:[[UIScreen mainScreen] bounds].size.height];
        [self->_backView setComplete:[[UIScreen mainScreen] bounds].size.height];
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {

        //: self.hidden = YES;
        self.hidden = YES;
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];
}

//: -(void)finshInputPassword:(PayPasswordBlock)block{
-(void)darkGreen:(PayPasswordBlock)block{
    //: _block = block;
    _block = block;
}

//: @end
@end