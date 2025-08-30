
#import <Foundation/Foundation.h>

@interface InsertingData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation InsertingData

+ (instancetype)sharedInstance {
    static InsertingData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)InsertingDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)InsertingDataToCache:(Byte *)data {
    int strap = data[0];
    Byte trendSetting = data[1];
    int painfulCharity = data[2];
    for (int i = painfulCharity; i < painfulCharity + strap; i++) {
        int value = data[i] - trendSetting;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[painfulCharity + strap] = 0;
    return data + painfulCharity;
}

- (NSString *)StringFromInsertingData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self InsertingDataToCache:data]];
}

//: icon_accessory_selected
- (NSString *)kTitleWheatFishSilkData {
    /* static */ NSString *kTitleWheatFishSilkData = nil;
    if (!kTitleWheatFishSilkData) {
		NSArray<NSString *> *origin = @[@"23", @"91", @"6", @"237", @"221", @"113", @"196", @"190", @"202", @"201", @"186", @"188", @"190", @"190", @"192", @"206", @"206", @"202", @"205", @"212", @"186", @"206", @"192", @"199", @"192", @"190", @"207", @"192", @"191", @"68"];
		NSData *data = [InsertingData InsertingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleWheatFishSilkData = [self StringFromInsertingData:value];
    }
    return kTitleWheatFishSilkData;
}

//: icon_accessory_normal
- (NSString *)kTitle_huhData {
    /* static */ NSString *kTitle_huhData = nil;
    if (!kTitle_huhData) {
		NSArray<NSString *> *origin = @[@"21", @"6", @"6", @"98", @"128", @"237", @"111", @"105", @"117", @"116", @"101", @"103", @"105", @"105", @"107", @"121", @"121", @"117", @"120", @"127", @"101", @"116", @"117", @"120", @"115", @"103", @"114", @"110"];
		NSData *data = [InsertingData InsertingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_huhData = [self StringFromInsertingData:value];
    }
    return kTitle_huhData;
}

//: f6f6f6
- (NSString *)kName_boarData {
    /* static */ NSString *kName_boarData = nil;
    if (!kName_boarData) {
		NSArray<NSString *> *origin = @[@"6", @"44", @"9", @"157", @"62", @"44", @"123", @"155", @"235", @"146", @"98", @"146", @"98", @"146", @"98", @"87"];
		NSData *data = [InsertingData InsertingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_boarData = [self StringFromInsertingData:value];
    }
    return kName_boarData;
}

//: head_default
- (NSString *)kName_sexuallyData {
    /* static */ NSString *kName_sexuallyData = nil;
    if (!kName_sexuallyData) {
		NSArray<NSString *> *origin = @[@"12", @"14", @"12", @"211", @"99", @"57", @"22", @"54", @"206", @"224", @"158", @"76", @"118", @"115", @"111", @"114", @"109", @"114", @"115", @"116", @"111", @"131", @"122", @"130", @"213"];
		NSData *data = [InsertingData InsertingDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_sexuallyData = [self StringFromInsertingData:value];
    }
    return kName_sexuallyData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  USERContactInfoCell.m
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayContactDataCell.h"
#import "ContactViewCell.h"
//: #import "DisplayAvatarImageView.h"
#import "MemoryImageControl.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"

//: @interface DisplayContactDataCell()
@interface ContactViewCell()

//: @end
@end

//: @implementation DisplayContactDataCell
@implementation ContactViewCell

//: - (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
    //: [self.accessoryBtn setHighlighted:highlighted];
    [self.accessoryBtn setHighlighted:highlighted];
}

//: - (void)onPressAvatar:(id)sender{
- (void)instanceAvatar:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(onPressAvatar:)]) {
    if ([self.delegate respondsToSelector:@selector(instanceAvatar:)]) {
        //: [self.delegate onPressAvatar:self.memberId];
        [self.delegate instanceAvatar:self.memberId];
    }
}

//: - (void)setSelected:(BOOL)selected animated:(BOOL)animated{
- (void)setSelected:(BOOL)selected animated:(BOOL)animated{

}

//: - (void)refreshItem:(id<NIMGroupMemberProtocol>)member {
- (void)temp:(id<DisplayRow>)member {
    //: [self refreshTitle:member.showName];
    [self rubric:member.tabTitle];
    //: self.memberId = member.memberId;
    self.memberId = member.littleLeagueTeam;
    //: NSURL *url = member.avatarUrlString ? [NSURL URLWithString:member.avatarUrlString] : nil;
    NSURL *url = member.image ? [NSURL URLWithString:member.image] : nil;
    //: [_avatarImageView nim_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default"] options:SDWebImageRetryFailed];
    [_avatarImageView sendWith:url media:[UIImage imageNamed:[[InsertingData sharedInstance] kName_sexuallyData]] doing:SDWebImageRetryFailed];
}

//: - (void)refreshTitle:(NSString *)title{
- (void)rubric:(NSString *)title{
    //: self.labName.text = title;
    self.labName.text = title;
}

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member{
- (void)pathColor:(id<DisplayRow>)member{
    //: [self refreshTitle:member.showName];
    [self rubric:member.tabTitle];
    //: self.memberId = [member memberId];
    self.memberId = [member littleLeagueTeam];
    //: DisplayKitInfo *info = [[MyUserKit sharedKit] infoByUser:self.memberId option:nil];
    CancelTeamCorner *info = [[Mortification text] tingVoice:self.memberId keepingOption:nil];
    //: [self refreshAvatar:info];
    [self manager:info];
}

//: - (void)refreshAvatar:(DisplayKitInfo *)info{
- (void)manager:(CancelTeamCorner *)info{
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    //: [_avatarImageView nim_setImageWithURL:url placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    [_avatarImageView sendWith:url media:info.avatarImage doing:SDWebImageRetryFailed];
}

//: - (void)refreshTeam:(NIMTeam *)team; {
- (void)progressTeam:(NIMTeam *)team; {
    //: [self refreshTitle:team.teamName];
    [self rubric:team.teamName];
    //: self.memberId = [team teamId];
    self.memberId = [team teamId];
    //: DisplayKitInfo *info = [[MyUserKit sharedKit] infoByTeam:self.memberId option:nil];
    CancelTeamCorner *info = [[Mortification text] ability:self.memberId naturalEvent_strong:nil];
    //: [self refreshAvatar:info];
    [self manager:info];
}

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

        //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 72)];
        UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 72)];
        //: bgView.backgroundColor = [UIColor colorWithHexString:@"f6f6f6"];
        bgView.backgroundColor = [UIColor cell:[[InsertingData sharedInstance] kName_boarData]];
        //: bgView.layer.cornerRadius = 16;
        bgView.layer.cornerRadius = 16;
        //: [self.contentView addSubview:bgView];
        [self.contentView addSubview:bgView];


        //: _avatarImageView = [[DisplayAvatarImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
        _avatarImageView = [[MemoryImageControl alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
        //: [_avatarImageView addTarget:self action:@selector(onPressAvatar:) forControlEvents:UIControlEventTouchUpInside];
        [_avatarImageView addTarget:self action:@selector(instanceAvatar:) forControlEvents:UIControlEventTouchUpInside];
        //: [bgView addSubview:_avatarImageView];
        [bgView addSubview:_avatarImageView];

        //: _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _accessoryBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-24-15, 24, 24, 24);
        _accessoryBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-24-15, 24, 24, 24);
        //: [_accessoryBtn setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_accessoryBtn setImage:[UIImage imageNamed:[[InsertingData sharedInstance] kTitle_huhData]] forState:UIControlStateNormal];
        //: [_accessoryBtn setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_accessoryBtn setImage:[UIImage imageNamed:[[InsertingData sharedInstance] kTitleWheatFishSilkData]] forState:UIControlStateSelected];
        //: [_accessoryBtn sizeToFit];
        [_accessoryBtn sizeToFit];
        //: _accessoryBtn.hidden = YES;
        _accessoryBtn.hidden = YES;
        //: _accessoryBtn.userInteractionEnabled = NO;
        _accessoryBtn.userInteractionEnabled = NO;
        //: [bgView addSubview:_accessoryBtn];
        [bgView addSubview:_accessoryBtn];

        //: self.labName = [[UILabel alloc]initWithFrame:CGRectMake(_avatarImageView.right+15, 12, 250, 48)];
        self.labName = [[UILabel alloc]initWithFrame:CGRectMake(_avatarImageView.right+15, 12, 250, 48)];
        //: self.labName.textColor = [UIColor blackColor];
        self.labName.textColor = [UIColor blackColor];
        //: self.labName.font = [UIFont boldSystemFontOfSize:16];
        self.labName.font = [UIFont boldSystemFontOfSize:16];
        //: [bgView addSubview:self.labName];
        [bgView addSubview:self.labName];

        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
        //: self.selectionStyle = UITableViewCellSelectionStyleGray;
        self.selectionStyle = UITableViewCellSelectionStyleGray;
    }
    //: return self;
    return self;
}


//: - (void)addDelegate:(id)delegate{
- (void)delegate:(id)delegate{
    //: self.delegate = delegate;
    self.delegate = delegate;
}






//: @end
@end
