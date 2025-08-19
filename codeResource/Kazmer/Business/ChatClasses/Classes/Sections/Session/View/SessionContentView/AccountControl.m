
#import <Foundation/Foundation.h>

typedef struct {
    Byte channelise;
    Byte *middle;
    unsigned int pushSuggest;
	int shouldRelationGiving;
	int continuedHistory;
} StructFatigueData;

@interface FatigueData : NSObject

+ (instancetype)sharedInstance;

//: head_default_group
@property (nonatomic, copy) NSString *mainPorterAdditionalPath;

//: personCardId
@property (nonatomic, copy) NSString *user_trainingMessage;

//: type
@property (nonatomic, copy) NSString *kSupplierName;

//: head_default
@property (nonatomic, copy) NSString *notiSableVanishFormat;

//: data
@property (nonatomic, copy) NSString *mCircleTitle;

@end

@implementation FatigueData

+ (instancetype)sharedInstance {
    static FatigueData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)FatigueDataToByte:(StructFatigueData *)data {
    for (int i = 0; i < data->pushSuggest; i++) {
        data->middle[i] ^= data->channelise;
    }
    data->middle[data->pushSuggest] = 0;
	if (data->pushSuggest >= 2) {
		data->shouldRelationGiving = data->middle[0];
		data->continuedHistory = data->middle[1];
	}
    return data->middle;
}

- (NSString *)StringFromFatigueData:(StructFatigueData *)data {
    return [NSString stringWithUTF8String:(char *)[self FatigueDataToByte:data]];
}

//: data
- (NSString *)mCircleTitle {
    if (!_mCircleTitle) {
        StructFatigueData value = (StructFatigueData){42, (Byte []){78, 75, 94, 75, 162}, 4, 217, 240};
        _mCircleTitle = [self StringFromFatigueData:&value];
    }
    return _mCircleTitle;
}

//: head_default_group
- (NSString *)mainPorterAdditionalPath {
    if (!_mainPorterAdditionalPath) {
        StructFatigueData value = (StructFatigueData){87, (Byte []){63, 50, 54, 51, 8, 51, 50, 49, 54, 34, 59, 35, 8, 48, 37, 56, 34, 39, 19}, 18, 216, 15};
        _mainPorterAdditionalPath = [self StringFromFatigueData:&value];
    }
    return _mainPorterAdditionalPath;
}

//: head_default
- (NSString *)notiSableVanishFormat {
    if (!_notiSableVanishFormat) {
        StructFatigueData value = (StructFatigueData){209, (Byte []){185, 180, 176, 181, 142, 181, 180, 183, 176, 164, 189, 165, 197}, 12, 33, 228};
        _notiSableVanishFormat = [self StringFromFatigueData:&value];
    }
    return _notiSableVanishFormat;
}

//: type
- (NSString *)kSupplierName {
    if (!_kSupplierName) {
        StructFatigueData value = (StructFatigueData){133, (Byte []){241, 252, 245, 224, 27}, 4, 127, 239};
        _kSupplierName = [self StringFromFatigueData:&value];
    }
    return _kSupplierName;
}

