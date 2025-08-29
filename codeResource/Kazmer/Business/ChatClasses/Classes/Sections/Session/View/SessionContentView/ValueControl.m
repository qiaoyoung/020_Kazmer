
#import <Foundation/Foundation.h>

typedef struct {
    Byte outdoorDetail;
    Byte *creamSquare;
    unsigned int variety;
	int celestialBodyCertainly;
	int stablePartially;
	int sateHouse;
} StructPigFierceData;

@interface PigFierceData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation PigFierceData

+ (instancetype)sharedInstance {
    static PigFierceData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)PigFierceDataToByte:(StructPigFierceData *)data {
    for (int i = 0; i < data->variety; i++) {
        data->creamSquare[i] ^= data->outdoorDetail;
    }
    data->creamSquare[data->variety] = 0;
	if (data->variety >= 3) {
		data->celestialBodyCertainly = data->creamSquare[0];
		data->stablePartially = data->creamSquare[1];
		data->sateHouse = data->creamSquare[2];
	}
    return data->creamSquare;
}

- (NSString *)StringFromPigFierceData:(StructPigFierceData *)data {
    return [NSString stringWithUTF8String:(char *)[self PigFierceDataToByte:data]];
}

//: head_default_group
- (NSString *)kText_devoteData {
    /* static */ NSString *kText_devoteData = nil;
    if (!kText_devoteData) {
        StructPigFierceData value = (StructPigFierceData){155, (Byte []){243, 254, 250, 255, 196, 255, 254, 253, 250, 238, 247, 239, 196, 252, 233, 244, 238, 235, 190}, 18, 168, 92, 180};
        kText_devoteData = [self StringFromPigFierceData:&value];
    }
    return kText_devoteData;
}

//: personCardId
- (NSString *)kTextCriticismData {
    /* static */ NSString *kTextCriticismData = nil;
    if (!kTextCriticismData) {
        StructPigFierceData value = (StructPigFierceData){185, (Byte []){201, 220, 203, 202, 214, 215, 250, 216, 203, 221, 240, 221, 121}, 12, 3, 189, 155};
        kTextCriticismData = [self StringFromPigFierceData:&value];
    }
    return kTextCriticismData;
}

//: head_default
- (NSString *)kTextYoursContent {
    /* static */ NSString *kTextYoursContent = nil;
    if (!kTextYoursContent) {
        StructPigFierceData value = (StructPigFierceData){220, (Byte []){180, 185, 189, 184, 131, 184, 185, 186, 189, 169, 176, 168, 138}, 12, 184, 202, 15};
        kTextYoursContent = [self StringFromPigFierceData:&value];
    }
    return kTextYoursContent;
}

//: type
- (NSString *)kText_modelValue {
    /* static */ NSString *kText_modelValue = nil;
    if (!kText_modelValue) {
        StructPigFierceData value = (StructPigFierceData){125, (Byte []){9, 4, 13, 24, 153}, 4, 225, 237, 228};
        kText_modelValue = [self StringFromPigFierceData:&value];
    }
    return kText_modelValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ValueControl.m
// Mortification
//
//  Created by 田玉龙 on 2022/8/22.
//  Copyright © 2022 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionShareCardContentView.h"
#import "ValueControl.h"
//: #import "FFFMessageModel.h"
#import "CleanDoing.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "FFFLoadProgressView.h"
#import "GatefoldView.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import <YYImage/YYImage.h>
#import <YYImage/YYImage.h>
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "FFFKitDataProviderImpl.h"
#import "CommentTopIndex.h"
//: #import "FFFKitInfoFetchOption.h"
#import "CellClean.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Mortification.h"
//: #import <SDWebImage/SDWebImage.h>
#import <SDWebImage/SDWebImage.h>
//: #import <objc/runtime.h>
#import <objc/runtime.h>
//: #import <objc/message.h>
#import <objc/message.h>

//: @interface FFFSessionShareCardContentView()
@interface ValueControl()

//: @property (nonatomic,strong) UIImageView *imageView;
@property (nonatomic,strong) UIImageView *imageView;
//: @property (nonatomic,strong) UILabel *nameLabel;
@property (nonatomic,strong) UILabel *nameLabel;
//: @property (nonatomic,strong) UILabel *accountLabel;
@property (nonatomic,strong) UILabel *accountLabel;

//: @end
@end

//: @implementation FFFSessionShareCardContentView
@implementation ValueControl

//: - (instancetype)initSessionMessageContentView{
- (instancetype)initCrop{
    //: self = [super initSessionMessageContentView];
    self = [super initCrop];
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
- (void)from:(CleanDoing *)data
{
    //: [super refresh:data];
    [super from:data];
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
            NSInteger type = [[dict objectForKey:[[PigFierceData sharedInstance] kText_modelValue]] intValue];
            //: NSDictionary *datatyl = [dict objectForKey:@"data"];
            NSDictionary *datatyl = [dict objectForKey:@"data"];
            //: if (type == 105) {
            if (type == 105) {

                //: NSString *cardid = [datatyl stringValueForKey:@"personCardId" defaultValue:@""];
                NSString *cardid = [datatyl unwantedValue:[[PigFierceData sharedInstance] kTextCriticismData] installment:@""];

                //: if ([[datatyl stringValueForKey:@"type" defaultValue:@"0"] boolValue]) {
                if ([[datatyl unwantedValue:[[PigFierceData sharedInstance] kText_modelValue] installment:@"0"] boolValue]) {
                    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:cardid];
                    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:cardid];
                    //: if (team.teamName.length>0) {
                    if (team.teamName.length>0) {
                        //: [self.imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:@"head_default_group"]];
                        [self.imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:[[PigFierceData sharedInstance] kText_devoteData]]];
                        //: self.nameLabel.text = team.teamName;
                        self.nameLabel.text = team.teamName;
                    //: }else{
                    }else{
                        //: [[NIMSDK sharedSDK].teamManager fetchTeamInfo:cardid completion:^(NSError * _Nullable error, NIMTeam * _Nullable team) {
                        [[NIMSDK sharedSDK].teamManager fetchTeamInfo:cardid completion:^(NSError * _Nullable error, NIMTeam * _Nullable team) {
                            //: [self.imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:@"head_default_group"]];
                            [self.imageView sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl?:@""] placeholderImage:[UIImage imageNamed:[[PigFierceData sharedInstance] kText_devoteData]]];
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
                        [self.imageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[[PigFierceData sharedInstance] kTextYoursContent]]];
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
                                [self.imageView sd_setImageWithURL:[NSURL URLWithString:user.userInfo.avatarUrl] placeholderImage:[UIImage imageNamed:[[PigFierceData sharedInstance] kTextYoursContent]]];
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
- (void)labelled:(id)sender
{
    //: FFFKitEvent *event = [[FFFKitEvent alloc] init];
    ToiletKitSession *event = [[ToiletKitSession alloc] init];
    //: event.eventName = FFFKitEventNameTapContent;
    event.eventName = userStateId;
    //: event.messageModel = self.model;
    event.messageModel = self.model;
    //: [self.delegate onCatchEvent:event];
    [self.delegate surprised:event];
}

//: @end
@end
//: __SAVE__ ignore_string [410.4]