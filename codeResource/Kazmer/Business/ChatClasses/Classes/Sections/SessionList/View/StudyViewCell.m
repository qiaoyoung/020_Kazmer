
#import <Foundation/Foundation.h>

@interface EnhanceData : NSObject

@end

@implementation EnhanceData

+ (Byte *)EnhanceDataToCache:(Byte *)data {
    int repairApparently = data[0];
    Byte ape = data[1];
    int painterPop = data[2];
    for (int i = painterPop; i < painterPop + repairApparently; i++) {
        int value = data[i] - ape;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[painterPop + repairApparently] = 0;
    return data + painterPop;
}

+ (NSString *)StringFromEnhanceData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self EnhanceDataToCache:data]];
}

//: ic_nodistrub_g
+ (NSString *)userEaterAchieveName {
    /* static */ NSString *userEaterAchieveName = nil;
    if (!userEaterAchieveName) {
        Byte value[] = {14, 86, 7, 170, 54, 45, 99, 191, 185, 181, 196, 197, 186, 191, 201, 202, 200, 203, 184, 181, 189, 141};
        userEaterAchieveName = [self StringFromEnhanceData:value];
    }
    return userEaterAchieveName;
}

//: #9B9EA8
+ (NSString *)mainCrowdedId {
    /* static */ NSString *mainCrowdedId = nil;
    if (!mainCrowdedId) {
        Byte value[] = {7, 91, 13, 170, 236, 222, 130, 213, 130, 141, 154, 57, 165, 126, 148, 157, 148, 160, 156, 147, 152};
        mainCrowdedId = [self StringFromEnhanceData:value];
    }
    return mainCrowdedId;
}

//: #333333
+ (NSString *)dream_duringName {
    /* static */ NSString *dream_duringName = nil;
    if (!dream_duringName) {
        Byte value[] = {7, 15, 13, 117, 253, 8, 116, 113, 61, 229, 248, 8, 51, 50, 66, 66, 66, 66, 66, 66, 197};
        dream_duringName = [self StringFromEnhanceData:value];
    }
    return dream_duringName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionListCell.m
//  NIMDemo
//
//  Created by chris on 15/2/10.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionListCell.h"
#import "StudyViewCell.h"
//: #import "FFFAvatarImageView.h"
#import "RecordControl.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFKitUtil.h"
#import "ObjectUtil.h"
//: #import "NTESBadgeView.h"
#import "PinBadgeView.h"
//: #import "FFFKitInfoFetchOption.h"
#import "CoverTingContent.h"

//: @implementation FFFSessionListCell
@implementation StudyViewCell

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [UIColor whiteColor];
        self.backgroundColor = [UIColor whiteColor];
        //: self.contentView.backgroundColor = [UIColor clearColor];
        self.contentView.backgroundColor = [UIColor clearColor];
        //: self.layer.borderWidth = 1;
        self.layer.borderWidth = 1;
        //: self.layer.borderColor = [UIColor colorWithRed:250/255.0 green:248/255.0 blue:253/255.0 alpha:1].CGColor;
        self.layer.borderColor = [UIColor colorWithRed:250/255.0 green:248/255.0 blue:253/255.0 alpha:1].CGColor;
        //: self.layer.cornerRadius = 16;
        self.layer.cornerRadius = 16;
        //: self.layer.masksToBounds = YES;
        self.layer.masksToBounds = YES;
        //: self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0300].CGColor;
        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0300].CGColor;
        //: self.layer.shadowOffset = CGSizeMake(0,1);
        self.layer.shadowOffset = CGSizeMake(0,1);
        //: self.layer.shadowOpacity = 1;
        self.layer.shadowOpacity = 1;
        //: self.layer.shadowRadius = 3;
        self.layer.shadowRadius = 3;

        //: _avatarImageView = [[FFFAvatarImageView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        _avatarImageView = [[RecordControl alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        //: [self.contentView addSubview:_avatarImageView];
        [self.contentView addSubview:_avatarImageView];

        //: _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nameLabel.backgroundColor = [UIColor clearColor];
        _nameLabel.backgroundColor = [UIColor clearColor];
        //: _nameLabel.font = [UIFont boldSystemFontOfSize:15.f];
        _nameLabel.font = [UIFont boldSystemFontOfSize:15.f];
        //: _nameLabel.textColor = [UIColor colorWithHexString:@"#333333"];
        _nameLabel.textColor = [UIColor min:[EnhanceData dream_duringName]];
        //: [self.contentView addSubview:_nameLabel];
        [self.contentView addSubview:_nameLabel];

        //: _messageLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _messageLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _messageLabel.backgroundColor = [UIColor clearColor];
        _messageLabel.backgroundColor = [UIColor clearColor];
        //: _messageLabel.font = [UIFont systemFontOfSize:14.f];
        _messageLabel.font = [UIFont systemFontOfSize:14.f];
        //: _messageLabel.textColor = [UIColor colorWithHexString:@"#9B9EA8"];
        _messageLabel.textColor = [UIColor min:[EnhanceData mainCrowdedId]];
        //: [self.contentView addSubview:_messageLabel];
        [self.contentView addSubview:_messageLabel];

        //: _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _timeLabel.backgroundColor = [UIColor clearColor];
        _timeLabel.backgroundColor = [UIColor clearColor];
        //: _timeLabel.font = [UIFont systemFontOfSize:12.f];
        _timeLabel.font = [UIFont systemFontOfSize:12.f];
        //: _timeLabel.textColor = [UIColor colorWithHexString:@"#9B9EA8"];
        _timeLabel.textColor = [UIColor min:[EnhanceData mainCrowdedId]];
        //: [self.contentView addSubview:_timeLabel];
        [self.contentView addSubview:_timeLabel];

        //: _badgeView = [NTESBadgeView viewWithBadgeTip:@""];
        _badgeView = [PinBadgeView session:@""];
        //: [self.contentView addSubview:_badgeView];
        [self.contentView addSubview:_badgeView];

        //: _disnodistrubImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 14, 14)];
        _disnodistrubImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 14, 14)];
        //: _disnodistrubImg.image = [UIImage imageNamed:@"ic_nodistrub_g"];
        _disnodistrubImg.image = [UIImage imageNamed:[EnhanceData userEaterAchieveName]];
        //: [self.contentView addSubview:_disnodistrubImg];
        [self.contentView addSubview:_disnodistrubImg];

    }
    //: return self;
    return self;
}




