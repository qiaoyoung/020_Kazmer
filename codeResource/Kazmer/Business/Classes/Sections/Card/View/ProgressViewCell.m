
#import <Foundation/Foundation.h>

typedef struct {
    Byte tinDisease;
    Byte *scribe;
    unsigned int patrolHormone;
	int accentTable;
	int sky;
} StructCabinCropData;

@interface CabinCropData : NSObject

+ (instancetype)sharedInstance;

//: code
@property (nonatomic, copy) NSString *appCircleId;

//: user_id
@property (nonatomic, copy) NSString *main_heavilyIdent;

//: account
@property (nonatomic, copy) NSString *k_colorKey;

//: data
@property (nonatomic, copy) NSString *k_stoneTerriblyFormat;

//: icon_gender_female
@property (nonatomic, copy) NSString *notiCommentTransformationPath;

//: /user/detail
@property (nonatomic, copy) NSString *dream_statusMsg;

//: register_avtivity_account
@property (nonatomic, copy) NSString *dreamTotalUrl;

//: icon_gender_male
@property (nonatomic, copy) NSString *m_simplyKey;

@end

@implementation CabinCropData

+ (instancetype)sharedInstance {
    static CabinCropData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)CabinCropDataToByte:(StructCabinCropData *)data {
    for (int i = 0; i < data->patrolHormone; i++) {
        data->scribe[i] ^= data->tinDisease;
    }
    data->scribe[data->patrolHormone] = 0;
	if (data->patrolHormone >= 2) {
		data->accentTable = data->scribe[0];
		data->sky = data->scribe[1];
	}
    return data->scribe;
}

- (NSString *)StringFromCabinCropData:(StructCabinCropData *)data {
    return [NSString stringWithUTF8String:(char *)[self CabinCropDataToByte:data]];
}

//: /user/detail
- (NSString *)dream_statusMsg {
    if (!_dream_statusMsg) {
        StructCabinCropData value = (StructCabinCropData){115, (Byte []){92, 6, 0, 22, 1, 92, 23, 22, 7, 18, 26, 31, 176}, 12, 125, 212};
        _dream_statusMsg = [self StringFromCabinCropData:&value];
    }
    return _dream_statusMsg;
}

//: account
- (NSString *)k_colorKey {
    if (!_k_colorKey) {
        StructCabinCropData value = (StructCabinCropData){80, (Byte []){49, 51, 51, 63, 37, 62, 36, 169}, 7, 80, 226};
        _k_colorKey = [self StringFromCabinCropData:&value];
    }
    return _k_colorKey;
}

//: icon_gender_male
- (NSString *)m_simplyKey {
    if (!_m_simplyKey) {
        StructCabinCropData value = (StructCabinCropData){236, (Byte []){133, 143, 131, 130, 179, 139, 137, 130, 136, 137, 158, 179, 129, 141, 128, 137, 151}, 16, 213, 141};
        _m_simplyKey = [self StringFromCabinCropData:&value];
    }
    return _m_simplyKey;
}

//: user_id
- (NSString *)main_heavilyIdent {
    if (!_main_heavilyIdent) {
        StructCabinCropData value = (StructCabinCropData){34, (Byte []){87, 81, 71, 80, 125, 75, 70, 22}, 7, 55, 39};
        _main_heavilyIdent = [self StringFromCabinCropData:&value];
    }
    return _main_heavilyIdent;
}

//: code
- (NSString *)appCircleId {
    if (!_appCircleId) {
        StructCabinCropData value = (StructCabinCropData){247, (Byte []){148, 152, 147, 146, 32}, 4, 71, 161};
        _appCircleId = [self StringFromCabinCropData:&value];
    }
    return _appCircleId;
}

//: data
- (NSString *)k_stoneTerriblyFormat {
    if (!_k_stoneTerriblyFormat) {
        StructCabinCropData value = (StructCabinCropData){115, (Byte []){23, 18, 7, 18, 223}, 4, 88, 16};
        _k_stoneTerriblyFormat = [self StringFromCabinCropData:&value];
    }
    return _k_stoneTerriblyFormat;
}

//: icon_gender_female
- (NSString *)notiCommentTransformationPath {
    if (!_notiCommentTransformationPath) {
        StructCabinCropData value = (StructCabinCropData){48, (Byte []){89, 83, 95, 94, 111, 87, 85, 94, 84, 85, 66, 111, 86, 85, 93, 81, 92, 85, 193}, 18, 98, 126};
        _notiCommentTransformationPath = [self StringFromCabinCropData:&value];
    }
    return _notiCommentTransformationPath;
}

