
#import <Foundation/Foundation.h>

typedef struct {
    Byte palFishing;
    Byte *difference;
    unsigned int storageRing;
} StructWordsData;

@interface WordsData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation WordsData

+ (instancetype)sharedInstance {
    static WordsData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)WordsDataToByte:(StructWordsData *)data {
    for (int i = 0; i < data->storageRing; i++) {
        data->difference[i] ^= data->palFishing;
    }
    data->difference[data->storageRing] = 0;
    return data->difference;
}

- (NSString *)StringFromWordsData:(StructWordsData *)data {
    return [NSString stringWithUTF8String:(char *)[self WordsDataToByte:data]];
}

//: icon_accessory_selected
- (NSString *)k_coupleMessage {
    /* static */ NSString *k_coupleMessage = nil;
    if (!k_coupleMessage) {
        StructWordsData value = (StructWordsData){222, (Byte []){183, 189, 177, 176, 129, 191, 189, 189, 187, 173, 173, 177, 172, 167, 129, 173, 187, 178, 187, 189, 170, 187, 186, 77}, 23};
        k_coupleMessage = [self StringFromWordsData:&value];
    }
    return k_coupleMessage;
}

//: head_default
- (NSString *)app_memoryStr {
    /* static */ NSString *app_memoryStr = nil;
    if (!app_memoryStr) {
        StructWordsData value = (StructWordsData){255, (Byte []){151, 154, 158, 155, 160, 155, 154, 153, 158, 138, 147, 139, 38}, 12};
        app_memoryStr = [self StringFromWordsData:&value];
    }
    return app_memoryStr;
}

//: f6f6f6
- (NSString *)show_cueMessage {
    /* static */ NSString *show_cueMessage = nil;
    if (!show_cueMessage) {
        StructWordsData value = (StructWordsData){102, (Byte []){0, 80, 0, 80, 0, 80, 200}, 6};
        show_cueMessage = [self StringFromWordsData:&value];
    }
    return show_cueMessage;
}

//: icon_accessory_normal
- (NSString *)kFailureValue {
    /* static */ NSString *kFailureValue = nil;
    if (!kFailureValue) {
        StructWordsData value = (StructWordsData){129, (Byte []){232, 226, 238, 239, 222, 224, 226, 226, 228, 242, 242, 238, 243, 248, 222, 239, 238, 243, 236, 224, 237, 69}, 21};
        kFailureValue = [self StringFromWordsData:&value];
    }
    return kFailureValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESContactInfoCell.m
//  NIM
//
//  Created by chris on 15/2/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFContactDataCell.h"
#import "ContactViewCell.h"
//: #import "FFFAvatarImageView.h"
#import "RecordControl.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"

//: @interface FFFContactDataCell()
@interface ContactViewCell()

//: @end
@end

//: @implementation FFFContactDataCell
@implementation ContactViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

        //: UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 72)];
        UIView *bgView = [[UIView alloc]initWithFrame:CGRectMake(15, 8, [[UIScreen mainScreen] bounds].size.width-30, 72)];
        //: bgView.backgroundColor = [UIColor colorWithHexString:@"f6f6f6"];
        bgView.backgroundColor = [UIColor min:[[WordsData sharedInstance] show_cueMessage]];
        //: bgView.layer.cornerRadius = 16;
        bgView.layer.cornerRadius = 16;
        //: [self.contentView addSubview:bgView];
        [self.contentView addSubview:bgView];


        //: _avatarImageView = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
        _avatarImageView = [[RecordControl alloc] initWithFrame:CGRectMake(15, 12, 48, 48)];
        //: [_avatarImageView addTarget:self action:@selector(onPressAvatar:) forControlEvents:UIControlEventTouchUpInside];
        [_avatarImageView addTarget:self action:@selector(optionLoad:) forControlEvents:UIControlEventTouchUpInside];
        //: [bgView addSubview:_avatarImageView];
        [bgView addSubview:_avatarImageView];

        //: _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _accessoryBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _accessoryBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-24-15, 24, 24, 24);
        _accessoryBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-24-15, 24, 24, 24);
        //: [_accessoryBtn setImage:[UIImage imageNamed:@"icon_accessory_normal"] forState:UIControlStateNormal];
        [_accessoryBtn setImage:[UIImage imageNamed:[[WordsData sharedInstance] kFailureValue]] forState:UIControlStateNormal];
        //: [_accessoryBtn setImage:[UIImage imageNamed:@"icon_accessory_selected"] forState:UIControlStateSelected];
        [_accessoryBtn setImage:[UIImage imageNamed:[[WordsData sharedInstance] k_coupleMessage]] forState:UIControlStateSelected];
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