//: personCardId
- (NSString *)user_trainingMessage {
    if (!_user_trainingMessage) {
        StructFatigueData value = (StructFatigueData){5, (Byte []){117, 96, 119, 118, 106, 107, 70, 100, 119, 97, 76, 97, 124}, 12, 167, 32};
        _user_trainingMessage = [self StringFromFatigueData:&value];
    }
    return _user_trainingMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  AccountControl.m
// ButtonKit
//
//  Created by 田玉龙 on 2022/8/22.
//  Copyright © 2022 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionShareCardContentView.h"
#import "AccountControl.h"
//: #import "FFFMessageModel.h"
#import "CentralProcessingUnitModel.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "FFFLoadProgressView.h"
#import "MakeTingView.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import <YYImage/YYImage.h>
#import <YYImage/YYImage.h>
//: #import "MyUserKit.h"
#import "ButtonKit.h"
//: #import "FFFKitDataProviderImpl.h"
#import "InputImpl.h"
//: #import "FFFKitInfoFetchOption.h"
#import "CoverTingContent.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+ButtonKit.h"
//: #import <SDWebImage/SDWebImage.h>
#import <SDWebImage/SDWebImage.h>
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import <objc/message.h>
#import <objc/message.h>

//: @interface FFFSessionShareCardContentView()
@interface AccountControl()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;
//: @property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UILabel *nameLabel;
//: @property (nonatomic,strong) UILabel *accountLabel;
@property (nonatomic,strong) UILabel *accountLabel;

//: @end
@end

//: @implementation FFFSessionShareCardContentView
@implementation AccountControl

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initSumView{
    //: self = [super initSessionMessageContentView];
    self = [super initSumView];
    //: if (self) {
    if (self) {
        //: self.opaque = YES;
        self.opaque = YES;
        //: _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        _imageView = [[UIImageView alloc] initWithFrame:CGRectZero];
        //: _imageView.backgroundColor = [UIColor whiteColor];
        _imageView.backgroundColor = [UIColor whiteColor];
        //: _imageView.contentMode = UIViewContentModeScaleAspectFill;
        _imageView.contentMode = UIViewContentModeScaleAspectFill;
        //: _imageView.layer.cornerRadius = 18;
        _imageView.layer.cornerRadius = 18;
        //: _imageView.layer.masksToBounds = YES;
        _imageView.layer.masksToBounds = YES;
        //: [self addSubview:_imageView];
        [self addSubview:_imageView];

        //: _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _nameLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _nameLabel.textColor = [UIColor blackColor];
        _nameLabel.textColor = [UIColor blackColor];
        //: [self addSubview:_nameLabel];
        [self addSubview:_nameLabel];
    }
    //: return self;
    return self;
}

//: - (void)refresh:(FFFMessageModel *)data
- (void)lengthAt:(CentralProcessingUnitModel *)data
{
    //: [super refresh:data];
    [super lengthAt:data];
    //: _imageView.image = nil;
    _imageView.image = nil;
    //: self.nameLabel.text = @"";
    self.nameLabel.text = @"";
    //: NIMCustomObject * cardObject = (NIMCustomObject*)self.model.message.messageObject;
    NIMCustomObject * cardObject = (NIMCustomObject*)self.model.message.messageObject;

    //: NSString *content = [cardObject.attachment encodeAttachment];
    NSString *content = [cardObject.attachment encodeAttachment];
    //: NSData *dataaaaa = [content dataUsingEncoding:NSUTF8StringEncoding];
    NSData *dataaaaa = [content dataUsingEncoding:NSUTF8StringEncoding];
    //: if (dataaaaa) {
    if (dataaaaa) {
        //: NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataaaaa
        NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:dataaaaa
                                                             //: options:0
                                                             options:0
                                                               //: error:nil];
                                                               error:nil];
        //: if ([dict isKindOfClass:[NSDictionary class]])
        if ([dict isKindOfClass:[NSDictionary class]])
        {
            //: NSInteger type = [[dict objectForKey:@"type"] intValue];
            NSInteger type = [[dict objectForKey:[FatigueData sharedInstance].kSupplierName] intValue];
            //: NSDictionary *datatyl = [dict objectForKey:@"data"];
            NSDictionary *datatyl = [dict objectForKey:[FatigueData sharedInstance].mCircleTitle];
            //: if (type == 105) {
            if (type == 105) {

                //: NSString *cardid = [datatyl stringValueForKey:@"personCardId" defaultValue:@""];
                NSString *cardid = [datatyl key:[FatigueData sharedInstance].user_trainingMessage title:@""];

                //: if ([[datatyl stringValueForKey:@"type" defaultValue:@"0"] boolValue]) {
                if ([[datatyl key:[FatigueData sharedInstance].kSupplierName title:@"0"] boolValue]) {
                    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:cardid];
                    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:cardid];
                    //: if (team.teamName.length>0) {
                    if (team.teamName.length>0) {
                        //: [self.imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:@"head_default_group"]];
                        [self.imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:[FatigueData sharedInstance].mainPorterAdditionalPath]];
                        //: self.nameLabel.text = team.teamName;
                        self.nameLabel.text = team.teamName;
                    //: }else{
                    }else{
                        //: [[NIMSDK sharedSDK].teamManager fetchTeamInfo:cardid completion:^(NSError * _Nullable error, NIMTeam * _Nullable team) {
                        [[NIMSDK sharedSDK].teamManager fetchTeamInfo:cardid completion:^(NSError * _Nullable error, NIMTeam * _Nullable team) {
                            //: [self.imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:@"head_default_group"]];
                            [self.imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:[FatigueData sharedInstance].mainPorterAdditionalPath]];
                            //: self.nameLabel.text = team.teamName;
                            self.nameLabel.text = team.teamName;
                        //: }];
                        }];
                    }
                //: } else {
                } else {
                    @
                     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                                  ;
                    //: NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:cardid];
                    NIMUser *user = [[NIMSDK sharedSDK].userManager userInfo:cardid];
                    //: if (user.userInfo.nickName) {
                    if (user.userInfo.nickName) {
                        //: [self.imageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default"]];
                        [self.imageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[FatigueData sharedInstance].notiSableVanishFormat]];
                        //: self.nameLabel.text = user.userInfo.nickName;
                        self.nameLabel.text = user.userInfo.nickName;
                    //: }else{
                    }else{
                        //: [[NIMSDK sharedSDK].userManager fetchUserInfos:@[cardid] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
                        [[NIMSDK sharedSDK].userManager fetchUserInfos:@[cardid] completion:^(NSArray<NIMUser *> * _Nullable users, NSError * _Nullable error) {
                            //: if (users.count) {
                            if (users.count) {
                                @
                                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                                ;
                                //: NIMUser *user = users.firstObject;
                                NIMUser *user = users.firstObject;
                                //: [self.imageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:@"head_default"]];
                                [self.imageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[FatigueData sharedInstance].notiSableVanishFormat]];
                                //: self.nameLabel.text = user.userInfo.nickName;
                                self.nameLabel.text = user.userInfo.nickName;
                            }
                        //: }];
                        }];
                    }


                }
            }
        }
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: UIEdgeInsets contentInsets = self.model.contentViewInsets;
    UIEdgeInsets contentInsets = self.model.contentViewInsets;
    //: CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, 36, 36);
    CGRect imageViewFrame = CGRectMake(contentInsets.left, contentInsets.top, 36, 36);
    //: self.imageView.frame = imageViewFrame;
    self.imageView.frame = imageViewFrame;
    //: self.nameLabel.frame = CGRectMake(contentInsets.left + 44, contentInsets.top, 140, 36);
    self.nameLabel.frame = CGRectMake(contentInsets.left + 44, contentInsets.top, 140, 36);
}


//: - (void)onTouchUpInside:(id)sender
- (void)searched:(id)sender
{
    //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
    CoverShowEvent *event = [[CoverShowEvent alloc] init];
    //: event.eventName = FFFKitEventNameTapContent;
    event.eventName = appCommentStr;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: [self.delegate onCatchEvent:event];
    [self.delegate modelled:event];
}

//: @end
@end