//: register_avtivity_account
- (NSString *)dreamTotalUrl {
    if (!_dreamTotalUrl) {
        StructCabinCropData value = (StructCabinCropData){214, (Byte []){164, 179, 177, 191, 165, 162, 179, 164, 137, 183, 160, 162, 191, 160, 191, 162, 175, 137, 183, 181, 181, 185, 163, 184, 162, 20}, 25, 139, 55};
        _dreamTotalUrl = [self StringFromCabinCropData:&value];
    }
    return _dreamTotalUrl;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ProgressViewCell.m
//  NIM
//
//  Created by chris on 15/9/28.
//  Copyright © 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESCardPortraitCell.h"
#import "ProgressViewCell.h"
//: #import "FFFAvatarImageView.h"
#import "RecordControl.h"
//: #import "FFFCommonTableData.h"
#import "FFFCommonTableData.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"
//: #import "NTESSessionUtil.h"
#import "OldUtil.h"

//: @interface NTESCardPortraitCell()
@interface ProgressViewCell()

//: @property (nonatomic,strong) FFFAvatarImageView *avatar;
@property (nonatomic,strong) RecordControl *avatar;

//: @property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UILabel *nameLabel;

//: @property (nonatomic,strong) UILabel *nickNameLabel;
@property (nonatomic,strong) UILabel *nickNameLabel;

//: @property (nonatomic,strong) UILabel *accountLabel;
@property (nonatomic,strong) UILabel *accountLabel;

//: @property (nonatomic,strong) UIImageView *genderIcon;
@property (nonatomic,strong) UIImageView *genderIcon;

//: @end
@end

//: @implementation NTESCardPortraitCell
@implementation ProgressViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: CGFloat avatarWidth = 55.f;
        CGFloat avatarWidth = 55.f;
        //: _avatar = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, avatarWidth, avatarWidth)];
        _avatar = [[RecordControl alloc] initWithFrame:CGRectMake(0, 0, avatarWidth, avatarWidth)];
        //: [self.contentView addSubview:_avatar];
        [self.contentView addSubview:_avatar];
        //: _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nameLabel.font = [UIFont systemFontOfSize:18.f];
        _nameLabel.font = [UIFont systemFontOfSize:18.f];
        //: [self.contentView addSubview:_nameLabel];
        [self.contentView addSubview:_nameLabel];
        //: _nickNameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nickNameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nickNameLabel.font = [UIFont systemFontOfSize:13.f];
        _nickNameLabel.font = [UIFont systemFontOfSize:13.f];
        //: _nickNameLabel.textColor = [UIColor grayColor];
        _nickNameLabel.textColor = [UIColor grayColor];
        //: [self.contentView addSubview:_nickNameLabel];
        [self.contentView addSubview:_nickNameLabel];
        //: _accountLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _accountLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _accountLabel.font = [UIFont systemFontOfSize:13.f];
        _accountLabel.font = [UIFont systemFontOfSize:13.f];
        //: _accountLabel.textColor = [UIColor grayColor];
        _accountLabel.textColor = [UIColor grayColor];
        //: [self.contentView addSubview:_accountLabel];
        [self.contentView addSubview:_accountLabel];
        //: _genderIcon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 14, 14)];
        _genderIcon = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 14, 14)];
        //: [self.contentView addSubview:_genderIcon];
        [self.contentView addSubview:_genderIcon];
    }
    //: return self;
    return self;
}

//: - (void)refreshData:(NIMCommonTableRow *)rowData tableView:(UITableView *)tableView{
- (void)light:(CommonRow *)rowData manager:(UITableView *)tableView{

    //: self.textLabel.text = rowData.title;
    self.textLabel.text = rowData.title;
    //: self.detailTextLabel.text = rowData.detailTitle;
    self.detailTextLabel.text = rowData.detailTitle;
    //: NSString *uid = rowData.extraInfo;
    NSString *uid = rowData.extraInfo;
    //: if ([uid isKindOfClass:[NSString class]]) {
    if ([uid isKindOfClass:[NSString class]]) {
        //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:uid];
        NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:uid];
        //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:uid option:nil];
        TingMessage *info = [[ButtonKit sheerOption] past:uid skinColour_strong:nil];
        //: self.nameLabel.text = info.showName ;
        self.nameLabel.text = info.showName ;
        //: NSString *register_avtivity_account = [FFFLanguageManager getTextWithKey:@"register_avtivity_account"];
        NSString *register_avtivity_account = [PaintedNaturalLanguageTo exhibit:[CabinCropData sharedInstance].dreamTotalUrl];
        //: self.accountLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, uid];
        self.accountLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, uid];
        //: [self.accountLabel sizeToFit];
        [self.accountLabel sizeToFit];
        //: [self.avatar nim_setImageWithURL:[NSURL URLWithString:info.avatarUrlString] placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
        [self.avatar press:[NSURL URLWithString:info.avatarUrlString] title:info.avatarImage bubbleImageOptions:SDWebImageRetryFailed];
        //: if (user.userInfo.gender == NIMUserGenderMale) {
        if (user.userInfo.gender == NIMUserGenderMale) {
            //: _genderIcon.image = [UIImage imageNamed:@"icon_gender_male"];
            _genderIcon.image = [UIImage imageNamed:[CabinCropData sharedInstance].m_simplyKey];
            //: _genderIcon.hidden = NO;
            _genderIcon.hidden = NO;
        }
        //: else if(user.userInfo.gender == NIMUserGenderFemale) {
        else if(user.userInfo.gender == NIMUserGenderFemale) {
            //: _genderIcon.image = [UIImage imageNamed:@"icon_gender_female"];
            _genderIcon.image = [UIImage imageNamed:[CabinCropData sharedInstance].notiCommentTransformationPath];
            //: _genderIcon.hidden = NO;
            _genderIcon.hidden = NO;
        }
        //: else {
        else {
            //: _genderIcon.hidden = YES;
            _genderIcon.hidden = YES;
        }
        //: NSString *nickName = user.userInfo.nickName ? user.userInfo.nickName : @"";
        NSString *nickName = user.userInfo.nickName ? user.userInfo.nickName : @"";
        //: _nickNameLabel.hidden = !user.alias.length;
        _nickNameLabel.hidden = !user.alias.length;

        //: _nickNameLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, nickName];
        _nickNameLabel.text = [NSString stringWithFormat:@"%@：%@",register_avtivity_account, nickName];
        //: [_nickNameLabel sizeToFit];
        [_nickNameLabel sizeToFit];
    }
    //: self.accountLabel.hidden = YES;
    self.accountLabel.hidden = YES;
    //: [self refreshData:rowData account:@""];
    [self existentStudy:rowData team:@""];

}

