
#import <Foundation/Foundation.h>

typedef struct {
    Byte everythingThanks;
    Byte *viewMessage;
    unsigned int competitor;
} StructShootData;

@interface ShootData : NSObject

+ (instancetype)sharedInstance;

//: list
@property (nonatomic, copy) NSString *dream_potFormat;

//: unclaimed
@property (nonatomic, copy) NSString *dreamWeepValue;

//: data
@property (nonatomic, copy) NSString *main_tapFormat;

//: start
@property (nonatomic, copy) NSString *dream_freedKey;

//: Congratulations on your fortune
@property (nonatomic, copy) NSString *mainQuickData;

//: team_red_adapter_yuan
@property (nonatomic, copy) NSString *dreamStrengthenFormat;

//: The balance has been deposited and can be withdrawn directly>>
@property (nonatomic, copy) NSString *k_bidIdent;

//: #FE9FA8
@property (nonatomic, copy) NSString *k_hostaKey;

//: icon_redpackage_open_close
@property (nonatomic, copy) NSString *main_valueKey;

//: /wallet/redDetail
@property (nonatomic, copy) NSString *appHeavilyData;

//: #FFD7C4
@property (nonatomic, copy) NSString *userStrangeSurgeryFormat;

//: #FDA6A4
@property (nonatomic, copy) NSString *appEmployMsg;

//: user_id
@property (nonatomic, copy) NSString *mainBorrowStr;

//: icon_redpackage_open_back
@property (nonatomic, copy) NSString *user_marchSendId;

//: redinfo
@property (nonatomic, copy) NSString *mFishingMonthUrl;

//: amount
@property (nonatomic, copy) NSString *dream_salmonName;

//: View pick-up details>>
@property (nonatomic, copy) NSString *userAddValue;

//: words
@property (nonatomic, copy) NSString *user_primaryCloudContentMessage;

//: redid
@property (nonatomic, copy) NSString *dreamImageIdent;

@end

@implementation ShootData