//: - (void)refresh:(NIMRecentSession*)recent{
- (void)child:(NIMRecentSession*)recent{
    //: self.nameLabel.nim_width = self.nameLabel.nim_width > 160.f ? 160.f : self.nameLabel.nim_width;
    self.nameLabel.nim_width = self.nameLabel.nim_width > 160.f ? 160.f : self.nameLabel.nim_width;
    //: self.messageLabel.nim_width = self.messageLabel.nim_width > 200.f ? 200.f : self.messageLabel.nim_width;
    self.messageLabel.nim_width = self.messageLabel.nim_width > 200.f ? 200.f : self.messageLabel.nim_width;
//    if (recent.unreadCount) {
//        self.badgeView.hidden = NO;
//        self.badgeView.badgeValue = @(recent.unreadCount).stringValue;
//        self.disnodistrubImg.hidden = YES;
//    }else{
//        self.badgeView.hidden = YES;

        //: FFFKitInfo *info = nil;
        TingMessage *info = nil;
        //: if (recent.session.sessionType == NIMSessionTypeTeam) {
        if (recent.session.sessionType == NIMSessionTypeTeam) {
            //: info = [[MyUserKit sharedKit] infoByTeam:recent.session.sessionId option:nil];
            info = [[ButtonKit sheerOption] pressMedia:recent.session.sessionId sizeOption:nil];
            //: NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
            NIMTeamNotifyState notifyState = [[[NIMSDK sharedSDK] teamManager] notifyStateForNewMsg:info.infoId];
            //: BOOL ishidden = notifyState == NIMTeamNotifyStateAll ? YES: NO ;
            BOOL ishidden = notifyState == NIMTeamNotifyStateAll ? YES: NO ;//判断消息是否勿扰
            //: self.disnodistrubImg.hidden = ishidden;
            self.disnodistrubImg.hidden = ishidden;
            //: if (recent.unreadCount && ishidden) {
            if (recent.unreadCount && ishidden) {
                //: self.badgeView.hidden = NO;
                self.badgeView.hidden = NO;
                //: self.badgeView.badgeValue = @(recent.unreadCount).stringValue;
                self.badgeView.badgeValue = @(recent.unreadCount).stringValue;
                //: self.disnodistrubImg.hidden = YES;
                self.disnodistrubImg.hidden = YES;
            //: }else{
            }else{
                //: self.badgeView.hidden = YES;
                self.badgeView.hidden = YES;
            }

        //: } else if (recent.session.sessionType == NIMSessionTypeP2P) {
        } else if (recent.session.sessionType == NIMSessionTypeP2P) {
            //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
            CoverTingContent *option = [[CoverTingContent alloc] init];
            //: option.session = recent.session;
            option.session = recent.session;
            //: info = [[MyUserKit sharedKit] infoByUser:recent.session.sessionId option:option];
            info = [[ButtonKit sheerOption] past:recent.session.sessionId skinColour_strong:option];

            //: BOOL ishidden = [[NIMSDK sharedSDK].userManager notifyForNewMsg:info.infoId];
            BOOL ishidden = [[NIMSDK sharedSDK].userManager notifyForNewMsg:info.infoId];//判断消息是否勿扰
            //: self.disnodistrubImg.hidden = ishidden;
            self.disnodistrubImg.hidden = ishidden;

                //: if (recent.unreadCount && ishidden) {
                if (recent.unreadCount && ishidden) {
                    //: self.badgeView.hidden = NO;
                    self.badgeView.hidden = NO;
                    //: self.badgeView.badgeValue = @(recent.unreadCount).stringValue;
                    self.badgeView.badgeValue = @(recent.unreadCount).stringValue;
                    //: self.disnodistrubImg.hidden = YES;
                    self.disnodistrubImg.hidden = YES;
                //: }else{
                }else{
                    //: self.badgeView.hidden = YES;
                    self.badgeView.hidden = YES;
                }


        }
//    }





}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //Session List
    //: NSInteger sessionListAvatarLeft = 15;
    NSInteger sessionListAvatarLeft = 15;
    //: NSInteger sessionListNameTop = 15;
    NSInteger sessionListNameTop = 15;
    //: NSInteger sessionListNameLeftToAvatar = 15;
    NSInteger sessionListNameLeftToAvatar = 15;
    //: NSInteger sessionListMessageLeftToAvatar = 15;
    NSInteger sessionListMessageLeftToAvatar = 15;
    //: NSInteger sessionListMessageBottom = 15;
    NSInteger sessionListMessageBottom = 15;
    //: NSInteger sessionListTimeRight = 15;
    NSInteger sessionListTimeRight = 15;
    //: NSInteger sessionListTimeTop = 15;
    NSInteger sessionListTimeTop = 15;
    //: NSInteger sessionBadgeTimeBottom = 15;
    NSInteger sessionBadgeTimeBottom = 15;
    //: NSInteger sessionBadgeTimeRight = 15;
    NSInteger sessionBadgeTimeRight = 15;

    //: _avatarImageView.nim_left = sessionListAvatarLeft;
    _avatarImageView.nim_left = sessionListAvatarLeft;
    //: _avatarImageView.nim_centerY = self.nim_height * .5f;
    _avatarImageView.nim_centerY = self.nim_height * .5f;
    //: _nameLabel.nim_top = sessionListNameTop;
    _nameLabel.nim_top = sessionListNameTop;
    //: _nameLabel.nim_left = _avatarImageView.nim_right + sessionListNameLeftToAvatar;
    _nameLabel.nim_left = _avatarImageView.nim_right + sessionListNameLeftToAvatar;
    //: _messageLabel.nim_left = _avatarImageView.nim_right + sessionListMessageLeftToAvatar;
    _messageLabel.nim_left = _avatarImageView.nim_right + sessionListMessageLeftToAvatar;
    //: _messageLabel.nim_bottom = self.nim_height - sessionListMessageBottom;
    _messageLabel.nim_bottom = self.nim_height - sessionListMessageBottom;
    //: _timeLabel.nim_right = self.nim_width - sessionListTimeRight;
    _timeLabel.nim_right = self.nim_width - sessionListTimeRight;
    //: _timeLabel.nim_top = sessionListTimeTop;
    _timeLabel.nim_top = sessionListTimeTop;
    //: _badgeView.nim_right = self.nim_width - sessionBadgeTimeRight;
    _badgeView.nim_right = self.nim_width - sessionBadgeTimeRight;
    //: _badgeView.nim_bottom = self.nim_height - sessionBadgeTimeBottom;
    _badgeView.nim_bottom = self.nim_height - sessionBadgeTimeBottom;

    //: _disnodistrubImg.nim_right = self.nim_width - sessionBadgeTimeRight;
    _disnodistrubImg.nim_right = self.nim_width - sessionBadgeTimeRight;
    //: _disnodistrubImg.nim_bottom = self.nim_height - sessionBadgeTimeBottom;
    _disnodistrubImg.nim_bottom = self.nim_height - sessionBadgeTimeBottom;

}

//: @end
@end