//: -(void)refreshData:(NIMCommonTableRow *)rowData account:(NSString *)account{
-(void)existentStudy:(CommonRow *)rowData team:(NSString *)account{

    //: NSString *uid = rowData.extraInfo;
    NSString *uid = rowData.extraInfo;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"user_id"] = uid;
    dict[[CabinCropData sharedInstance].main_heavilyIdent] = uid;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/detail"] params:dict isShow:YES success:^(id responseObject) {
    [CoverPageMode bubbleFailed:[NSString stringWithFormat:[CabinCropData sharedInstance].dream_statusMsg] reload_strong:dict with:YES forward:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict record:[CabinCropData sharedInstance].appCircleId];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict successAdd:[CabinCropData sharedInstance].k_stoneTerriblyFormat];
            //: NSString *account = [data newStringValueForKey:@"account"];
            NSString *account = [data record:[CabinCropData sharedInstance].k_colorKey];
            //: self.accountLabel.hidden = NO;
            self.accountLabel.hidden = NO;
            //: NSString *register_avtivity_account = [FFFLanguageManager getTextWithKey:@"register_avtivity_account"];
            NSString *register_avtivity_account = [PaintedNaturalLanguageTo exhibit:[CabinCropData sharedInstance].dreamTotalUrl];

            //: self.accountLabel.text = [NSString stringWithFormat:@"%@:%@",register_avtivity_account, account];
            self.accountLabel.text = [NSString stringWithFormat:@"%@:%@",register_avtivity_account, account];
            //: [self.accountLabel sizeToFit];
            [self.accountLabel sizeToFit];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } title:^(id responseObject, NSError *error) {

    //: }];
    }];

}
//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.avatar.left = 30;
    self.avatar.left = 30;
    //: self.avatar.centerY = self.height * .5f;
    self.avatar.centerY = self.height * .5f;

    //: CGFloat scale = self.width / 320;
    CGFloat scale = self.width / 320;
    //: CGFloat maxTextLabelWidth = 180 * scale;
    CGFloat maxTextLabelWidth = 180 * scale;
    //: [self.nameLabel sizeToFit];
    [self.nameLabel sizeToFit];
    //: self.nameLabel.width = ((self.nameLabel.width) < (maxTextLabelWidth) ? (self.nameLabel.width) : (maxTextLabelWidth));
    self.nameLabel.width = ((self.nameLabel.width) < (maxTextLabelWidth) ? (self.nameLabel.width) : (maxTextLabelWidth));
    //: self.nameLabel.left = self.avatar.right + 12;
    self.nameLabel.left = self.avatar.right + 12;
    //: self.nameLabel.top = 22;
    self.nameLabel.top = 22;

    //: if (self.nickNameLabel.hidden) {
    if (self.nickNameLabel.hidden) {
        //: self.accountLabel.left = self.nameLabel.left;
        self.accountLabel.left = self.nameLabel.left;
        //: self.accountLabel.bottom = self.height - 22;
        self.accountLabel.bottom = self.height - 22;
    //: }else{
    }else{
        //: self.nickNameLabel.left = self.nameLabel.left;
        self.nickNameLabel.left = self.nameLabel.left;
        //: self.nickNameLabel.bottom = self.height - 22;
        self.nickNameLabel.bottom = self.height - 22;
        //: self.accountLabel.left = self.nameLabel.left;
        self.accountLabel.left = self.nameLabel.left;
        //: self.accountLabel.centerY = (self.nickNameLabel.top + self.nameLabel.bottom) * .5f;
        self.accountLabel.centerY = (self.nickNameLabel.top + self.nameLabel.bottom) * .5f;
    }

    //: self.genderIcon.left = self.nameLabel.right + 12;
    self.genderIcon.left = self.nameLabel.right + 12;
    //: self.genderIcon.centerY = self.nameLabel.centerY;
    self.genderIcon.centerY = self.nameLabel.centerY;
}

//: @end
@end