+ (instancetype)sharedInstance {
    static ShootData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ShootDataToByte:(StructShootData *)data {
    for (int i = 0; i < data->competitor; i++) {
        data->viewMessage[i] ^= data->everythingThanks;
    }
    data->viewMessage[data->competitor] = 0;
    return data->viewMessage;
}

- (NSString *)StringFromShootData:(StructShootData *)data {
    return [NSString stringWithUTF8String:(char *)[self ShootDataToByte:data]];
}

//: data
- (NSString *)main_tapFormat {
    if (!_main_tapFormat) {
        StructShootData value = (StructShootData){113, (Byte []){21, 16, 5, 16, 111}, 4};
        _main_tapFormat = [self StringFromShootData:&value];
    }
    return _main_tapFormat;
}

//: Congratulations on your fortune
- (NSString *)mainQuickData {
    if (!_mainQuickData) {
        StructShootData value = (StructShootData){120, (Byte []){59, 23, 22, 31, 10, 25, 12, 13, 20, 25, 12, 17, 23, 22, 11, 88, 23, 22, 88, 1, 23, 13, 10, 88, 30, 23, 10, 12, 13, 22, 29, 162}, 31};
        _mainQuickData = [self StringFromShootData:&value];
    }
    return _mainQuickData;
}

//: unclaimed
- (NSString *)dreamWeepValue {
    if (!_dreamWeepValue) {
        StructShootData value = (StructShootData){90, (Byte []){47, 52, 57, 54, 59, 51, 55, 63, 62, 191}, 9};
        _dreamWeepValue = [self StringFromShootData:&value];
    }
    return _dreamWeepValue;
}

//: icon_redpackage_open_back
- (NSString *)user_marchSendId {
    if (!_user_marchSendId) {
        StructShootData value = (StructShootData){77, (Byte []){36, 46, 34, 35, 18, 63, 40, 41, 61, 44, 46, 38, 44, 42, 40, 18, 34, 61, 40, 35, 18, 47, 44, 46, 38, 239}, 25};
        _user_marchSendId = [self StringFromShootData:&value];
    }
    return _user_marchSendId;
}

//: The balance has been deposited and can be withdrawn directly>>
- (NSString *)k_bidIdent {
    if (!_k_bidIdent) {
        StructShootData value = (StructShootData){109, (Byte []){57, 5, 8, 77, 15, 12, 1, 12, 3, 14, 8, 77, 5, 12, 30, 77, 15, 8, 8, 3, 77, 9, 8, 29, 2, 30, 4, 25, 8, 9, 77, 12, 3, 9, 77, 14, 12, 3, 77, 15, 8, 77, 26, 4, 25, 5, 9, 31, 12, 26, 3, 77, 9, 4, 31, 8, 14, 25, 1, 20, 83, 83, 223}, 62};
        _k_bidIdent = [self StringFromShootData:&value];
    }
    return _k_bidIdent;
}

//: #FFD7C4
- (NSString *)userStrangeSurgeryFormat {
    if (!_userStrangeSurgeryFormat) {
        StructShootData value = (StructShootData){61, (Byte []){30, 123, 123, 121, 10, 126, 9, 193}, 7};
        _userStrangeSurgeryFormat = [self StringFromShootData:&value];
    }
    return _userStrangeSurgeryFormat;
}

//: start
- (NSString *)dream_freedKey {
    if (!_dream_freedKey) {
        StructShootData value = (StructShootData){122, (Byte []){9, 14, 27, 8, 14, 199}, 5};
        _dream_freedKey = [self StringFromShootData:&value];
    }
    return _dream_freedKey;
}

//: icon_redpackage_open_close
- (NSString *)main_valueKey {
    if (!_main_valueKey) {
        StructShootData value = (StructShootData){118, (Byte []){31, 21, 25, 24, 41, 4, 19, 18, 6, 23, 21, 29, 23, 17, 19, 41, 25, 6, 19, 24, 41, 21, 26, 25, 5, 19, 76}, 26};
        _main_valueKey = [self StringFromShootData:&value];
    }
    return _main_valueKey;
}

//: #FDA6A4
- (NSString *)appEmployMsg {
    if (!_appEmployMsg) {
        StructShootData value = (StructShootData){247, (Byte []){212, 177, 179, 182, 193, 182, 195, 37}, 7};
        _appEmployMsg = [self StringFromShootData:&value];
    }
    return _appEmployMsg;
}

//: redinfo
- (NSString *)mFishingMonthUrl {
    if (!_mFishingMonthUrl) {
        StructShootData value = (StructShootData){234, (Byte []){152, 143, 142, 131, 132, 140, 133, 165}, 7};
        _mFishingMonthUrl = [self StringFromShootData:&value];
    }
    return _mFishingMonthUrl;
}

//: /wallet/redDetail
- (NSString *)appHeavilyData {
    if (!_appHeavilyData) {
        StructShootData value = (StructShootData){181, (Byte []){154, 194, 212, 217, 217, 208, 193, 154, 199, 208, 209, 241, 208, 193, 212, 220, 217, 75}, 17};
        _appHeavilyData = [self StringFromShootData:&value];
    }
    return _appHeavilyData;
}

//: team_red_adapter_yuan
- (NSString *)dreamStrengthenFormat {
    if (!_dreamStrengthenFormat) {
        StructShootData value = (StructShootData){219, (Byte []){175, 190, 186, 182, 132, 169, 190, 191, 132, 186, 191, 186, 171, 175, 190, 169, 132, 162, 174, 186, 181, 168}, 21};
        _dreamStrengthenFormat = [self StringFromShootData:&value];
    }
    return _dreamStrengthenFormat;
}

//: words
- (NSString *)user_primaryCloudContentMessage {
    if (!_user_primaryCloudContentMessage) {
        StructShootData value = (StructShootData){244, (Byte []){131, 155, 134, 144, 135, 96}, 5};
        _user_primaryCloudContentMessage = [self StringFromShootData:&value];
    }
    return _user_primaryCloudContentMessage;
}

//: View pick-up details>>
- (NSString *)userAddValue {
    if (!_userAddValue) {
        StructShootData value = (StructShootData){73, (Byte []){31, 32, 44, 62, 105, 57, 32, 42, 34, 100, 60, 57, 105, 45, 44, 61, 40, 32, 37, 58, 119, 119, 59}, 22};
        _userAddValue = [self StringFromShootData:&value];
    }
    return _userAddValue;
}

//: redid
- (NSString *)dreamImageIdent {
    if (!_dreamImageIdent) {
        StructShootData value = (StructShootData){162, (Byte []){208, 199, 198, 203, 198, 167}, 5};
        _dreamImageIdent = [self StringFromShootData:&value];
    }
    return _dreamImageIdent;
}

//: amount
- (NSString *)dream_salmonName {
    if (!_dream_salmonName) {
        StructShootData value = (StructShootData){106, (Byte []){11, 7, 5, 31, 4, 30, 96}, 6};
        _dream_salmonName = [self StringFromShootData:&value];
    }
    return _dream_salmonName;
}

//: user_id
- (NSString *)mainBorrowStr {
    if (!_mainBorrowStr) {
        StructShootData value = (StructShootData){58, (Byte []){79, 73, 95, 72, 101, 83, 94, 154}, 7};
        _mainBorrowStr = [self StringFromShootData:&value];
    }
    return _mainBorrowStr;
}

//: list
- (NSString *)dream_potFormat {
    if (!_dream_potFormat) {
        StructShootData value = (StructShootData){232, (Byte []){132, 129, 155, 156, 143}, 4};
        _dream_potFormat = [self StringFromShootData:&value];
    }
    return _dream_potFormat;
}

//: #FE9FA8
- (NSString *)k_hostaKey {
    if (!_k_hostaKey) {
        StructShootData value = (StructShootData){24, (Byte []){59, 94, 93, 33, 94, 89, 32, 62}, 7};
        _k_hostaKey = [self StringFromShootData:&value];
    }
    return _k_hostaKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  QuickOldView.m
//  NIM
//
//  Created by 彭爽 on 2021/10/10.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESOpenRedPackageSheet.h"
#import "QuickOldView.h"

//: @interface NTESOpenRedPackageSheet ()
@interface QuickOldView ()
//: @property (nonatomic,strong) NSDictionary *originDict;
@property (nonatomic,strong) NSDictionary *originDict;
//: @property (nonatomic,strong) UIView *backView;
@property (nonatomic,strong) UIView *backView;
//: @property (nonatomic,strong) UIImageView *headerImageView;
@property (nonatomic,strong) UIImageView *headerImageView;
//: @property (nonatomic,strong) UILabel *sendNickname;
@property (nonatomic,strong) UILabel *sendNickname;
//: @property (nonatomic,strong) UILabel *amountLabel;
@property (nonatomic,strong) UILabel *amountLabel;
//: @property (nonatomic,strong) UILabel *unitLabel;
@property (nonatomic,strong) UILabel *unitLabel;
//: @property (nonatomic,strong) UILabel *wordLabel;
@property (nonatomic,strong) UILabel *wordLabel;

//: @end
@end

//: @implementation NTESOpenRedPackageSheet
@implementation QuickOldView

//: -(instancetype)initWithFrame:(CGRect)frame dictionary:(NSDictionary *)dictionary{
-(instancetype)initWithAt:(CGRect)frame doing:(NSDictionary *)dictionary{

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
        UITapGestureRecognizer* singleRecognizer=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(optionColor)];
        //: singleRecognizer.numberOfTapsRequired=1;
        singleRecognizer.numberOfTapsRequired=1;
        //: [b addGestureRecognizer:singleRecognizer];
        [b addGestureRecognizer:singleRecognizer];

        //: _backView = [[UIView alloc] initWithFrame:CGRectMake(50, [[UIScreen mainScreen] bounds].size.height/2- 300/2-50, [[UIScreen mainScreen] bounds].size.width-100, 300)];
        _backView = [[UIView alloc] initWithFrame:CGRectMake(50, [[UIScreen mainScreen] bounds].size.height/2- 300/2-50, [[UIScreen mainScreen] bounds].size.width-100, 300)];
        //: _backView.backgroundColor = [UIColor whiteColor];
        _backView.backgroundColor = [UIColor whiteColor];
        //: [self addSubview:_backView];
        [self addSubview:_backView];





        //: UIImageView *backImage = [[UIImageView alloc] init];
        UIImageView *backImage = [[UIImageView alloc] init];
        //: backImage.image = [UIImage imageNamed:@"icon_redpackage_open_back"];
        backImage.image = [UIImage imageNamed:[ShootData sharedInstance].user_marchSendId];
        //: backImage.clipsToBounds = YES;
        backImage.clipsToBounds = YES;
        //: backImage.contentMode = UIViewContentModeScaleAspectFill;
        backImage.contentMode = UIViewContentModeScaleAspectFill;
        //: [_backView addSubview:backImage];
        [_backView addSubview:backImage];
        //: [backImage mas_makeConstraints:^(MASConstraintMaker *make) {
        [backImage mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(0);
            make.left.mas_offset(0);
            //: make.top.mas_offset(0);
            make.top.mas_offset(0);
            //: make.right.mas_equalTo(0);
            make.right.mas_equalTo(0);
            //: make.bottom.mas_equalTo(0);
            make.bottom.mas_equalTo(0);
        //: }];
        }];


        //: _headerImageView = [[UIImageView alloc] init];
        _headerImageView = [[UIImageView alloc] init];
        //: [_backView addSubview:_headerImageView];
        [_backView addSubview:_headerImageView];
        //: [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        [_headerImageView mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.top.mas_offset(50);
            make.top.mas_offset(50);
            //: make.width.mas_equalTo(30);
            make.width.mas_equalTo(30);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];

        //昵称
        //: UILabel *titleLabel_1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 120, 65)];
        UILabel *titleLabel_1 = [[UILabel alloc] initWithFrame:CGRectMake(20, 0, 120, 65)];
        //: titleLabel_1.textColor = [UIColor whiteColor];
        titleLabel_1.textColor = [UIColor whiteColor];
        //: titleLabel_1.font = [UIFont systemFontOfSize:16];
        titleLabel_1.font = [UIFont systemFontOfSize:16];
        //: titleLabel_1.textAlignment = NSTextAlignmentLeft;
        titleLabel_1.textAlignment = NSTextAlignmentLeft;
        //: [_backView addSubview:titleLabel_1];
        [_backView addSubview:titleLabel_1];
        //: _sendNickname = titleLabel_1;
        _sendNickname = titleLabel_1;
        //: [titleLabel_1 mas_makeConstraints:^(MASConstraintMaker *make) {
        [titleLabel_1 mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(50);
            make.top.mas_offset(50);
            //: make.left.mas_offset(50);
            make.left.mas_offset(50);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
            //: make.width.mas_equalTo(150);
            make.width.mas_equalTo(150);
        //: }];
        }];