//: - (void)refreshItem:(id<NIMGroupMemberProtocol>)member {
- (void)upgrade:(id<VarnaSessionProtocolUser>)member {
    //: [self refreshTitle:member.showName];
    [self max:member.representation];
    //: self.memberId = member.memberId;
    self.memberId = member.show;
    //: NSURL *url = member.avatarUrlString ? [NSURL URLWithString:member.avatarUrlString] : nil;
    NSURL *url = member.pathTitle ? [NSURL URLWithString:member.pathTitle] : nil;
    //: [_avatarImageView nim_setImageWithURL:url placeholderImage:[UIImage imageNamed:@"head_default"] options:SDWebImageRetryFailed];
    [_avatarImageView press:url title:[UIImage imageNamed:[[WordsData sharedInstance] app_memoryStr]] bubbleImageOptions:SDWebImageRetryFailed];
}

//: - (void)refreshUser:(id<NIMGroupMemberProtocol>)member{
- (void)range:(id<VarnaSessionProtocolUser>)member{
    //: [self refreshTitle:member.showName];
    [self max:member.representation];
    //: self.memberId = [member memberId];
    self.memberId = [member show];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:self.memberId option:nil];
    TingMessage *info = [[ButtonKit sheerOption] past:self.memberId skinColour_strong:nil];
    //: [self refreshAvatar:info];
    [self refresh:info];
}

//: - (void)refreshTeam:(NIMTeam *)team; {
- (void)flush:(NIMTeam *)team; {
    //: [self refreshTitle:team.teamName];
    [self max:team.teamName];
    //: self.memberId = [team teamId];
    self.memberId = [team teamId];
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByTeam:self.memberId option:nil];
    TingMessage *info = [[ButtonKit sheerOption] pressMedia:self.memberId sizeOption:nil];
    //: [self refreshAvatar:info];
    [self refresh:info];
}

//: - (void)refreshTitle:(NSString *)title{
- (void)max:(NSString *)title{
    //: self.labName.text = title;
    self.labName.text = title;
}

//: - (void)refreshAvatar:(FFFKitInfo *)info{
- (void)refresh:(TingMessage *)info{
    //: NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    NSURL *url = info.avatarUrlString ? [NSURL URLWithString:info.avatarUrlString] : nil;
    //: [_avatarImageView nim_setImageWithURL:url placeholderImage:info.avatarImage options:SDWebImageRetryFailed];
    [_avatarImageView press:url title:info.avatarImage bubbleImageOptions:SDWebImageRetryFailed];
}

//: - (void)onPressAvatar:(id)sender{
- (void)optionLoad:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(onPressAvatar:)]) {
    if ([self.delegate respondsToSelector:@selector(optionLoad:)]) {
        //: [self.delegate onPressAvatar:self.memberId];
        [self.delegate optionLoad:self.memberId];
    }
}

//: - (void)addDelegate:(id)delegate{
- (void)prolusionTo:(id)delegate{
    //: self.delegate = delegate;
    self.delegate = delegate;
}

//: - (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated{
    //: [self.accessoryBtn setHighlighted:highlighted];
    [self.accessoryBtn setHighlighted:highlighted];
}


//: - (void)setSelected:(BOOL)selected animated:(BOOL)animated{
- (void)setSelected:(BOOL)selected animated:(BOOL)animated{

}






//: @end
@end