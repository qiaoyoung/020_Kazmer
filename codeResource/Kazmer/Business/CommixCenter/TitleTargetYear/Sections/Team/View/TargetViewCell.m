
#import <Foundation/Foundation.h>

@interface NousData : NSObject

@end

@implementation NousData

+ (NSData *)NousDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)NousDataToCache:(Byte *)data {
    int complimentary = data[0];
    Byte melt = data[1];
    int command = data[2];
    for (int i = command; i < command + complimentary; i++) {
        int value = data[i] + melt;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[command + complimentary] = 0;
    return data + command;
}

+ (NSString *)StringFromNousData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self NousDataToCache:data]];
}

//: Group_Me
+ (NSString *)kName_wheatBeautyValue {
    /* static */ NSString *kName_wheatBeautyValue = nil;
    if (!kName_wheatBeautyValue) {
		NSArray<NSString *> *origin = @[@"8", @"99", @"8", @"169", @"38", @"120", @"66", @"20", @"228", @"15", @"12", @"18", @"13", @"252", @"234", @"2", @"155"];
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_wheatBeautyValue = [self StringFromNousData:value];
    }
    return kName_wheatBeautyValue;
}

//: icon_add_normal
+ (NSString *)kTitleRespectivelyData {
    /* static */ NSString *kTitleRespectivelyData = nil;
    if (!kTitleRespectivelyData) {
		NSArray<NSString *> *origin = @[@"15", @"71", @"13", @"60", @"35", @"125", @"239", @"34", @"136", @"20", @"237", @"242", @"60", @"34", @"28", @"40", @"39", @"24", @"26", @"29", @"29", @"24", @"39", @"40", @"43", @"38", @"26", @"37", @"226"];
		NSData *data = [NousData NousDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleRespectivelyData = [self StringFromNousData:value];
    }
    return kTitleRespectivelyData;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  TargetViewCell.m
//  NIM
//
//  Created by chris on 15/3/26.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayTeamMemberListCell.h"
#import "TargetViewCell.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "DisplayAvatarImageView.h"
#import "MemoryImageControl.h"
//: #import "DisplayKitUtil.h"
#import "AtPull.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import "DisplayTeamHelper.h"
#import "MaxHelper.h"
//: #import "DisplayCardUserDelegate.h"
#import "DisplayCardUserDelegate.h"

//: NSString *const kTeamMember = @"kTeamMember";
NSString *const m_pathId = @"kTeamMember";
//: NSString *const kTeamMemberInfo = @"kTeamMemberInfo";
NSString *const dreamTitleData = @"kTeamMemberInfo";

//: @interface NIMTeamMemberView : UIView{
@interface TribesmanView : UIView{

}

//: @property(nonatomic,strong) DisplayAvatarImageView *imageView;
@property(nonatomic,strong) MemoryImageControl *imageView;

//: @property (nonatomic,strong) UIImageView *roleImageView;
@property (nonatomic,strong) UIImageView *roleImageView;

//: @property(nonatomic,strong) UILabel *titleLabel;
@property(nonatomic,strong) UILabel *titleLabel;

//: @property(nonatomic,strong) NSDictionary *member;
@property(nonatomic,strong) NSDictionary *member;

//: @end
@end



//: @implementation NIMTeamMemberView
@implementation TribesmanView
//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.backgroundColor = [UIColor clearColor];
        //: _titleLabel.font = [UIFont systemFontOfSize:12.f];
        _titleLabel.font = [UIFont systemFontOfSize:12.f];
        //: [self addSubview:_titleLabel];
        [self addSubview:_titleLabel];
        //: _imageView = [[DisplayAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 37, 37)];
        _imageView = [[MemoryImageControl alloc] initWithFrame:CGRectMake(0, 0, 37, 37)];
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];
        //: _roleImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _roleImageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: [self addSubview:_roleImageView];
        [self addSubview:_roleImageView];
    }
    //: return self;
    return self;
}

//: - (void)setMember:(NSDictionary *)member{
- (void)setMember:(NSDictionary *)member{
    //: _member = member;
    _member = member;
    //: DisplayKitInfo *info = member[kTeamMemberInfo];
    CancelTeamCorner *info = member[dreamTitleData];
    //: id<DisplayKitCardHeaderData>user = member[kTeamMember];
    id<HalogenComment>user = member[m_pathId];
    //: NSURL *avatarURL;
    NSURL *avatarURL;
    //: if (info.avatarUrlString.length) {
    if (info.avatarUrlString.length) {
        //: avatarURL = [NSURL URLWithString:info.avatarUrlString];
        avatarURL = [NSURL URLWithString:info.avatarUrlString];
    }
    //: [_imageView nim_setImageWithURL:avatarURL placeholderImage:info.avatarImage];
    [_imageView past:avatarURL display:info.avatarImage];

    //: NSString *showName = (info.showName ?: @"");
    NSString *showName = (info.showName ?: @"");
    //: if ([user isMyUserId]) {
    if ([user inputId]) {
        //: showName = [DisplayLanguageManager getTextWithKey:@"Group_Me"];
        showName = [MakeManager cell:[NousData kName_wheatBeautyValue]];//@"我".;
    }
    //: _titleLabel.text = showName;
    _titleLabel.text = showName;
    //: _roleImageView.image = [DisplayTeamHelper imageWithMemberType:user.userType];
    _roleImageView.image = [MaxHelper tip:user.underSession];
}