//        UIView *line = [[UIView alloc] init];
//        line.backgroundColor = RGB_COLOR_String(@"#C7E8CA");
//        [_backView addSubview:line];
//        [line mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.mas_offset(0);
//            make.right.mas_offset(0);
//            make.top.mas_offset(50);
//            make.height.mas_equalTo(1);
//        }];
//


        //: UILabel *amountLabel = [[UILabel alloc] init];
        UILabel *amountLabel = [[UILabel alloc] init];
        //: amountLabel.textAlignment = NSTextAlignmentLeft;
        amountLabel.textAlignment = NSTextAlignmentLeft;
        //: amountLabel.textColor = [UIColor whiteColor];
        amountLabel.textColor = [UIColor whiteColor];
        //: amountLabel.font = [UIFont boldSystemFontOfSize:36];
        amountLabel.font = [UIFont boldSystemFontOfSize:36];
        //: [amountLabel sizeToFit];
        [amountLabel sizeToFit];
        //: [_backView addSubview:amountLabel];
        [_backView addSubview:amountLabel];
        //: _amountLabel = amountLabel;
        _amountLabel = amountLabel;
        //: [amountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [amountLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(90);
            make.top.mas_offset(90);
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.height.mas_equalTo(50);
            make.height.mas_equalTo(50);
            //: make.width.mas_equalTo(50);
            make.width.mas_equalTo(50);
        //: }];
        }];

        //: _unitLabel = [[UILabel alloc] init];
        _unitLabel = [[UILabel alloc] init];
        //: _unitLabel.textAlignment = NSTextAlignmentLeft;
        _unitLabel.textAlignment = NSTextAlignmentLeft;
        //: _unitLabel.textColor = [UIColor whiteColor];
        _unitLabel.textColor = [UIColor whiteColor];
        //: _unitLabel.font = [UIFont systemFontOfSize:15];
        _unitLabel.font = [UIFont systemFontOfSize:15];
        //: _unitLabel.text = [WatchLanguageManager getTextWithKey:@"team_red_adapter_yuan"];
        _unitLabel.text = [PaintedNaturalLanguageTo exhibit:[ShootData sharedInstance].dreamStrengthenFormat];
        //: [_backView addSubview:_unitLabel];
        [_backView addSubview:_unitLabel];
        //: [_unitLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        [_unitLabel mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(110);
            make.top.mas_offset(110);
            //: make.left.mas_equalTo(amountLabel.mas_right).mas_offset(5);
            make.left.mas_equalTo(amountLabel.mas_right).mas_offset(5);
            //: make.width.mas_equalTo(20);
            make.width.mas_equalTo(20);
            //: make.height.mas_equalTo(20);
            make.height.mas_equalTo(20);
        //: }];
        }];



        //: UIButton *content = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *content = [UIButton buttonWithType:UIButtonTypeCustom];
        //: content.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        content.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: content.titleLabel.font = [UIFont systemFontOfSize:13];
        content.titleLabel.font = [UIFont systemFontOfSize:13];
        //: [content setTitle:@"The balance has been deposited and can be withdrawn directly>>" forState:UIControlStateNormal];
        [content setTitle:[ShootData sharedInstance].k_bidIdent forState:UIControlStateNormal];
        //: [content setTitleColor:[UIColor colorWithHexString:@"#FFD7C4"] forState:UIControlStateNormal];
        [content setTitleColor:[UIColor min:[ShootData sharedInstance].userStrangeSurgeryFormat] forState:UIControlStateNormal];
        //: [content addTarget:self action:@selector(walletButtonClick) forControlEvents:UIControlEventTouchUpInside];
        [content addTarget:self action:@selector(argumentPress) forControlEvents:UIControlEventTouchUpInside];
        //: [_backView addSubview:content];
        [_backView addSubview:content];
        //: [_backView addSubview:content];
        [_backView addSubview:content];
        //: [content mas_makeConstraints:^(MASConstraintMaker *make) {
        [content mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(145);
            make.top.mas_offset(145);
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.width.mas_equalTo(200);
            make.width.mas_equalTo(200);
            //: make.height.mas_equalTo(20);
            make.height.mas_equalTo(20);
        //: }];
        }];


        //: UILabel *words = [[UILabel alloc] init];
        UILabel *words = [[UILabel alloc] init];
        //: words.textAlignment = NSTextAlignmentCenter;
        words.textAlignment = NSTextAlignmentCenter;
        //: words.textColor = [UIColor colorWithHexString:@"#FE9FA8"];
        words.textColor = [UIColor min:[ShootData sharedInstance].k_hostaKey];
        //: words.font = [UIFont systemFontOfSize:24];
        words.font = [UIFont systemFontOfSize:24];
        //: words.text = @"Congratulations on your fortune";
        words.text = [ShootData sharedInstance].mainQuickData;
        //: [_backView addSubview:words];
        [_backView addSubview:words];
        //: _wordLabel = words;
        _wordLabel = words;
        //: [words mas_makeConstraints:^(MASConstraintMaker *make) {
        [words mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_offset(190);
            make.top.mas_offset(190);
            //: make.left.mas_offset(10);
            make.left.mas_offset(10);
            //: make.right.mas_equalTo(-10);
            make.right.mas_equalTo(-10);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];


        //: UIButton *moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *moreBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: moreBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        moreBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentLeft;
        //: moreBtn.titleLabel.font = [UIFont systemFontOfSize:13];
        moreBtn.titleLabel.font = [UIFont systemFontOfSize:13];
        //: [moreBtn setTitle:@"View pick-up details>>" forState:UIControlStateNormal];
        [moreBtn setTitle:[ShootData sharedInstance].userAddValue forState:UIControlStateNormal];
        //: [moreBtn setTitleColor:[UIColor colorWithHexString:@"#FDA6A4"] forState:UIControlStateNormal];
        [moreBtn setTitleColor:[UIColor min:[ShootData sharedInstance].appEmployMsg] forState:UIControlStateNormal];
        //: [moreBtn addTarget:self action:@selector(redpackageDetail) forControlEvents:UIControlEventTouchUpInside];
        [moreBtn addTarget:self action:@selector(groundItem) forControlEvents:UIControlEventTouchUpInside];
        //: [_backView addSubview:moreBtn];
        [_backView addSubview:moreBtn];
        //: [moreBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        [moreBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.left.mas_offset(15);
            make.left.mas_offset(15);
            //: make.bottom.mas_offset(-15);
            make.bottom.mas_offset(-15);
            //: make.width.mas_equalTo(150);
            make.width.mas_equalTo(150);
            //: make.height.mas_equalTo(30);
            make.height.mas_equalTo(30);
        //: }];
        }];


        //: UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *closeButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: closeButton.frame = CGRectMake(0, 0, 50, 50);
        closeButton.frame = CGRectMake(0, 0, 50, 50);
        //: [closeButton setImage:[UIImage imageNamed:@"icon_redpackage_open_close"] forState:UIControlStateNormal];
        [closeButton setImage:[UIImage imageNamed:[ShootData sharedInstance].main_valueKey] forState:UIControlStateNormal];
        //: [closeButton addTarget:self action:@selector(dismissPicker) forControlEvents:UIControlEventTouchUpInside];
        [closeButton addTarget:self action:@selector(untilSearched) forControlEvents:UIControlEventTouchUpInside];
        //: [self addSubview:closeButton];
        [self addSubview:closeButton];
        //: closeButton.layer.masksToBounds = YES;
        closeButton.layer.masksToBounds = YES;
        //: closeButton.layer.cornerRadius = 25;
        closeButton.layer.cornerRadius = 25;
        //: closeButton.layer.borderColor = [UIColor whiteColor].CGColor;
        closeButton.layer.borderColor = [UIColor whiteColor].CGColor;
        //: closeButton.layer.borderWidth = 2;
        closeButton.layer.borderWidth = 2;
        //: [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
        [closeButton mas_makeConstraints:^(MASConstraintMaker *make) {
            //: make.top.mas_equalTo(_backView.frame.origin.y + 300 +20);
            make.top.mas_equalTo(_backView.frame.origin.y + 300 +20);
            //: make.centerX.mas_equalTo(self);
            make.centerX.mas_equalTo(self);
            //: make.width.height.mas_equalTo(50);
            make.width.height.mas_equalTo(50);
        //: }];
        }];



        //: [self requestRedDetail];
        [self redDetail];

    }
    //: return self;
    return self;
}


//: -(void)requestRedDetail{
-(void)redDetail{

    //: NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithCapacity:0];
    //: dict[@"redid"] = [_originDict newStringValueForKey:@"redid"];
    dict[[ShootData sharedInstance].dreamImageIdent] = [_originDict record:[ShootData sharedInstance].dreamImageIdent];
    //: dict[@"start"] = @"1";
    dict[[ShootData sharedInstance].dream_freedKey] = @"1";
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/wallet/redDetail"] params:dict isShow:NO success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[ShootData sharedInstance].appHeavilyData] reload_strong:dict with:NO forward:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
        NSDictionary *data = [resultDict successAdd:[ShootData sharedInstance].main_tapFormat];
        //: NSDictionary *redinfo = [data valueObjectForKey:@"redinfo"];
        NSDictionary *redinfo = [data successAdd:[ShootData sharedInstance].mFishingMonthUrl];
        //: NSArray *list = [data arrayValueForKey:@"list"];
        NSArray *list = [data viewKey:[ShootData sharedInstance].dream_potFormat];
        //: _wordLabel.text = [redinfo newStringValueForKey:@"words"];
        _wordLabel.text = [redinfo record:[ShootData sharedInstance].user_primaryCloudContentMessage];
        //: [self reloadHeader:[redinfo newStringValueForKey:@"user_id"]];
        [self reload:[redinfo record:[ShootData sharedInstance].mainBorrowStr]];


        //: NSDictionary *getRedDict = nil;
        NSDictionary *getRedDict = nil;
        //: for (NSDictionary *item in list) {
        for (NSDictionary *item in list) {
            //: NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
            NSString *currentAccount = [[NIMSDK sharedSDK].loginManager currentAccount];
            //: if ([[item newStringValueForKey:@"user_id"] isEqualToString:currentAccount]) {
            if ([[item record:[ShootData sharedInstance].mainBorrowStr] isEqualToString:currentAccount]) {
                //: getRedDict = item;
                getRedDict = item;
                //: break;
                break;
            }
        }

        //: if (getRedDict == nil) {
        if (getRedDict == nil) {

            //: _amountLabel.text = @"unclaimed";
            _amountLabel.text = [ShootData sharedInstance].dreamWeepValue;
            //: [_amountLabel sizeToFit];
            [_amountLabel sizeToFit];
            //: [_amountLabel mas_updateConstraints:^(MASConstraintMaker *make) {
            [_amountLabel mas_updateConstraints:^(MASConstraintMaker *make) {
                //: make.width.mas_equalTo(120);
                make.width.mas_equalTo(120);
            //: }];
            }];
            //: _unitLabel.hidden = YES;
            _unitLabel.hidden = YES;
        //: }else{
        }else{
            //: _unitLabel.hidden = NO;
            _unitLabel.hidden = NO;
            //: NSString *amount = [NSString stringWithFormat:@"¥%@",[getRedDict newStringValueForKey:@"amount"]];
            NSString *amount = [NSString stringWithFormat:@"¥%@",[getRedDict record:[ShootData sharedInstance].dream_salmonName]];
            //: _amountLabel.text = amount;
            _amountLabel.text = amount;
            //: [_amountLabel mas_updateConstraints:^(MASConstraintMaker *make) {
            [_amountLabel mas_updateConstraints:^(MASConstraintMaker *make) {
                //: make.width.mas_equalTo(120);
                make.width.mas_equalTo(120);
            //: }];
            }];
            //: [_unitLabel mas_updateConstraints:^(MASConstraintMaker *make) {
            [_unitLabel mas_updateConstraints:^(MASConstraintMaker *make) {
                //: make.left.mas_equalTo(_amountLabel.mas_right).mas_offset(5);
                make.left.mas_equalTo(_amountLabel.mas_right).mas_offset(5);
            //: }];
            }];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: -(void)walletButtonClick{
-(void)argumentPress{

    //: if (self.delegate && [self.delegate respondsToSelector:@selector(myWalletDelegate)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(threadFor)]) {
        //: [self.delegate myWalletDelegate];
        [self.delegate threadFor];
        //: [self dismissPicker];
        [self untilSearched];
    }
}

//: -(void)redpackageDetail{
-(void)groundItem{
    //: if (self.delegate && [self.delegate respondsToSelector:@selector(redpackageDetailWith:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(lasted:)]) {
        //: [self.delegate redpackageDetailWith:[_originDict newStringValueForKey:@"redid"]];
        [self.delegate lasted:[_originDict record:[ShootData sharedInstance].dreamImageIdent]];
        //: [self dismissPicker];
        [self untilSearched];

    }
}

//: -(void)reloadHeader:(NSString *)userID{
-(void)reload:(NSString *)userID{
    //: NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    NIMUser *me = [[NIMSDK sharedSDK].userManager userInfo:userID];
    //: WatchKitInfo *info = [[MyUserKit sharedKit] infoByUser:userID option:nil];
    TingMessage *info = [[ButtonKit sheerOption] past:userID skinColour_strong:nil];
    //: NSString *headerUrl = me.userInfo.avatarUrl;
    NSString *headerUrl = me.userInfo.avatarUrl;
    //: UIImage *placeholderImage = info.avatarImage;
    UIImage *placeholderImage = info.avatarImage;
    //: [_headerImageView sd_setImageWithURL:[NSURL URLWithString:headerUrl] placeholderImage:placeholderImage];
    [_headerImageView sd_setImageWithURL:[NSURL URLWithString:headerUrl] placeholderImage:placeholderImage];
    //: _sendNickname.text = me.userInfo.nickName;
    _sendNickname.text = me.userInfo.nickName;
}

//: -(void)handleSingleTapFrom{
-(void)optionColor{
    //: [self dismissPicker];
    [self untilSearched];
}

//: - (void)show{
- (void)alter{

    //: UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    UIWindow *window = [[[UIApplication sharedApplication]delegate]window];
    //: [window addSubview:self];
    [window addSubview:self];

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 300/2];
        [self->_backView setModelSearchion:([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice tingHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))/2- 300/2];
    //: }];
    }];
}

//: - (void)dismissPicker{
- (void)untilSearched{
    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: [self->_backView setOriginY:[[UIScreen mainScreen] bounds].size.height];
        [self->_backView setModelSearchion:[[UIScreen mainScreen] bounds].size.height];
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {

        //: self.hidden = YES;
        self.hidden = YES;
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];
}

//: @end
@end