//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: return CGSizeMake(38, 53);
    return CGSizeMake(38, 53);
}



//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: [self.titleLabel sizeToFit];
    [self.titleLabel sizeToFit];
    //: self.titleLabel.device_width = _titleLabel.device_width > self.device_width ? self.device_width : _titleLabel.device_width;
    self.titleLabel.device_width = _titleLabel.device_width > self.device_width ? self.device_width : _titleLabel.device_width;
    //: self.imageView.device_centerX = self.device_width * .5f;
    self.imageView.device_centerX = self.device_width * .5f;
    //: self.titleLabel.device_centerX = self.device_width * .5f;
    self.titleLabel.device_centerX = self.device_width * .5f;
    //: self.titleLabel.device_bottom = self.device_height;
    self.titleLabel.device_bottom = self.device_height;
    //: self.roleImageView.device_size = CGSizeMake(16, 16);
    self.roleImageView.device_size = CGSizeMake(16, 16);
    //: self.roleImageView.device_bottom = self.imageView.device_bottom;
    self.roleImageView.device_bottom = self.imageView.device_bottom;
    //: self.roleImageView.device_right = self.imageView.device_right;
    self.roleImageView.device_right = self.imageView.device_right;
}
//: @end
@end

//: const CGFloat kDisplayTeamMemberListCellItemWidth = 49.f;
const CGFloat notiKitFormat = 49.f;
//: const CGFloat kDisplayTeamMemberListCellItemPadding = 44.f;
const CGFloat user_methodPath = 44.f;

//: @interface DisplayTeamMemberListCell()
@interface TargetViewCell()

//: @property(nonatomic,strong) NSMutableArray *icons;
@property(nonatomic,strong) NSMutableArray *icons;

//: @property(nonatomic, strong) UIButton *addBtn;
@property(nonatomic, strong) UIButton *addBtn;

//: @end
@end

//: @implementation DisplayTeamMemberListCell
@implementation TargetViewCell
//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: _icons = [[NSMutableArray alloc] init];
        _icons = [[NSMutableArray alloc] init];
        //: _addBtn = [[UIButton alloc]initWithFrame:CGRectZero];
        _addBtn = [[UIButton alloc]initWithFrame:CGRectZero];
        //: [_addBtn addTarget:self action:@selector(onPress:) forControlEvents:UIControlEventTouchUpInside];
        [_addBtn addTarget:self action:@selector(shared:) forControlEvents:UIControlEventTouchUpInside];
        //: _addBtn.userInteractionEnabled = NO;
        _addBtn.userInteractionEnabled = NO;
        //: [self.contentView addSubview:_addBtn];
        [self.contentView addSubview:_addBtn];
    }
    //: return self;
    return self;
}

//: - (NSInteger)maxShowMemberCount {
- (NSInteger)maxShowMemberCount {
    //: CGFloat width = (self.device_width != [UIScreen mainScreen].bounds.size.width) ? [UIScreen mainScreen].bounds.size.width : self.device_width;
    CGFloat width = (self.device_width != [UIScreen mainScreen].bounds.size.width) ? [UIScreen mainScreen].bounds.size.width : self.device_width;
    //: NSInteger maxShowCount = (width - kDisplayTeamMemberListCellItemPadding) / kDisplayTeamMemberListCellItemWidth;
    NSInteger maxShowCount = (width - user_methodPath) / notiKitFormat;
    //: return maxShowCount;
    return maxShowCount;
}

//: - (void)setInfos:(NSMutableArray<NSDictionary *> *)infos {
- (void)setInfos:(NSMutableArray<NSDictionary *> *)infos {
    //: NSInteger count = 0;
    NSInteger count = 0;

    //invite button
    //: if (!_disableInvite) {
    if (!_disableInvite) {
        //: NIMTeamMemberView *view = [self fetchMemeberView:0];
        TribesmanView *view = [self light:0];
        //: UIImage *addImage = [UIImage imageNamed:@"icon_add_normal"];
        UIImage *addImage = [UIImage imageNamed:[NousData kTitleRespectivelyData]];
        //: [view.imageView setImage:addImage];
        [view.imageView setImage:addImage];
        //: view.roleImageView.image = nil;
        view.roleImageView.image = nil;
        //: view.titleLabel.text = @"邀请".nim_localized;
        view.titleLabel.text = @"邀请".disable;
        //: count = 1;
        count = 1;
    }
    //: self.addBtn.userInteractionEnabled = (count != 0);
    self.addBtn.userInteractionEnabled = (count != 0);

    //icons
    //: for (UIView *view in _icons) {
    for (UIView *view in _icons) {
        //: [view removeFromSuperview];
        [view removeFromSuperview];
    }

    //: NSInteger maxShowCount = self.maxShowMemberCount;
    NSInteger maxShowCount = self.maxShowMemberCount;
    //: NSInteger iconCount = infos.count > maxShowCount-count ? maxShowCount : infos.count+count;
    NSInteger iconCount = infos.count > maxShowCount-count ? maxShowCount : infos.count+count;
    //: for (NSInteger i = 0; i < iconCount; i++) {
    for (NSInteger i = 0; i < iconCount; i++) {
        //: NIMTeamMemberView *view = [self fetchMemeberView:i];
        TribesmanView *view = [self light:i];
        //: if (!count || i != 0) {
        if (!count || i != 0) {
            //: NSInteger memberIndex = i - count;
            NSInteger memberIndex = i - count;
            //: view.member = infos[memberIndex];
            view.member = infos[memberIndex];
        }
        //: [self.contentView addSubview:view];
        [self.contentView addSubview:view];
        //: [view setNeedsLayout];
        [view setNeedsLayout];
    }
    //: [self bringSubviewToFront:self.addBtn];
    [self bringSubviewToFront:self.addBtn];
}

//: - (void)onPress:(id)sender{
- (void)shared:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(didSelectAddOpeartor)]) {
    if ([self.delegate respondsToSelector:@selector(currentPath)]) {
        //: [self.delegate didSelectAddOpeartor];
        [self.delegate currentPath];
    }
}

//: - (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    //: CGRect hitRect = self.addBtn.frame;
    CGRect hitRect = self.addBtn.frame;
    //: return CGRectContainsPoint(hitRect, point) ? self.addBtn : [super hitTest:point withEvent:event];
    return CGRectContainsPoint(hitRect, point) ? self.addBtn : [super hitTest:point withEvent:event];
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: _addBtn.frame = CGRectMake(0, 0, self.device_width *.20f, self.device_height);
    _addBtn.frame = CGRectMake(0, 0, self.device_width *.20f, self.device_height);
    //: CGFloat left = 20.f;
    CGFloat left = 20.f;
    //: CGFloat top = 17.f;
    CGFloat top = 17.f;
    //: self.textLabel.device_left = left;
    self.textLabel.device_left = left;
    //: self.textLabel.device_top = top;
    self.textLabel.device_top = top;
    //: self.detailTextLabel.device_top = top;
    self.detailTextLabel.device_top = top;
    //: self.accessoryView.device_top = top;
    self.accessoryView.device_top = top;

    //: CGFloat spacing = 12.f;
    CGFloat spacing = 12.f;
    //: CGFloat bottom = 10.f;
    CGFloat bottom = 10.f;
    //: for (NIMTeamMemberView *view in _icons) {
    for (TribesmanView *view in _icons) {
        //: view.device_left = left;
        view.device_left = left;
        //: left += view.device_width;
        left += view.device_width;
        //: left += spacing;
        left += spacing;
        //: view.device_bottom = self.device_height - bottom;
        view.device_bottom = self.device_height - bottom;
    }
}


//: #pragma mark - Private
#pragma mark - Private

//: - (NIMTeamMemberView *)fetchMemeberView:(NSInteger)index{
- (TribesmanView *)light:(NSInteger)index{
    //: if (_icons.count <= index) {
    if (_icons.count <= index) {
        //: for (int i = 0; i < index - _icons.count + 1 ; i++) {
        for (int i = 0; i < index - _icons.count + 1 ; i++) {
            //: NIMTeamMemberView *view = [[NIMTeamMemberView alloc]initWithFrame:CGRectZero];
            TribesmanView *view = [[TribesmanView alloc]initWithFrame:CGRectZero];
            //: view.userInteractionEnabled = NO;
            view.userInteractionEnabled = NO;
            //: [view sizeToFit];
            [view sizeToFit];
            //: [_icons addObject:view];
            [_icons addObject:view];
        }
    }
    //: return _icons[index];
    return _icons[index];
}


//: @end
@end
