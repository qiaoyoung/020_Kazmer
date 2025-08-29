
#import <Foundation/Foundation.h>

typedef struct {
    Byte popularize;
    Byte *stepDealer;
    unsigned int modeMerely;
	int milkDefine;
	int make;
	int desireSymbolPoster;
} StructDeployCommandData;

@interface DeployCommandData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation DeployCommandData

+ (instancetype)sharedInstance {
    static DeployCommandData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)DeployCommandDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

- (Byte *)DeployCommandDataToByte:(StructDeployCommandData *)data {
    for (int i = 0; i < data->modeMerely; i++) {
        data->stepDealer[i] ^= data->popularize;
    }
    data->stepDealer[data->modeMerely] = 0;
	if (data->modeMerely >= 3) {
		data->milkDefine = data->stepDealer[0];
		data->make = data->stepDealer[1];
		data->desireSymbolPoster = data->stepDealer[2];
	}
    return data->stepDealer;
}

- (NSString *)StringFromDeployCommandData:(StructDeployCommandData *)data {
    return [NSString stringWithUTF8String:(char *)[self DeployCommandDataToByte:data]];
}

//: temp_image_%@.jpg
- (NSString *)kNameCurveChartValue {
    /* static */ NSString *kNameCurveChartValue = nil;
    if (!kNameCurveChartValue) {
		NSString *origin = @"DACBC3DEF1C7C3CFC9CBF18BEE80C4DEC969";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){174, (Byte *)data.bytes, 17, 134, 229, 158};
        kNameCurveChartValue = [self StringFromDeployCommandData:&value];
    }
    return kNameCurveChartValue;
}

//: icon_toolview_camera
- (NSString *)kName_incomeString {
    /* static */ NSString *kName_incomeString = nil;
    if (!kName_incomeString) {
		NSString *origin = @"767C7071406B70707369767A68407C7E727A6D7EC6";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){31, (Byte *)data.bytes, 20, 174, 7, 46};
        kName_incomeString = [self StringFromDeployCommandData:&value];
    }
    return kName_incomeString;
}

//: #4B43DE
- (NSString *)kNameViolationImageData {
    /* static */ NSString *kNameViolationImageData = nil;
    if (!kNameViolationImageData) {
		NSString *origin = @"F3E492E4E394959E";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){208, (Byte *)data.bytes, 7, 242, 102, 191};
        kNameViolationImageData = [self StringFromDeployCommandData:&value];
    }
    return kNameViolationImageData;
}

//: reply
- (NSString *)kName_withValue {
    /* static */ NSString *kName_withValue = nil;
    if (!kName_withValue) {
		NSString *origin = @"465144584D01";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){52, (Byte *)data.bytes, 5, 62, 217, 42};
        kName_withValue = [self StringFromDeployCommandData:&value];
    }
    return kName_withValue;
}

//: #F6F7FA
- (NSString *)kNameSculptureNimServingData {
    /* static */ NSString *kNameSculptureNimServingData = nil;
    if (!kNameSculptureNimServingData) {
		NSString *origin = @"74116111601116B9";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){87, (Byte *)data.bytes, 7, 18, 15, 211};
        kNameSculptureNimServingData = [self StringFromDeployCommandData:&value];
    }
    return kNameSculptureNimServingData;
}

//: back_arrow_bl
- (NSString *)kNameFanData {
    /* static */ NSString *kNameFanData = nil;
    if (!kNameFanData) {
		NSString *origin = @"4645474F7B4556564B537B46484C";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){36, (Byte *)data.bytes, 13, 187, 16, 115};
        kNameFanData = [self StringFromDeployCommandData:&value];
    }
    return kNameFanData;
}

//: temp_video_%@.mp4
- (NSString *)kTitle_brotherContent {
    /* static */ NSString *kTitle_brotherContent = nil;
    if (!kTitle_brotherContent) {
		NSString *origin = @"2B3A322F0029363B3A30007A1F71322F6B3E";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){95, (Byte *)data.bytes, 17, 190, 104, 87};
        kTitle_brotherContent = [self StringFromDeployCommandData:&value];
    }
    return kTitle_brotherContent;
}

//: userName
- (NSString *)kName_ribbonText {
    /* static */ NSString *kName_ribbonText = nil;
    if (!kName_ribbonText) {
		NSString *origin = @"282E382F133C303883";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){93, (Byte *)data.bytes, 8, 99, 157, 196};
        kName_ribbonText = [self StringFromDeployCommandData:&value];
    }
    return kName_ribbonText;
}

//: icon_toolview_voice_normal
- (NSString *)kTitleLamData {
    /* static */ NSString *kTitleLamData = nil;
    if (!kTitleLamData) {
		NSString *origin = @"2F252928193229292A302F23311930292F2523192829342B272A5F";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){70, (Byte *)data.bytes, 26, 115, 62, 203};
        kTitleLamData = [self StringFromDeployCommandData:&value];
    }
    return kTitleLamData;
}

//: VIDEO
- (NSString *)kText_ampleValue {
    /* static */ NSString *kText_ampleValue = nil;
    if (!kText_ampleValue) {
		NSString *origin = @"647B76777DA3";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){50, (Byte *)data.bytes, 5, 5, 46, 32};
        kText_ampleValue = [self StringFromDeployCommandData:&value];
    }
    return kText_ampleValue;
}

//: #00B01B
- (NSString *)kNameHandsomeValue {
    /* static */ NSString *kNameHandsomeValue = nil;
    if (!kNameHandsomeValue) {
		NSString *origin = @"8C9F9FED9F9EED7F";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){175, (Byte *)data.bytes, 7, 32, 71, 42};
        kNameHandsomeValue = [self StringFromDeployCommandData:&value];
    }
    return kNameHandsomeValue;
}

//: icon_toolview_album
- (NSString *)kTextBanValue {
    /* static */ NSString *kTextBanValue = nil;
    if (!kTextBanValue) {
		NSString *origin = @"F1FBF7F6C7ECF7F7F4EEF1FDEFC7F9F4FAEDF5A6";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){152, (Byte *)data.bytes, 19, 30, 165, 188};
        kTextBanValue = [self StringFromDeployCommandData:&value];
    }
    return kTextBanValue;
}

//: messageid
- (NSString *)kNameEnableusData {
    /* static */ NSString *kNameEnableusData = nil;
    if (!kNameEnableusData) {
		NSString *origin = @"BEB6A0A0B2B4B6BAB7D6";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){211, (Byte *)data.bytes, 9, 172, 128, 177};
        kNameEnableusData = [self StringFromDeployCommandData:&value];
    }
    return kNameEnableusData;
}

//: message_send_camera
- (NSString *)kText_butFlyingName {
    /* static */ NSString *kText_butFlyingName = nil;
    if (!kText_butFlyingName) {
		NSString *origin = @"FFF7E1E1F3F5F7CDE1F7FCF6CDF1F3FFF7E0F395";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){146, (Byte *)data.bytes, 19, 135, 227, 153};
        kText_butFlyingName = [self StringFromDeployCommandData:&value];
    }
    return kText_butFlyingName;
}

//: head_default_group
- (NSString *)kTitleFrameCollegeColorfulString {
    /* static */ NSString *kTitleFrameCollegeColorfulString = nil;
    if (!kTitleFrameCollegeColorfulString) {
		NSString *origin = @"95989C99A299989B9C889189A29A8F92888DDD";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){253, (Byte *)data.bytes, 18, 214, 144, 90};
        kTitleFrameCollegeColorfulString = [self StringFromDeployCommandData:&value];
    }
    return kTitleFrameCollegeColorfulString;
}

//: F6F7FA
- (NSString *)kTitleStopFinValue {
    /* static */ NSString *kTitleStopFinValue = nil;
    if (!kTitleStopFinValue) {
		NSString *origin = @"8AFA8AFB8A8DDB";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){204, (Byte *)data.bytes, 6, 18, 197, 114};
        kTitleStopFinValue = [self StringFromDeployCommandData:&value];
    }
    return kTitleStopFinValue;
}

//: message_administrator_speak
- (NSString *)kTitle_packText {
    /* static */ NSString *kTitle_packText = nil;
    if (!kTitle_packText) {
		NSString *origin = @"B7BFA9A9BBBDBF85BBBEB7B3B4B3A9AEA8BBAEB5A885A9AABFBBB119";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){218, (Byte *)data.bytes, 27, 115, 194, 14};
        kTitle_packText = [self StringFromDeployCommandData:&value];
    }
    return kTitle_packText;
}

//: message_send_album
- (NSString *)kName_stepValue {
    /* static */ NSString *kName_stepValue = nil;
    if (!kName_stepValue) {
		NSString *origin = @"343C2A2A383E3C062A3C373D0638353B2C34F5";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){89, (Byte *)data.bytes, 18, 53, 172, 145};
        kName_stepValue = [self StringFromDeployCommandData:&value];
    }
    return kName_stepValue;
}

//: type
- (NSString *)kTitlePromptData {
    /* static */ NSString *kTitlePromptData = nil;
    if (!kTitlePromptData) {
		NSString *origin = @"060B02173C";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){114, (Byte *)data.bytes, 4, 177, 171, 17};
        kTitlePromptData = [self StringFromDeployCommandData:&value];
    }
    return kTitlePromptData;
}

//: user_profile_avtivity_send
- (NSString *)kContent_bronzeName {
    /* static */ NSString *kContent_bronzeName = nil;
    if (!kContent_bronzeName) {
		NSString *origin = @"A1A7B1A68BA4A6BBB2BDB8B18BB5A2A0BDA2BDA0AD8BA7B1BAB042";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){212, (Byte *)data.bytes, 26, 45, 38, 48};
        kContent_bronzeName = [self StringFromDeployCommandData:&value];
    }
    return kContent_bronzeName;
}

//: message_please_enter_content
- (NSString *)kName_editorValue {
    /* static */ NSString *kName_editorValue = nil;
    if (!kName_editorValue) {
		NSString *origin = @"3D3523233137350F203C353123350F353E2435220F333F3E24353E240D";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){80, (Byte *)data.bytes, 28, 214, 139, 59};
        kName_editorValue = [self StringFromDeployCommandData:&value];
    }
    return kName_editorValue;
}

//: 777777
- (NSString *)kNameGravityData {
    /* static */ NSString *kNameGravityData = nil;
    if (!kNameGravityData) {
		NSString *origin = @"3D3D3D3D3D3DF4";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){10, (Byte *)data.bytes, 6, 64, 211, 171};
        kNameGravityData = [self StringFromDeployCommandData:&value];
    }
    return kNameGravityData;
}

//: group_info_activity_op_failed
- (NSString *)kNameServingString {
    /* static */ NSString *kNameServingString = nil;
    if (!kNameServingString) {
		NSString *origin = @"BBAEB3A9AC83B5B2BAB383BDBFA8B5AAB5A8A583B3AC83BABDB5B0B9B81B";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){220, (Byte *)data.bytes, 29, 239, 212, 51};
        kNameServingString = [self StringFromDeployCommandData:&value];
    }
    return kNameServingString;
}

//: AUDIO
- (NSString *)kTitleFishTeamData {
    /* static */ NSString *kTitleFishTeamData = nil;
    if (!kTitleFishTeamData) {
		NSString *origin = @"A9BDACA1A7CF";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){232, (Byte *)data.bytes, 5, 110, 125, 82};
        kTitleFishTeamData = [self StringFromDeployCommandData:&value];
    }
    return kTitleFishTeamData;
}

//: %@在群里@了你
- (NSString *)kContentBurningValue {
    /* static */ NSString *kContentBurningValue = nil;
    if (!kContentBurningValue) {
		NSString *origin = @"F99C3940743B6278355B509C38665A38617CEB";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){220, (Byte *)data.bytes, 18, 33, 233, 240};
        kContentBurningValue = [self StringFromDeployCommandData:&value];
    }
    return kContentBurningValue;
}

//: ic_block_no
- (NSString *)kName_moleHideContent {
    /* static */ NSString *kName_moleHideContent = nil;
    if (!kName_moleHideContent) {
		NSString *origin = @"CDC7FBC6C8CBC7CFFBCACB48";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){164, (Byte *)data.bytes, 11, 84, 247, 144};
        kName_moleHideContent = [self StringFromDeployCommandData:&value];
    }
    return kName_moleHideContent;
}

//: ic_more
- (NSString *)kNameRaspValue {
    /* static */ NSString *kNameRaspValue = nil;
    if (!kNameRaspValue) {
		NSString *origin = @"DBD1EDDFDDC0D7B6";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){178, (Byte *)data.bytes, 7, 108, 139, 129};
        kNameRaspValue = [self StringFromDeployCommandData:&value];
    }
    return kNameRaspValue;
}

//: TEXT
- (NSString *)kTitleJustQualityData {
    /* static */ NSString *kTitleJustQualityData = nil;
    if (!kTitleJustQualityData) {
		NSString *origin = @"C7D6CBC764";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){147, (Byte *)data.bytes, 4, 80, 53, 4};
        kTitleJustQualityData = [self StringFromDeployCommandData:&value];
    }
    return kTitleJustQualityData;
}

//: IMAGE
- (NSString *)kTitleSatisfyName {
    /* static */ NSString *kTitleSatisfyName = nil;
    if (!kTitleSatisfyName) {
		NSString *origin = @"16121E181A87";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){95, (Byte *)data.bytes, 5, 235, 137, 216};
        kTitleSatisfyName = [self StringFromDeployCommandData:&value];
    }
    return kTitleSatisfyName;
}

//: ic_block
- (NSString *)kNameProudData {
    /* static */ NSString *kNameProudData = nil;
    if (!kNameProudData) {
		NSString *origin = @"242E122F21222E2639";
		NSData *data = [DeployCommandData DeployCommandDataToData:origin];
        StructDeployCommandData value = (StructDeployCommandData){77, (Byte *)data.bytes, 8, 106, 183, 104};
        kNameProudData = [self StringFromDeployCommandData:&value];
    }
    return kNameProudData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReplyViewController.m
// Mortification
//
//  Created by NetEase.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFSessionConfigurateProtocol.h"
#import "FFFSessionConfigurateProtocol.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "FFFMessageCellProtocol.h"
#import "FFFMessageCellProtocol.h"
//: #import "FFFMessageModel.h"
#import "CleanDoing.h"
//: #import "FFFKitUtil.h"
#import "AtPull.h"
//: #import "FFFBadgeView.h"
#import "CenterStandardView.h"
//: #import "UITableView+NIMScrollToBottom.h"
#import "UITableView+NIMScrollToBottom.h"
//: #import "FFFMessageMaker.h"
#import "ShouldMaker.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "FFFSessionConfigurator.h"
#import "TitleTargetYear.h"
//: #import "FFFKitInfoFetchOption.h"
#import "CellClean.h"
//: #import "FFFKitTitleView.h"
#import "LabelHeadView.h"
//: #import "FFFKitKeyboardInfo.h"
#import "RedInfo.h"
//: #import "FFFReplyContentView.h"
#import "BookView.h"
//: #import "FFFKitDependency.h"
#import "FFFKitDependency.h"
//: #import "FFFKitQuickCommentUtil.h"
#import "ControlInside.h"
//: #import "FFFBubbleMenuView.h"
#import "ResultCuttingEdgeView.h"
//: #import "FFFTextView.h"
#import "TitleScrollView.h"
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "NSObject+tyl_internalIdentifier.h"
#import "NSObject+TelegramContext.h"
//: #import "FFFBubbleMenuView.h"
#import "ResultCuttingEdgeView.h"
//: #import "FFFBubbleButtonModel.h"
#import "MessageTeam.h"
//: #import "FFFInputEmoticonDefine.h"
#import "FFFInputEmoticonDefine.h"
//: #import "FFFInputAudioView.h"
#import "AudioView.h"
//: #import "UIView+USER.h"
#import "UIView+Turn.h"
//: #import "USERPersonalCardViewController.h"
#import "CornerViewController.h"
//: #import "FFFTeamCardViewController.h"
#import "CommentViewController.h"
//: #import "FFFAdvancedTeamCardViewController.h"
#import "OpenDefenceViewController.h"
//: #import "PhotoContainerView.h"
#import "LyricView.h"
//: #import "SSZipArchiveManager.h"
#import "PersonShould.h"

//: @interface FFFSessionViewController ()<NIMMediaManagerDelegate,NIMInputDelegate,FFFTeamCardViewControllerDelegate,NIMConversationManagerDelegate,CustomUISeletePhotosDelegate,UIGestureRecognizerDelegate>
@interface ReplyViewController ()<NIMMediaManagerDelegate,PathFlip,TextDelegate,NIMConversationManagerDelegate,UserDelegate,UIGestureRecognizerDelegate>

//: @property (nonatomic,strong) UILabel *subtitle;
@property (nonatomic,strong) UILabel *subtitle;

//: @property (nonatomic,readwrite) NIMMessage *messageForMenu;
@property (nonatomic,readwrite) NIMMessage *messageForMenu;

//: @property (nonatomic,strong) FFFSessionConfigurator *configurator;
@property (nonatomic,strong) TitleTargetYear *configurator;

//: @property (nonatomic, strong) UIButton *btnAudio;
@property (nonatomic, strong) UIButton *btnAudio;

//: @property (nonatomic, strong) PhotoContainerView *customAlbumView;
@property (nonatomic, strong) LyricView *customAlbumView;

//: @property (nonatomic,strong) UILabel *titleLabel;
@property (nonatomic,strong) UILabel *titleLabel;

//: @property (nonatomic,strong) NSIndexPath *lastVisibleIndexPathBeforeRotation;
@property (nonatomic,strong) NSIndexPath *lastVisibleIndexPathBeforeRotation;
//: @property (nonatomic, strong) UIView *photopicview;
@property (nonatomic, strong) UIView *photopicview;
//: @property (nonatomic,strong) UIButton *btnBlock;
@property (nonatomic,strong) UIButton *btnBlock;
//: @property (nonatomic, strong) FFFInputAudioView *audioContent;
@property (nonatomic, strong) AudioView *audioContent;
//: @property (nonatomic,assign) NSInteger sessionUnreadCount;
@property (nonatomic,assign) NSInteger sessionUnreadCount;
//: @property (nonatomic,strong) UITapGestureRecognizer *tableViewTapGesture;
@property (nonatomic,strong) UITapGestureRecognizer *tableViewTapGesture;

//: @property (nonatomic,strong) FFFBadgeView *badgeView;
@property (nonatomic,strong) CenterStandardView *badgeView;
//: @property (nonatomic,strong) UIImageView *headerImage;
@property (nonatomic,strong) UIImageView *headerImage;
//: @property (nonatomic, strong) UIView *topview;
@property (nonatomic, strong) UIView *topview;

//: @property (nonatomic,strong) UILabel *labtitle;
@property (nonatomic,strong) UILabel *labtitle;
//: @property (nonatomic,strong) UILabel *subTitleLabel;
@property (nonatomic,strong) UILabel *subTitleLabel;


//: @end
@end

//: @implementation FFFSessionViewController
@implementation ReplyViewController

//: - (void)recordAudioInterruptionBegin {
- (void)recordAudioInterruptionBegin {
    //: [[NIMSDK sharedSDK].mediaManager cancelRecord];
    [[NIMSDK sharedSDK].mediaManager cancelRecord];
}

//: #pragma mark - 配置项
#pragma mark - 配置项
//: - (id<FFFSessionConfig>)sessionConfig
- (id<ColorConfig>)messageBar
{
    //: return nil; 
    return nil; //使用默认配置
}

//: - (void)setupTableView
- (void)by
{
    //: CGFloat safeAreaInsetsBottom = [UIDevice vg_safeDistanceBottom];
    CGFloat safeAreaInsetsBottom = [UIDevice failSafeDoing];
    //: CGFloat containerSafeHeight = [UIScreen mainScreen].bounds.size.height - safeAreaInsetsBottom - (44.0f + [UIDevice vg_statusBarHeight]);
    CGFloat containerSafeHeight = [UIScreen mainScreen].bounds.size.height - safeAreaInsetsBottom - (44.0f + [UIDevice comeDownSuperphylum]);

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [UIScreen mainScreen].bounds.size.width, containerSafeHeight-51) style:UITableViewStylePlain];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, (44.0f + [UIDevice comeDownSuperphylum]), [UIScreen mainScreen].bounds.size.width, containerSafeHeight-51) style:UITableViewStylePlain];
//    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, SCREEN_TOP_HEIGHT, SCREEN_WIDTH, SCREEN_HEIGHT-SCREEN_TOP_HEIGHT-SCREEN_TABBAR_HEIGHT-SCREEN_BOTTOM_HEIGHT) style:UITableViewStylePlain];
//    self.tableView.backgroundColor = NEEKIT_UIColorFromRGB(0xe4e7ec);
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.estimatedRowHeight = 0;
    self.tableView.estimatedRowHeight = 0;
    //: self.tableView.estimatedSectionHeaderHeight = 0;
    self.tableView.estimatedSectionHeaderHeight = 0;
    //: self.tableView.estimatedSectionFooterHeight = 0;
    self.tableView.estimatedSectionFooterHeight = 0;
    //: self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.tableView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    //: self.tableViewTapGesture = [[UITapGestureRecognizer alloc] init];
    self.tableViewTapGesture = [[UITapGestureRecognizer alloc] init];
    //: self.tableViewTapGesture.cancelsTouchesInView = NO;
    self.tableViewTapGesture.cancelsTouchesInView = NO;
    //: [self.tableViewTapGesture addTarget:self action:@selector(onTapTableView:)];
    [self.tableViewTapGesture addTarget:self action:@selector(managerred:)];
    //: [self.tableView addGestureRecognizer:self.tableViewTapGesture];
    [self.tableView addGestureRecognizer:self.tableViewTapGesture];
    //: self.tableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;
    self.tableView.keyboardDismissMode = UIScrollViewKeyboardDismissModeOnDrag;

//    if ([self.sessionConfig respondsToSelector:@selector(sessionBackgroundImage)] && [self.sessionConfig sessionBackgroundImage]) {
//        UIImageView *imgView = [[UIImageView alloc] initWithFrame:self.view.bounds];
//        imgView.image = [self.sessionConfig sessionBackgroundImage];
//        imgView.contentMode = UIViewContentModeScaleAspectFill;
//        self.tableView.backgroundView = imgView;
//    }
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];

}

//: #pragma mark - Private
#pragma mark - Private

//: - (void)addListener
- (void)add
{
    //: [[NIMSDK sharedSDK].chatManager addDelegate:self];
    [[NIMSDK sharedSDK].chatManager addDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    [[NIMSDK sharedSDK].conversationManager addDelegate:self];
    //: [[NIMSDK sharedSDK].chatExtendManager addDelegate:self];
    [[NIMSDK sharedSDK].chatExtendManager addDelegate:self];
}

//: - (BOOL)disableAudioPlayedStatusIcon:(NIMMessage *)message
- (BOOL)pasts:(NIMMessage *)message
{
    //: BOOL disable = NO;
    BOOL disable = NO;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableAudioPlayedStatusIcon)])
    if ([self.messageBar respondsToSelector:@selector(upIcon)])
    {
        //: disable = [self.sessionConfig disableAudioPlayedStatusIcon];
        disable = [self.messageBar upIcon];
    }
    //: return disable;
    return disable;
}


//: - (void)setBannedSpeakingWithMessage:(NSArray <NIMMessage *>*)messages {
- (void)setFormatEnd:(NSArray <NIMMessage *>*)messages {

    //: [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull message, NSUInteger idx, BOOL * _Nonnull stop) {
    [messages enumerateObjectsUsingBlock:^(NIMMessage * _Nonnull message, NSUInteger idx, BOOL * _Nonnull stop) {

        //: NIMNotificationObject *object = message.messageObject;
        NIMNotificationObject *object = message.messageObject;
        //: if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
        if (object && [object isKindOfClass:NIMNotificationObject.class] && object.notificationType == NIMNotificationTypeTeam)
        {
            //: NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
            NIMTeamNotificationContent *content = (NIMTeamNotificationContent*)object.content;
            //: id attachment = [content attachment];
            id attachment = [content attachment];
            //: if (attachment && [attachment isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {
            if (attachment && [attachment isKindOfClass:[NIMUpdateTeamInfoAttachment class]]) {

                //: NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)attachment;
                NIMUpdateTeamInfoAttachment *teamAttachment = (NIMUpdateTeamInfoAttachment *)attachment;
                //: if (teamAttachment && [teamAttachment.values count] > 0) {
                if (teamAttachment && [teamAttachment.values count] > 0) {

                    /**
                     *  群禁言模式
                     *  @discussion 0: 禁言关闭 1: 全员禁言，不包括管理员
                     */
                    // NIMTeamUpdateTagMuteMode       = 100,
                    /**
                     *  群全体禁言模式
                     *  @discussion 参考NIMTeamAllMuteMode定义。0: 禁言关闭 1: 全员禁言，不包括管理员 3: 全员禁言，包括群组和管理员
                     */
                    // NIMTeamUpdateTagAllMuteMode    = 101,

                    //                        if ([[teamAttachment.values allKeys] containsObject:@(100)]) {
                    //                            BOOL banned = [teamAttachment.values objectForKey:@(100)];
                    //                        }


                    //: if ([[teamAttachment.values allKeys] containsObject:@(101)]) {
                    if ([[teamAttachment.values allKeys] containsObject:@(101)]) {
                        //: BOOL banned = [teamAttachment.values boolValueForKey:@(101)];
                        BOOL banned = [teamAttachment.values unwelcomeTing:@(101)];
                        //: [self setInputViewPlaceholder:banned];
                        [self setSetWithPlaceholder:banned];
                    }

                    //: else if ([[teamAttachment.values allKeys] containsObject:@(100)]) {
                    else if ([[teamAttachment.values allKeys] containsObject:@(100)]) {
                        //: BOOL banned = [teamAttachment.values boolValueForKey:@(100)];
                        BOOL banned = [teamAttachment.values unwelcomeTing:@(100)];
                        //: [self setInputViewPlaceholder:banned];
                        [self setSetWithPlaceholder:banned];
                    }

                }

            }
        }
    //: }];
    }];
}


//: - (void)menuDidHide:(NSNotification *)notification
- (void)prixFixeWith:(NSNotification *)notification
{
    //: [UIMenuController sharedMenuController].menuItems = nil;
    [UIMenuController sharedMenuController].menuItems = nil;
}

//: - (BOOL)canBecomeFirstResponder
- (BOOL)canBecomeFirstResponder
{
    //: return YES;
    return YES;
}

//: - (void)fetchMessageAttachment:(NIMMessage *)message progress:(float)progress
- (void)fetchMessageAttachment:(NIMMessage *)message progress:(float)progress
{
    //: if ([message.session isEqual:_session])
    if ([message.session isEqual:_session])
    {
        //: [self.interactor updateMessage:message];
        [self.interactor valueInfo:message];
    }
}

//: - (void)onNotifyRemoveMessagePin:(NIMMessagePinItem *)item
- (void)onNotifyRemoveMessagePin:(NIMMessagePinItem *)item
{
    //: NIMMessage *message = [NIMSDK.sharedSDK.conversationManager messagesInSession:self.session messageIds:@[item.messageId]].lastObject;
    NIMMessage *message = [NIMSDK.sharedSDK.conversationManager messagesInSession:self.session messageIds:@[item.messageId]].lastObject;
    //: [self uiUnpinMessage:message];
    [self readRowMessage:message];
}

//: #pragma mark - NIMInputActionDelegate
#pragma mark - PullDelegate
//: - (void)onTapPraiseItem:(NSInteger)index withMessage:(NIMMessage *)message
- (void)clickMessage:(NSInteger)index doStandardMessage:(NIMMessage *)message
{
//    self.messageForMenu = message;
//    [self praiseViewdidSelectIndex:index];

    //: __block NIMQuickComment *newComment = [NIMCommentMaker commentWithType:index content:@"" ext:@"扩展"];
    __block NIMQuickComment *newComment = [GrowingColor scale:index top:@"" noticeParentName:@"扩展"];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
            //: [weakSelf.interactor addQuickComment:newComment toMessage:message completion:^(NSError *error)
            [weakSelf.interactor pressDownEnable:newComment my:message outInfo:^(NSError *error)
            {
                //: if (error)
                if (error)
                {
                    //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
                    [weakSelf.view makeToast:[MakeManager cell:[[DeployCommandData sharedInstance] kNameServingString]] duration:2 position:CSToastPositionCenter];
                }

                //: [weakSelf cleanMenuMessage];
                [weakSelf clean];
            //: }];
            }];

}


//: - (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
//    [self.serviceContentTextView hideTextSelection];
    //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
    [ResultCuttingEdgeView.namePrixFixe removeFromSuperview];
    //: [self.view endEditing:YES];
    [self.view endEditing:YES];
}

//: - (void)handleAlbumBtn
- (void)userKey
{
    //: _photopicview.hidden = YES;
    _photopicview.hidden = YES;
    //: [self.interactor mediaPicturePressed];
    [self.interactor tingName];
}
//: - (void)enterTeamCard:(id)sender {
- (void)iconing:(id)sender {
    //: FFFTeamCardViewController *vc = nil;
    CommentViewController *vc = nil;
    //: FFFTeamCardViewControllerOption *option = [[FFFTeamCardViewControllerOption alloc] init];
    SessionOption *option = [[SessionOption alloc] init];
    //: option.isTop = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session] != nil;
    option.isTop = [NIMSDK.sharedSDK.chatExtendManager stickTopInfoForSession:self.session] != nil;

    //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
    //: if(team.type == NIMTeamTypeAdvanced){
    if(team.type == NIMTeamTypeAdvanced){
            //: vc = [[FFFAdvancedTeamCardViewController alloc] initWithTeam:team
            vc = [[OpenDefenceViewController alloc] initWithTowardRecording:team
                                                                 //: session:self.session
                                                                 pass:self.session
                                                                  //: option:option];
                                                                  session:option];
            //: vc.delegate = self;
            vc.delegate = self;
            //: vc.canMemberInfo = self.canMemberInfo;
            vc.canMemberInfo = self.canMemberInfo;
    }

    //: if (vc) {
    if (vc) {
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
    }
}
//: - (BOOL)onTapMediaItem:(FFFMediaItem *)item{
- (BOOL)messageTable:(CommingleItem *)item{
    //: SEL sel = item.selctor;
    SEL sel = item.selctor;
    //: BOOL handled = sel && [self respondsToSelector:sel];
    BOOL handled = sel && [self respondsToSelector:sel];
    //: if (handled) {
    if (handled) {
        //: do {
        do {
        //: [self performSelector:sel withObject:item];
        [self performSelector:sel withObject:item];
        //: } while (0);
        } while (0);
        //: handled = YES;
        handled = YES;
    }
    //: return handled;
    return handled;
}
//: - (void)showRecordFileNotSendReason{}
- (void)with{}


//: - (void)onTapMenuItemCopy:(FFFMediaItem *)item
- (void)mediaed:(CommingleItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: if (message.tyl_internalIdentifier.length) {
    if (message.TelegramContext.length) {
        //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        //: [pasteboard setString:message.tyl_internalIdentifier];
        [pasteboard setString:message.TelegramContext];
    }
    //: else if (message.text.length) {
    else if (message.text.length) {
        //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        //: [pasteboard setString:message.text];
        [pasteboard setString:message.text];
    }
}

//: - (void)onTapCameraBtn:(id)sender
- (void)valueDisable:(id)sender
{
//    [self.interactor mediaShootPressed];

    //: [self.view addSubview:self.customAlbumView];
    [self.view addSubview:self.customAlbumView];
    //: [self.customAlbumView.albumPickerView reloadMediaData];
    [self.customAlbumView.albumPickerView text];
    //: [self.customAlbumView.albumPickerView.selectedAssets removeAllObjects];
    [self.customAlbumView.albumPickerView.selectedAssets removeAllObjects];
    //: [self.customAlbumView.albumPickerView.collectionView reloadData];
    [self.customAlbumView.albumPickerView.collectionView reloadData];
    //: [self.customAlbumView.confirmButton setTitle:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_send"] forState:UIControlStateNormal];
    [self.customAlbumView.confirmButton setTitle:[MakeManager cell:[[DeployCommandData sharedInstance] kContent_bronzeName]] forState:UIControlStateNormal];
    //: [self.customAlbumView animationShow];
    [self.customAlbumView sign];

}


// 远端消息批量删除删除回调
//: - (void)onRecvMessagesDeleted:(NSArray<NIMMessage *> *)messages exts:(NSDictionary<NSString *,NSString *> *)exts
- (void)onRecvMessagesDeleted:(NSArray<NIMMessage *> *)messages exts:(NSDictionary<NSString *,NSString *> *)exts
{
    //: [self refreshMessages];
    [self commentMessages];
}


//: - (void)exportVideoToTempFile:(AVAsset *)avAsset completion:(void (^)(NSString *path))completion {
- (void)enable:(AVAsset *)avAsset searchedCompletion:(void (^)(NSString *path))completion {
    //: NSArray *presets = [AVAssetExportSession exportPresetsCompatibleWithAsset:avAsset];
    NSArray *presets = [AVAssetExportSession exportPresetsCompatibleWithAsset:avAsset];
    //: if ([presets containsObject:AVAssetExportPresetHighestQuality]) {
    if ([presets containsObject:AVAssetExportPresetHighestQuality]) {
        //: AVAssetExportSession *session = [[AVAssetExportSession alloc] initWithAsset:avAsset presetName:AVAssetExportPresetHighestQuality];
        AVAssetExportSession *session = [[AVAssetExportSession alloc] initWithAsset:avAsset presetName:AVAssetExportPresetHighestQuality];

        //: NSString *outputPath = [NSTemporaryDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:@"temp_video_%@.mp4", [NSUUID UUID].UUIDString]];
        NSString *outputPath = [NSTemporaryDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:[[DeployCommandData sharedInstance] kTitle_brotherContent], [NSUUID UUID].UUIDString]];
        //: session.outputURL = [NSURL fileURLWithPath:outputPath];
        session.outputURL = [NSURL fileURLWithPath:outputPath];
        //: session.outputFileType = AVFileTypeMPEG4;
        session.outputFileType = AVFileTypeMPEG4;
        //: session.shouldOptimizeForNetworkUse = YES;
        session.shouldOptimizeForNetworkUse = YES;

        //: [session exportAsynchronouslyWithCompletionHandler:^{
        [session exportAsynchronouslyWithCompletionHandler:^{
            //: dispatch_async(dispatch_get_main_queue(), ^{
            dispatch_async(dispatch_get_main_queue(), ^{
                //: if (session.status == AVAssetExportSessionStatusCompleted) {
                if (session.status == AVAssetExportSessionStatusCompleted) {
                    //: if (completion) completion(outputPath);
                    if (completion) completion(outputPath);
                //: } else {
                } else {
                    //: if (completion) completion(nil);
                    if (completion) completion(nil);
                }
            //: });
            });
        //: }];
        }];
    //: } else {
    } else {
        //: if (completion) completion(nil);
        if (completion) completion(nil);
    }
}

//: - (void)onTapMenuItemDelete:(FFFMediaItem *)item
- (void)asHandle:(CommingleItem *)item
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: [self uiDeleteMessage:message];
    [self keep:message];
    //: [self.conversationManager deleteMessage:message];
    [self.colorButton deleteMessage:message];
}

//: - (void)cleanMenuMessage
- (void)clean
{
    //: [self.sessionInputView.replyedContent.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    [self.sessionInputView.replyedContent.closeButton sendActionsForControlEvents:UIControlEventTouchUpInside];
    //: self.messageForMenu = nil;
    self.messageForMenu = nil;
}

//: - (void)copyText:(id)sender
- (void)dueDate:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: if (message.tyl_internalIdentifier.length) {
    if (message.TelegramContext.length) {
        //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        //: [pasteboard setString:message.tyl_internalIdentifier];
        [pasteboard setString:message.TelegramContext];
    }
    //: else if (message.text.length) {
    else if (message.text.length) {
        //: UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
        //: [pasteboard setString:message.text];
        [pasteboard setString:message.text];
    }
}

//: - (void)handleParentTap
- (void)stepparentShow
{
    //: [self.customAlbumView animationClose];
    [self.customAlbumView ingatheringBy];
}

//: #pragma mark - 状态操作
#pragma mark - 状态操作
//: - (NIMKitSessionState)sessionState {
- (NIMKitSessionState)backgroundDoing {
    //: return [self.interactor sessionState];
    return [self.interactor mark];
}

//: - (void)setupNav
- (void)thanPicture
{
    //: _topview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    _topview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice comeDownSuperphylum]))];
    //: _topview.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    _topview.backgroundColor = [UIColor cell:[[DeployCommandData sharedInstance] kNameSculptureNimServingData]];
    //: [self.view addSubview:_topview];
    [self.view addSubview:_topview];

    //: UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight], 40, 40);
    backBtn.frame = CGRectMake(15, [UIDevice comeDownSuperphylum], 40, 40);
    //: [backBtn addTarget:self action:@selector(gotoBack:) forControlEvents:UIControlEventTouchUpInside];
    [backBtn addTarget:self action:@selector(frameworking:) forControlEvents:UIControlEventTouchUpInside];
    //: [backBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:UIControlStateNormal];
    [backBtn setImage:[UIImage imageNamed:[[DeployCommandData sharedInstance] kNameFanData]] forState:UIControlStateNormal];
    //: [_topview addSubview:backBtn];
    [_topview addSubview:backBtn];

    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
     //: _badgeView = [FFFBadgeView viewWithBadgeTip:@""];
     _badgeView = [CenterStandardView streetSmart:@""];
    //: _badgeView.frame = CGRectMake(backBtn.right+5, backBtn.top+8, 24, 24);
    _badgeView.frame = CGRectMake(backBtn.right+5, backBtn.top+8, 24, 24);
    //: [_topview addSubview:_badgeView];
    [_topview addSubview:_badgeView];
    //: _badgeView.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
    _badgeView.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;

    //: _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice vg_statusBarHeight], 200, 40)];
    _labtitle = [[UILabel alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-200)/2, [UIDevice comeDownSuperphylum], 200, 40)];
    //: _labtitle.textColor = [UIColor blackColor];
    _labtitle.textColor = [UIColor blackColor];
    //: _labtitle.textAlignment = NSTextAlignmentCenter;
    _labtitle.textAlignment = NSTextAlignmentCenter;
    //: _labtitle.font = [UIFont boldSystemFontOfSize:16];
    _labtitle.font = [UIFont boldSystemFontOfSize:16];
    //: _labtitle.text = self.sessionTitle;
    _labtitle.text = self.doingdSessionContent;
    //: [_topview addSubview:_labtitle];
    [_topview addSubview:_labtitle];

//    _subtitle = [[UILabel alloc]initWithFrame:CGRectMake(_headerImage.right+10, _labtitle.bottom, 100, 20)];
//    _subtitle.textColor = RGB_COLOR_String(@"777777");
//    _subtitle.font = [UIFont boldSystemFontOfSize:12];
//    _subtitle.text = self.sessionSubTitle;
//    [topview addSubview:_subtitle];
//    if([self.sessionSubTitle isEqualToString:@"离线".user_localized]){
//        self.subtitle.textColor = RGB_COLOR_String(@"777777");
//    }else{
//        self.subtitle.textColor = RGB_COLOR_String(@"#00B01B");
//    }


    //: if (self.session.sessionType == NIMSessionTypeTeam)
    if (self.session.sessionType == NIMSessionTypeTeam)
    {
        //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];
        NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.session.sessionId];

        //: CGFloat width = 30;
        CGFloat width = 30;
        //: UIButton *enterTeamCard = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *enterTeamCard = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [enterTeamCard addTarget:self action:@selector(enterTeamCard:) forControlEvents:UIControlEventTouchUpInside];
        [enterTeamCard addTarget:self action:@selector(iconing:) forControlEvents:UIControlEventTouchUpInside];
        //: [enterTeamCard sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl] forState:UIControlStateNormal];
        [enterTeamCard sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl] forState:UIControlStateNormal];
        //: [enterTeamCard sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl] forState:(UIControlState)UIControlStateNormal placeholderImage:[UIImage imageNamed:@"head_default_group"]];
        [enterTeamCard sd_setImageWithURL:[NSURL URLWithString:team.avatarUrl] forState:(UIControlState)UIControlStateNormal placeholderImage:[UIImage imageNamed:[[DeployCommandData sharedInstance] kTitleFrameCollegeColorfulString]]];
        //: enterTeamCard.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width-15, [UIDevice vg_statusBarHeight]+10, width, width);
        enterTeamCard.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width-15, [UIDevice comeDownSuperphylum]+10, width, width);
        //: enterTeamCard.layer.cornerRadius = width/2;
        enterTeamCard.layer.cornerRadius = width/2;
        //: enterTeamCard.layer.masksToBounds = YES;
        enterTeamCard.layer.masksToBounds = YES;
        //: [_topview addSubview:enterTeamCard];
        [_topview addSubview:enterTeamCard];
    }
    //: else if(self.session.sessionType == NIMSessionTypeP2P)
    else if(self.session.sessionType == NIMSessionTypeP2P)
    {
        //: CGFloat width = 20;
        CGFloat width = 20;


        //: _btnBlock = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnBlock = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _btnBlock.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width*2-15*2, [UIDevice vg_statusBarHeight]+10, width, width);
        _btnBlock.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width*2-15*2, [UIDevice comeDownSuperphylum]+10, width, width);
        //: [_btnBlock addTarget:self action:@selector(handlerBtnBlock:) forControlEvents:UIControlEventTouchUpInside];
        [_btnBlock addTarget:self action:@selector(colorred:) forControlEvents:UIControlEventTouchUpInside];
        //: [_btnBlock setImage:[UIImage imageNamed:@"ic_block"] forState:UIControlStateNormal];
        [_btnBlock setImage:[UIImage imageNamed:[[DeployCommandData sharedInstance] kNameProudData]] forState:UIControlStateNormal];
        //: [_btnBlock setImage:[UIImage imageNamed:@"ic_block_no"] forState:UIControlStateSelected];
        [_btnBlock setImage:[UIImage imageNamed:[[DeployCommandData sharedInstance] kName_moleHideContent]] forState:UIControlStateSelected];
        //: [_topview addSubview:_btnBlock];
        [_topview addSubview:_btnBlock];

        //: BOOL needNotify = [[NIMSDK sharedSDK].userManager notifyForNewMsg:self.session.sessionId];
        BOOL needNotify = [[NIMSDK sharedSDK].userManager notifyForNewMsg:self.session.sessionId];
        //: _btnBlock.selected = needNotify;
        _btnBlock.selected = needNotify;


        //: UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *infoBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [infoBtn addTarget:self action:@selector(enterPersonInfoCard:) forControlEvents:UIControlEventTouchUpInside];
        [infoBtn addTarget:self action:@selector(clickSession:) forControlEvents:UIControlEventTouchUpInside];
        //: [infoBtn setImage:[UIImage imageNamed:@"ic_more"] forState:UIControlStateNormal];
        [infoBtn setImage:[UIImage imageNamed:[[DeployCommandData sharedInstance] kNameRaspValue]] forState:UIControlStateNormal];
        //: infoBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width-15, [UIDevice vg_statusBarHeight]+10, width, width);
        infoBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-width-15, [UIDevice comeDownSuperphylum]+10, width, width);
        //: [_topview addSubview:infoBtn];
        [_topview addSubview:infoBtn];
    }



}



//: - (void)onStartRecording
- (void)bedFor
{
    //: _sessionInputView.recording = YES;
    _sessionInputView.recording = YES;
//    [_sessionInputView endEditing:YES];

    //: NIMAudioType type = [self recordAudioType];
    NIMAudioType type = [self sub];
    //: NSTimeInterval duration = [MyUserKit sharedKit].config.recordMaxDuration;
    NSTimeInterval duration = [Mortification text].config.recordMaxDuration;

    //: [[NIMSDK sharedSDK].mediaManager addDelegate:self];
    [[NIMSDK sharedSDK].mediaManager addDelegate:self];

    //: [[NIMSDK sharedSDK].mediaManager record:type
    [[NIMSDK sharedSDK].mediaManager record:type
                                   //: duration:duration];
                                   duration:duration];
}

//: - (void)didReplyCancelled
- (void)menuMessage
{
    //: self.messageForMenu = nil;
    self.messageForMenu = nil;
    //: [self.interactor setReferenceMessage:nil];
    [self.interactor setMessage:nil];

    //: if ([self.sessionConfig respondsToSelector:@selector(clearThreadMessageAfterSent)])
    if ([self.messageBar respondsToSelector:@selector(untilMediaSent)])
    {
        //: if ([self.sessionConfig clearThreadMessageAfterSent])
        if ([self.messageBar untilMediaSent])
        {
            //: [self.sessionConfig cleanThreadMessage];
            [self.messageBar threadClose];
        }
    }
}


//: - (void)onSendText:(NSString *)text atUsers:(NSArray *)atUsers replymessage:(NIMMessage *)replymessage
- (void)content:(NSString *)text can:(NSArray *)atUsers video:(NIMMessage *)replymessage
{
    //: NSMutableArray *users = [NSMutableArray arrayWithArray:atUsers];
    NSMutableArray *users = [NSMutableArray arrayWithArray:atUsers];
    //: if (self.session.sessionType == NIMSessionTypeP2P)
    if (self.session.sessionType == NIMSessionTypeP2P)
    {
        //: [users addObject:self.session.sessionId];
        [users addObject:self.session.sessionId];
    }

    //: NIMMessage *message = [FFFMessageMaker msgWithText:text];
    NIMMessage *message = [ShouldMaker file:text];
    //: NSString *type = @"";
    NSString *type = @"";
    //: NSString *contents = @"";
    NSString *contents = @"";

    //: if(replymessage.messageType == NIMMessageTypeText){
    if(replymessage.messageType == NIMMessageTypeText){
        //: type = @"TEXT";
        type = [[DeployCommandData sharedInstance] kTitleJustQualityData];
        //: contents = replymessage.text;
        contents = replymessage.text;
    //: }else if (replymessage.messageType == NIMMessageTypeImage){
    }else if (replymessage.messageType == NIMMessageTypeImage){
        //: type = @"IMAGE";
        type = [[DeployCommandData sharedInstance] kTitleSatisfyName];
        //: NIMImageObject *imageObject = (NIMImageObject*)replymessage.messageObject;
        NIMImageObject *imageObject = (NIMImageObject*)replymessage.messageObject;
        //: NSString *url = [imageObject.url?:@"" stringByReplacingOccurrencesOfString:@" " withString:@""];
        NSString *url = [imageObject.url?:@"" stringByReplacingOccurrencesOfString:@" " withString:@""];
        //: contents = url;
        contents = url;
    //: }else if (replymessage.messageType == NIMMessageTypeVideo){
    }else if (replymessage.messageType == NIMMessageTypeVideo){
        //: type = @"VIDEO";
        type = [[DeployCommandData sharedInstance] kText_ampleValue];
        //: NIMVideoObject *videoObject = (NIMVideoObject*)replymessage.messageObject;
        NIMVideoObject *videoObject = (NIMVideoObject*)replymessage.messageObject;
        //: contents = videoObject.coverUrl;
        contents = videoObject.coverUrl;
    //: }else if (replymessage.messageType == NIMMessageTypeAudio){
    }else if (replymessage.messageType == NIMMessageTypeAudio){
        //: type = @"AUDIO";
        type = [[DeployCommandData sharedInstance] kTitleFishTeamData];
        //: NIMAudioObject *audioObject = (NIMAudioObject*)replymessage.messageObject;
        NIMAudioObject *audioObject = (NIMAudioObject*)replymessage.messageObject;
        //: NSLog(@"%ld",(long)audioObject.duration);
        //: contents = [NSString stringWithFormat:@"%zd\"",(NSInteger)((audioObject.duration+500)/1000)];
        contents = [NSString stringWithFormat:@"%zd\"",(NSInteger)((audioObject.duration+500)/1000)];
    }

    //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
    CellClean *option = [[CellClean alloc] init];
    //: option.message = replymessage;
    option.message = replymessage;
    //: FFFKitInfo *info = [[MyUserKit sharedKit] infoByUser:replymessage.from option:option];
    CancelTeamCorner *info = [[Mortification text] tingVoice:replymessage.from keepingOption:option];

    //: NSDictionary *dic = @{
    NSDictionary *dic = @{
            //: @"type": type,//type:TEXT、IMAGE、VIDEO
            [[DeployCommandData sharedInstance] kTitlePromptData]: type,//type:TEXT、IMAGE、VIDEO
            //: @"content": contents,//content:文本内容、图片url、视频url
            @"content": contents,//content:文本内容、图片url、视频url
            //: @"userName": info.showName,//消息发送者
            [[DeployCommandData sharedInstance] kName_ribbonText]: info.showName,//消息发送者
            //: @"messageid": replymessage.messageId,//messageid：留着备用
            [[DeployCommandData sharedInstance] kNameEnableusData]: replymessage.messageId,//messageid：留着备用
    //: };
    };

    //: message.remoteExt = @{@"reply": dic };
    message.remoteExt = @{[[DeployCommandData sharedInstance] kName_withValue]: dic };

    //: if (atUsers.count)
    if (atUsers.count)
    {
        //: NIMMessageApnsMemberOption *apnsOption = [[NIMMessageApnsMemberOption alloc] init];
        NIMMessageApnsMemberOption *apnsOption = [[NIMMessageApnsMemberOption alloc] init];
        //: apnsOption.userIds = atUsers;
        apnsOption.userIds = atUsers;
        //: apnsOption.forcePush = YES;
        apnsOption.forcePush = YES;

        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        CellClean *option = [[CellClean alloc] init];
        //: option.session = self.session;
        option.session = self.session;

        //: NSString *me = [[MyUserKit sharedKit].provider infoByUser:[NIMSDK sharedSDK].loginManager.currentAccount option:option].showName;
        NSString *me = [[Mortification text].provider tingVoice:[NIMSDK sharedSDK].loginManager.currentAccount keepingOption:option].showName;
        //: apnsOption.apnsContent = [NSString stringWithFormat:@"%@在群里@了你".nim_localized, me];
        apnsOption.apnsContent = [NSString stringWithFormat:[[DeployCommandData sharedInstance] kContentBurningValue].disable, me];
        //: message.apnsMemberOption = apnsOption;
        message.apnsMemberOption = apnsOption;
    }

    //: [self sendMessage:message completion:^(NSError *err) {
    [self with:message actuarialTable:^(NSError *err) {
        //: [self.tableView reloadData];
        [self.tableView reloadData];
    //: }];
    }];
}

//: - (void)scrollToMessage:(NIMMessage *)message
- (void)enumerate:(NIMMessage *)message
{
    //: NSInteger row = [self.interactor findMessageIndex:message];
    NSInteger row = [self.interactor turnIndex:message];
    //: if (row != -1) {
    if (row != -1) {
        //: NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:0];
        //: [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
        [self.tableView scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
    }
}

//是否需要监听感应器事件
//: - (BOOL)needProximityMonitor
- (BOOL)record
{
    //: BOOL needProximityMonitor = YES;
    BOOL needProximityMonitor = YES;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableProximityMonitor)]) {
    if ([self.messageBar respondsToSelector:@selector(showMonitor)]) {
        //: needProximityMonitor = !self.sessionConfig.disableProximityMonitor;
        needProximityMonitor = !self.messageBar.showMonitor;
    }
    //: return needProximityMonitor;
    return needProximityMonitor;
}
//: - (void)removeListener
- (void)tingWith
{
    //: [[NIMSDK sharedSDK].chatManager removeDelegate:self];
    [[NIMSDK sharedSDK].chatManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    [[NIMSDK sharedSDK].conversationManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    //: [[NIMSDK sharedSDK].chatExtendManager removeDelegate:self];
    [[NIMSDK sharedSDK].chatExtendManager removeDelegate:self];

}

//接收消息
//: - (void)onRecvMessages:(NSArray *)messages
- (void)onRecvMessages:(NSArray *)messages
{
    //: if ([self shouldAddListenerForNewMsg])
    if ([self to])
    {
        //: NIMMessage *message = messages.firstObject;
        NIMMessage *message = messages.firstObject;
        //: NIMSession *session = message.session;
        NIMSession *session = message.session;

        //: UIViewController *topvc = [self getTopMostController];
        UIViewController *topvc = [self heritage];
        //: if (![topvc isKindOfClass:NSClassFromString(@"USERSessionViewController")] && ![topvc isKindOfClass:[FFFSessionViewController class]]) {
        if (![topvc isKindOfClass:NSClassFromString(@"WayOfLifeViewController")] && ![topvc isKindOfClass:[ReplyViewController class]]) {
            //: return;
            return;
        }

        //: if (![session isEqual:self.session] || !messages.count)
        if (![session isEqual:self.session] || !messages.count)
        {
            //: return;
            return;
        }

        //: [self uiInsertMessages:messages];
        [self recordCountroduceText:messages];
        //: [self.interactor markRead:NO];
        [self.interactor block:NO];

        // 群禁言后输入框改变占位符文字
        //: [self setBannedSpeakingWithMessage:messages];
        [self setFormatEnd:messages];
    }
};

//: - (void)onTapTableView:(id)sender
- (void)managerred:(id)sender
{
//    ResultCuttingEdgeView.shareMenuView.praiseView.hidden = YES;
//    ResultCuttingEdgeView.shareMenuView.buttonsBgView.hidden = NO;
    //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
    [ResultCuttingEdgeView.namePrixFixe removeFromSuperview];
    //: [self.sessionInputView endEditing:YES];
    [self.sessionInputView endEditing:YES];
    //: self.photopicview.hidden = YES;
    self.photopicview.hidden = YES;
}

//: #pragma mark - 导航按钮
#pragma mark - 导航按钮
//: - (void)handlerBtnBlock:(UIButton *)sender
- (void)colorred:(UIButton *)sender
{
    //: sender.selected = !sender.selected;
    sender.selected = !sender.selected;
        //: [SVProgressHUD show];
        [SVProgressHUD show];
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].userManager updateNotifyState:sender.selected forUser:self.session.sessionId completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager updateNotifyState:sender.selected forUser:self.session.sessionId completion:^(NSError *error) {
            //: [SVProgressHUD dismiss];
            [SVProgressHUD dismiss];
            //: if (error) {
            if (error) {
                //: [wself.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2.0f position:CSToastPositionCenter];
                [wself.view makeToast:[MakeManager cell:[[DeployCommandData sharedInstance] kNameServingString]] duration:2.0f position:CSToastPositionCenter];
            }
        //: }];
        }];
}

// 获取图片路径
//: - (void)getImagePathFromPHAsset:(PHAsset *)asset completion:(void (^)(NSString *path))completion {
- (void)tin:(PHAsset *)asset scene:(void (^)(NSString *path))completion {
    //: if (asset.mediaType != PHAssetMediaTypeImage) {
    if (asset.mediaType != PHAssetMediaTypeImage) {
        //: if (completion) completion(nil);
        if (completion) completion(nil);
        //: return;
        return;
    }

    //: PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
    PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
    //: options.version = PHImageRequestOptionsVersionOriginal;
    options.version = PHImageRequestOptionsVersionOriginal;
    //: options.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    options.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    //: options.networkAccessAllowed = YES;
    options.networkAccessAllowed = YES;
    //: options.synchronous = NO;
    options.synchronous = NO;

    //: [[PHImageManager defaultManager] requestImageDataForAsset:asset options:options resultHandler:^(NSData * _Nullable imageData, NSString * _Nullable dataUTI, UIImageOrientation orientation, NSDictionary * _Nullable info) {
    [[PHImageManager defaultManager] requestImageDataForAsset:asset options:options resultHandler:^(NSData * _Nullable imageData, NSString * _Nullable dataUTI, UIImageOrientation orientation, NSDictionary * _Nullable info) {
        //: if (imageData) {
        if (imageData) {
            //: NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:@"temp_image_%@.jpg", [NSUUID UUID].UUIDString]];
            NSString *filePath = [NSTemporaryDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:[[DeployCommandData sharedInstance] kNameCurveChartValue], [NSUUID UUID].UUIDString]];
            //: [imageData writeToFile:filePath atomically:YES];
            [imageData writeToFile:filePath atomically:YES];
            //: if (completion) completion(filePath);
            if (completion) completion(filePath);
        //: } else {
        } else {
            //: if (completion) completion(nil);
            if (completion) completion(nil);
        }
    //: }];
    }];
}

//: - (FFFMessageModel *)uiDeleteMessage:(NIMMessage *)message{
- (CleanDoing *)keep:(NIMMessage *)message{
    //: FFFMessageModel *model = [self.interactor deleteMessage:message];
    CleanDoing *model = [self.interactor date:message];
    //: if (model.shouldShowReadLabel && model.message.session.sessionType == NIMSessionTypeP2P)
    if (model.shouldShowReadLabel && model.message.session.sessionType == NIMSessionTypeP2P)
    {
        //: [self uiCheckReceipts:nil];
        [self ting:nil];
    }
    //: return model;
    return model;
}


//: #pragma mark - 会话title
#pragma mark - 会话title
//: - (NSString *)sessionTitle
- (NSString *)doingdSessionContent
{
    //: NSString *title = @"";
    NSString *title = @"";
    //: NIMSessionType type = self.session.sessionType;
    NIMSessionType type = self.session.sessionType;
    //: switch (type) {
    switch (type) {
        //: case NIMSessionTypeTeam:{
        case NIMSessionTypeTeam:{
            //: NIMTeam *team = [[[NIMSDK sharedSDK] teamManager] teamById:self.session.sessionId];
            NIMTeam *team = [[[NIMSDK sharedSDK] teamManager] teamById:self.session.sessionId];
            //: title = [NSString stringWithFormat:@"%@(%zd)",[team teamName],[team memberNumber]];
            title = [NSString stringWithFormat:@"%@(%zd)",[team teamName],[team memberNumber]];
            //: title = [NSString stringWithFormat:@"%@",[team teamName]];
            title = [NSString stringWithFormat:@"%@",[team teamName]];//不要人数

        }
            //: break;
            break;
        //: case NIMSessionTypeP2P:{
        case NIMSessionTypeP2P:{
            //: title = [FFFKitUtil showNick:self.session.sessionId inSession:self.session];
            title = [AtPull can:self.session.sessionId changeSession:self.session];
        }
            //: break;
            break;
        //: case NIMSessionTypeSuperTeam: {
        case NIMSessionTypeSuperTeam: {
            //: NIMTeam *team = [[[NIMSDK sharedSDK] superTeamManager] teamById:self.session.sessionId];
            NIMTeam *team = [[[NIMSDK sharedSDK] superTeamManager] teamById:self.session.sessionId];
            //: title = [NSString stringWithFormat:@"%@(%zd)",[team teamName],[team memberNumber]];
            title = [NSString stringWithFormat:@"%@(%zd)",[team teamName],[team memberNumber]];
            //: title = [NSString stringWithFormat:@"%@",[team teamName]];
            title = [NSString stringWithFormat:@"%@",[team teamName]];//不要人数

        }
        //: default:
        default:
            //: break;
            break;
    }
    //: return title;
    return title;
}


//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)file:(NIMMessage *)message
                 //: inView:(UIView *)view
                 search:(UIView *)view
{
    //: BOOL handle = NO;
    BOOL handle = NO;
    //: _messageForMenu = message;
    _messageForMenu = message;
    //: [self.interactor setReferenceMessage:message];
    [self.interactor setMessage:message];
    //: if (![self becomeFirstResponder]) {
    if (![self becomeFirstResponder]) {
        //: handle = NO;
        handle = NO;
        //: return handle;
        return handle;
    }
    //: if ([self shouldShowMenuByMessage:message])
    if ([self container:message])
    {
        //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
        [ResultCuttingEdgeView.namePrixFixe removeFromSuperview];
        //: [self showMenuWithMessage:message withView:view];
        [self withColor:message cleanTo:view];
    }
    //: handle = YES;
    handle = YES;
    //: return handle;
    return handle;
}

//: #pragma mark - NIMChatManagerDelegate
#pragma mark - NIMChatManagerDelegate
//开始发送
//: - (void)willSendMessage:(NIMMessage *)message
- (void)willSendMessage:(NIMMessage *)message
{
    //: id<NIMSessionInteractor> interactor = self.interactor;
    id<TitleTotaleractor> interactor = self.interactor;

    //: if ([message.session isEqual:self.session]) {
    if ([message.session isEqual:self.session]) {
        //: if ([interactor findMessageModel:message]) {
        if ([interactor telegram:message]) {
            //: [interactor updateMessage:message];
            [interactor valueInfo:message];
        //: }else{
        }else{
            //: [interactor addMessages:@[message]];
            [interactor image:@[message]];
        }
    }
}

//: - (PhotoContainerView *)customAlbumView
- (LyricView *)customAlbumView
{
    //: if(!_customAlbumView){
    if(!_customAlbumView){
        //: _customAlbumView = [[PhotoContainerView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _customAlbumView = [[LyricView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        //: _customAlbumView.delegate = self;
        _customAlbumView.delegate = self;

                //: UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleParentTap)];
                UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(stepparentShow)];
                //: singleTapclose.delegate = self;
                singleTapclose.delegate = self;
                //: singleTapclose.cancelsTouchesInView = NO; 
                singleTapclose.cancelsTouchesInView = NO; // 允许触摸事件继续传递
                //: [_customAlbumView addGestureRecognizer:singleTapclose];
                [_customAlbumView addGestureRecognizer:singleTapclose];
    }
    //: return _customAlbumView;
    return _customAlbumView;
}

//: - (void)onSelectEmoticon:(NIMInputEmoticon *)emoticon
- (void)showEmoticon:(BubbleNameReload *)emoticon
{
    //: NSString *emoticonID = emoticon.emoticonID;
    NSString *emoticonID = emoticon.emoticonID;
    //: NSArray *array = [emoticonID componentsSeparatedByString:@"_"];
    NSArray *array = [emoticonID componentsSeparatedByString:@"_"];
    //: NSString *numberStr = [array lastObject];
    NSString *numberStr = [array lastObject];
    //: NSInteger number = [numberStr integerValue];
    NSInteger number = [numberStr integerValue];
    //: __block NIMQuickComment *newComment = [NIMCommentMaker commentWithType:number content:emoticon.tag ext:@"扩展"];
    __block NIMQuickComment *newComment = [GrowingColor scale:number top:emoticon.tag noticeParentName:@"扩展"];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self hadCommentThisMessage:self.messageForMenu type:number
    [self information:self.messageForMenu easing:number
                      //: compltion:^(NSMapTable *result)
                      wisecrack:^(NSMapTable *result)
     {
        //: NIMQuickComment *oldComment = [FFFKitQuickCommentUtil myCommentFromComments:0 keys:@[@(number)] comments:result];
        NIMQuickComment *oldComment = [ControlInside pinComments:0 by:@[@(number)] vanguard:result];
        //: BOOL contains = oldComment ? YES : NO;
        BOOL contains = oldComment ? YES : NO;
        //: if (!contains)
        if (!contains)
        {
            //: [weakSelf.interactor addQuickComment:newComment
            [weakSelf.interactor state:newComment
                                  //: completion:^(NSError *error)
                                  at:^(NSError *error)
            {
//                [self.view hideToasts];
                //: if (error)
                if (error)
                {
                    //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
                    [weakSelf.view makeToast:[MakeManager cell:[[DeployCommandData sharedInstance] kNameServingString]] duration:2 position:CSToastPositionCenter];
                }

                //: [weakSelf cleanMenuMessage];
                [weakSelf clean];
            //: }];
            }];
        }
        //: else
        else
        {
            //: [weakSelf.interactor delQuickComment:oldComment
            [weakSelf.interactor fastPress:oldComment
                                   //: targetMessage:weakSelf.messageForMenu
                                   speedy:weakSelf.messageForMenu
                                      //: completion:^(NSError *error)
                                      instance:^(NSError *error)
            {
//                [self.view hideToasts];
                //: if (error)
                if (error)
                {
                    //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
                    [weakSelf.view makeToast:[MakeManager cell:[[DeployCommandData sharedInstance] kNameServingString]] duration:2 position:CSToastPositionCenter];
                }

                //: [weakSelf cleanMenuMessage];
                [weakSelf clean];
            //: }];
            }];
        }
    //: }];
    }];
}


//: - (void)onSelectChartlet:(NSString *)chartletId
- (void)successTing:(NSString *)chartletId
                 //: catalog:(NSString *)catalogId
                 dedication:(NSString *)catalogId
{
//    NSBundle *bundle = [Mortification sharedKit].emoticonBundle;
//    NSData *imageData = [NSData dataWithContentsOfFile:[bundle pathForResource:chartletId ofType:nil inDirectory:NEEKIT_EmojiPath]];
    //: NSString *emojiPath = [[SSZipArchiveManager sharedManager] getEmojiPath];
    NSString *emojiPath = [[PersonShould commonKey] getText];
    //: NSString *imagePath = [emojiPath stringByAppendingPathComponent:chartletId];
    NSString *imagePath = [emojiPath stringByAppendingPathComponent:chartletId];
    //: NSData *imageData = [NSData dataWithContentsOfFile:imagePath];
    NSData *imageData = [NSData dataWithContentsOfFile:imagePath];

//    UIImage *gif = [UIImage sd_imageWithGIFData:imageData];
//
//    NIMMessage *message = [ShouldMaker msgWithImage:gif];
//    [self sendMessage:message];
//

    //: NIMMessage *message = [FFFMessageMaker msgWithImageData:imageData extension:@""];
    NIMMessage *message = [ShouldMaker naturalLanguageTing:imageData simulationExtension:@""];
//    message.messageSubType = 77;//标记gif用
    //: NSMutableDictionary *dic = [[FFFConfig sharedConfig] Gdic];
    NSMutableDictionary *dic = [[ContextTeam mutual] Gdic];
//    NSData *imageData = UIImagePNGRepresentation(image);
    //: [dic setObject:imageData forKey:message.messageId];
    [dic setObject:imageData forKey:message.messageId];

    //: [self sendMessage:message];
    [self user:message];

    //: [self.sessionInputView.toolBar setPlaceHolder:[FFFLanguageManager getTextWithKey:@"message_please_enter_content"]];
    [self.sessionInputView.toolBar setSetAndThole:[MakeManager cell:[[DeployCommandData sharedInstance] kName_editorValue]]];

//    [self.sessionInputView endEditing:YES];
}


//- (void)didAddRecentSession:(NIMRecentSession *)recentSession
//           totalUnreadCount:(NSInteger)totalUnreadCount{
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
//}
//
//- (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
//              totalUnreadCount:(NSInteger)totalUnreadCount{
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
//}
//
//- (void)didRemoveRecentSession:(NIMRecentSession *)recentSession
//              totalUnreadCount:(NSInteger)totalUnreadCount{
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
//}


//: - (void)changeUnreadCount:(NIMRecentSession *)recentSession
- (void)unreadTo:(NIMRecentSession *)recentSession
         //: totalUnreadCount:(NSInteger)totalUnreadCount{
         session:(NSInteger)totalUnreadCount{
    //: if ([recentSession.session isEqual:self.session]) {
    if ([recentSession.session isEqual:self.session]) {
        //: return;
        return;
    }

}

//: - (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
- (void)onBatchMarkMessagesReadInSessions:(NSArray<NIMSession *> *)sessions
{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self table];
}

//: #pragma mark - NIMMediaManagerDelegate
#pragma mark - NIMMediaManagerDelegate
//: - (void)recordAudio:(NSString *)filePath didBeganWithError:(NSError *)error {
- (void)recordAudio:(NSString *)filePath didBeganWithError:(NSError *)error {
    //: if (!filePath || error) {
    if (!filePath || error) {
        //: _sessionInputView.recording = NO;
        _sessionInputView.recording = NO;
        //: [self onRecordFailed:error];
        [self styleItem:error];
    }
}

//: - (UIView *)photopicview
- (UIView *)photopicview
{
    //: if (!_photopicview) {
    if (!_photopicview) {
        //: _photopicview = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-240)/2, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-78-60, 240, 78)];
        _photopicview = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-240)/2, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-78-60, 240, 78)];
        //: _photopicview.backgroundColor = [UIColor whiteColor];
        _photopicview.backgroundColor = [UIColor whiteColor];
        //: _photopicview.layer.cornerRadius = 12;
        _photopicview.layer.cornerRadius = 12;
        //: _photopicview.layer.masksToBounds = YES;
        _photopicview.layer.masksToBounds = YES;
        //: _photopicview.hidden = YES;
        _photopicview.hidden = YES;

        //: UIButton *btnAlbum = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *btnAlbum = [UIButton buttonWithType:UIButtonTypeCustom];
        //: btnAlbum.frame = CGRectMake(0, 0, 120, 78);
        btnAlbum.frame = CGRectMake(0, 0, 120, 78);
//        btnAlbum.backgroundColor = ThemeColor;
        //: [btnAlbum setImage:[UIImage imageNamed:@"icon_toolview_album"] forState:UIControlStateNormal];
        [btnAlbum setImage:[UIImage imageNamed:[[DeployCommandData sharedInstance] kTextBanValue]] forState:UIControlStateNormal];
//        btnAlbum.layer.cornerRadius = 20;
        //: [btnAlbum addTarget:self action:@selector(handleAlbumBtn) forControlEvents:UIControlEventTouchUpInside];
        [btnAlbum addTarget:self action:@selector(userKey) forControlEvents:UIControlEventTouchUpInside];
        //: btnAlbum.titleLabel.font = [UIFont systemFontOfSize:14];
        btnAlbum.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [btnAlbum setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btnAlbum setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //: [btnAlbum setTitle:[FFFLanguageManager getTextWithKey:@"message_send_album"] forState:UIControlStateNormal];
        [btnAlbum setTitle:[MakeManager cell:[[DeployCommandData sharedInstance] kName_stepValue]] forState:UIControlStateNormal];
        //: [btnAlbum layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
        [btnAlbum byViewSpace:(MKButtonEdgeInsetsStyleTop) toolCell:10];
        //: [_photopicview addSubview:btnAlbum];
        [_photopicview addSubview:btnAlbum];

        //: UIButton *btnShot = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *btnShot = [UIButton buttonWithType:UIButtonTypeCustom];
        //: btnShot.frame = CGRectMake(120, 0, 120, 78);
        btnShot.frame = CGRectMake(120, 0, 120, 78);
//        btnShot.backgroundColor = ThemeColor;
        //: [btnShot setImage:[UIImage imageNamed:@"icon_toolview_camera"] forState:UIControlStateNormal];
        [btnShot setImage:[UIImage imageNamed:[[DeployCommandData sharedInstance] kName_incomeString]] forState:UIControlStateNormal];
//        btnShot.layer.cornerRadius = 20;
        //: [btnShot addTarget:self action:@selector(handleShotBtn) forControlEvents:UIControlEventTouchUpInside];
        [btnShot addTarget:self action:@selector(onHeight) forControlEvents:UIControlEventTouchUpInside];
        //: btnShot.titleLabel.font = [UIFont systemFontOfSize:14];
        btnShot.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [btnShot setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [btnShot setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        //: [btnShot setTitle:[FFFLanguageManager getTextWithKey:@"message_send_camera"] forState:UIControlStateNormal];
        [btnShot setTitle:[MakeManager cell:[[DeployCommandData sharedInstance] kText_butFlyingName]] forState:UIControlStateNormal];
        //: [btnShot layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
        [btnShot byViewSpace:(MKButtonEdgeInsetsStyleTop) toolCell:10];
        //: [_photopicview addSubview:btnShot];
        [_photopicview addSubview:btnShot];
    }
    //: return _photopicview;
    return _photopicview;
}

//: #pragma mark - 录音相关接口
#pragma mark - 录音相关接口
//: - (void)onRecordFailed:(NSError *)error{}
- (void)styleItem:(NSError *)error{}


//: - (void)deleteMsg:(id)sender
- (void)tapClose:(id)sender
{
    //: NIMMessage *message = [self messageForMenu];
    NIMMessage *message = [self messageForMenu];
    //: [self uiDeleteMessage:message];
    [self keep:message];
    //: [self.conversationManager deleteMessage:message];
    [self.colorButton deleteMessage:message];
}

//: - (void)recordAudioDidCancelled {
- (void)recordAudioDidCancelled {
    //: _sessionInputView.recording = NO;
    _sessionInputView.recording = NO;
}

//: #pragma mark - FFFSessionConfiguratorDelegate
#pragma mark - FFFSessionConfiguratorDelegate

//: - (void)didFetchMessageData
- (void)oldWith
{
//    [self uiCheckReceipts:nil];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
//    [self.tableView nim_scrollToBottom:NO];
}


//: - (void)onCancelRecording
- (void)magnitudePress
{
    //: [[NIMSDK sharedSDK].mediaManager cancelRecord];
    [[NIMSDK sharedSDK].mediaManager cancelRecord];
}

//: #pragma mark NIMChatExtendManagerDelegate
#pragma mark NIMChatExtendManagerDelegate

//: - (void)onRecvQuickComment:(NIMQuickComment *)comment
- (void)onRecvQuickComment:(NIMQuickComment *)comment
{
    //: [self.interactor updateMessage:comment.message];
    [self.interactor valueInfo:comment.message];
}

//: - (void)setInputViewPlaceholder:(BOOL)ban {
- (void)setSetWithPlaceholder:(BOOL)ban {
    //: if (ban){
    if (ban){
        //: [self.sessionInputView setInputTextPlaceHolder:[FFFLanguageManager getTextWithKey:@"message_administrator_speak"] color:[UIColor redColor]];
        [self.sessionInputView soap:[MakeManager cell:[[DeployCommandData sharedInstance] kTitle_packText]] titleDisableBefore:[UIColor redColor]];
        //: self.sessionInputView.userInteractionEnabled = NO;
        self.sessionInputView.userInteractionEnabled = NO;
        //: self.canTapVoiceBtn = NO;
        self.canTapVoiceBtn = NO;
    //: } else {
    } else {
        //: [self.sessionInputView setInputTextPlaceHolder:[FFFLanguageManager getTextWithKey:@"message_please_enter_content"] color:[UIColor grayColor]];
        [self.sessionInputView soap:[MakeManager cell:[[DeployCommandData sharedInstance] kName_editorValue]] titleDisableBefore:[UIColor grayColor]];
        //: self.sessionInputView.userInteractionEnabled = YES;
        self.sessionInputView.userInteractionEnabled = YES;
        //: self.canTapVoiceBtn = YES;
        self.canTapVoiceBtn = YES;
    }
}

//: - (void)onNotifyAddMessagePin:(NIMMessagePinItem *)item
- (void)onNotifyAddMessagePin:(NIMMessagePinItem *)item
{
    //: NIMMessage *message = [NIMSDK.sharedSDK.conversationManager messagesInSession:self.session messageIds:@[item.messageId]].lastObject;
    NIMMessage *message = [NIMSDK.sharedSDK.conversationManager messagesInSession:self.session messageIds:@[item.messageId]].lastObject;
    //: [self uiPinMessage:message];
    [self lineUser:message];
}
//: - (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
- (void)didRemoveRecentSession:(NIMRecentSession *)recentSession totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self table];
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
}

//: - (void)viewDidDisappear:(BOOL)animated
- (void)viewDidDisappear:(BOOL)animated
{
    //: [super viewDidDisappear:animated];
    [super viewDidDisappear:animated];
    //: [self.interactor onViewDidDisappear];
    [self.interactor bubble];
    //: [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
    [[NIMSDK sharedSDK].mediaManager removeDelegate:self];
}
//: - (BOOL)canPerformAction:(SEL)action withSender:(id)sender
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
    //: NSArray *items = [[UIMenuController sharedMenuController] menuItems];
    NSArray *items = [[UIMenuController sharedMenuController] menuItems];
    //: for (UIMenuItem *item in items) {
    for (UIMenuItem *item in items) {
        //: if (action == [item action]){
        if (action == [item action]){
            //: return YES;
            return YES;
        }
    }
    //: return NO;
    return NO;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor colorWithHexString:@"F6F7FA"];
    self.view.backgroundColor = [UIColor cell:[[DeployCommandData sharedInstance] kTitleStopFinValue]];
//        UIImageView *bg = [[UIImageView alloc]initWithFrame:self.view.bounds];
//        bg.image = [UIImage imageNamed:@"chating_bg"];
//        [self.view addSubview:bg];

    //: UIView *bottomview = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width, (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))];
    UIView *bottomview = [[UIView alloc]initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom), [[UIScreen mainScreen] bounds].size.width, (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))];
    //: bottomview.backgroundColor = [UIColor whiteColor];
    bottomview.backgroundColor = [UIColor whiteColor];
    //: [self.view addSubview:bottomview];
    [self.view addSubview:bottomview];

    //消息 tableView
    //: [self setupTableView];
    [self by];
    //导航栏
    //: [self setupNav];
    [self thanPicture];

    //输入框 inputView
    //: [self setupInputView];
    [self pastOrigin];
    //会话相关逻辑配置器安装
    //: [self setupConfigurator];
    [self politicalSphere];
    //进入会话时，标记所有消息已读，并发送已读回执
    //: [self markRead];
    [self take];
    //更新已读位置


//    [self.view addSubview:self.btnAudio];


     //: dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
     dispatch_after(dispatch_time((0ull), (int64_t)(0.3 * 1000000000ull)), dispatch_get_main_queue(), ^{
         //: [self setBanned];
         [self targetBubble];
     //: });
     });

//    [[NIMSDK sharedSDK].conversationManager addDelegate:self];

    // 执行设置回调监听
//    [NERtcCallKit.sharedInstance addDelegate:self];
 }
//发送进度
//: -(void)sendMessage:(NIMMessage *)message progress:(float)progress
-(void)sendMessage:(NIMMessage *)message progress:(float)progress
{
    //: if ([message.session isEqual:_session]) {
    if ([message.session isEqual:_session]) {
        //: [self.interactor updateMessage:message];
        [self.interactor valueInfo:message];
    }
}

//: - (void)onTextChanged:(id)sender{}
- (void)oning:(id)sender{}

//: - (UIButton *)btnAudio
- (UIButton *)btnAudio
{
    //: if (!_btnAudio) {
    if (!_btnAudio) {
        //: _btnAudio = [UIButton buttonWithType:UIButtonTypeCustom];
        _btnAudio = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _btnAudio.frame = CGRectMake(12, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice vg_statusBarHeight]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-40, 40, 40);
        _btnAudio.frame = CGRectMake(12, ([[UIScreen mainScreen] bounds].size.height - (44.0f + [UIDevice comeDownSuperphylum]) - (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-40, 40, 40);
        //: _btnAudio.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _btnAudio.backgroundColor = [UIColor cell:[[DeployCommandData sharedInstance] kNameViolationImageData]];
        //: [_btnAudio setImage:[UIImage imageNamed:@"icon_toolview_voice_normal"] forState:UIControlStateNormal];
        [_btnAudio setImage:[UIImage imageNamed:[[DeployCommandData sharedInstance] kTitleLamData]] forState:UIControlStateNormal];
        //: _btnAudio.layer.cornerRadius = 20;
        _btnAudio.layer.cornerRadius = 20;
        //: [_btnAudio addTarget:self action:@selector(handleAudioBtn) forControlEvents:UIControlEventTouchUpInside];
        [_btnAudio addTarget:self action:@selector(barButton) forControlEvents:UIControlEventTouchUpInside];

    }
    //: return _btnAudio;
    return _btnAudio;
}

//: - (void)onTapMediaItemShoot:(FFFMediaItem *)item
- (void)button:(CommingleItem *)item
{
    //: [self.interactor mediaShootPressed];
    [self.interactor beforeWhen];
}

//当前录音格式 : NIMSDK 支持 aac 和 amr 两种格式
//: - (NIMAudioType)recordAudioType
- (NIMAudioType)sub
{
    //: NIMAudioType type = NIMAudioTypeAAC;
    NIMAudioType type = NIMAudioTypeAAC;
    //: if ([self.sessionConfig respondsToSelector:@selector(recordType)]) {
    if ([self.messageBar respondsToSelector:@selector(beSecond)]) {
        //: type = [self.sessionConfig recordType];
        type = [self.messageBar beSecond];
    }
    //: return type;
    return type;
}

//: - (void)viewWillAppear:(BOOL)animated
- (void)viewWillAppear:(BOOL)animated
{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: [self.interactor onViewWillAppear];
    [self.interactor userAppear];
    //: [self addListener];
    [self add];

    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self table];
    //: [self.navigationController.navigationBar setHidden:YES];
    [self.navigationController.navigationBar setHidden:YES];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}


//: - (void)dealloc
- (void)dealloc
{
    //: [self removeListener];
    [self tingWith];

    //: _tableView.delegate = nil;
    _tableView.delegate = nil;
    //: _tableView.dataSource = nil;
    _tableView.dataSource = nil;
}

//: - (FFFInputAudioView *)audioContent
- (AudioView *)audioContent
{
    //: if(!_audioContent){
    if(!_audioContent){
        //: _audioContent = [[FFFInputAudioView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _audioContent = [[AudioView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
//        _audioContent.hidden = YES;
    }
    //: return _audioContent;
    return _audioContent;
}

//: - (NSArray *)menusItems:(NIMMessage *)message {
- (NSArray *)tap:(NIMMessage *)message {
    //: return nil;
    return nil;
}

//: #pragma mark - NIMInputDelegate
#pragma mark - PathFlip

//: - (void)didChangeInputHeight:(CGFloat)inputHeight
- (void)shoulded:(CGFloat)inputHeight
{
    //: [self.interactor changeLayout:inputHeight];
    [self.interactor option:inputHeight];

//    self.btnAudio.bottom = self.sessionInputView.top-20;
}

//: - (void)recordAudioProgress:(NSTimeInterval)currentTime {
- (void)recordAudioProgress:(NSTimeInterval)currentTime {
    //: [_sessionInputView updateAudioRecordTime:currentTime];
    [_sessionInputView voice:currentTime];
}


//- (void)onTapAlbunArray:(NSArray<PHAsset *> *)assets
//: - (void)CustomPickerDidSelectAssets:(NSArray<PHAsset *> *)assets
- (void)customing:(NSArray<PHAsset *> *)assets
{
    //: NSLog(@"assets:%@",assets);

    //: for (PHAsset *asset in assets) {
    for (PHAsset *asset in assets) {
        //: if (asset.mediaType == PHAssetMediaTypeVideo) {
        if (asset.mediaType == PHAssetMediaTypeVideo) {

            // 获取视频路径
            //: [self getVideoPathFromPHAsset:asset completion:^(NSString *path) {
            [self magnitude:asset dateCompletion:^(NSString *path) {
                //: if (path) {
                if (path) {
                    //: NSLog(@"视频路径: %@", path);
                    // 使用路径...
                    //: NIMMessage *message = [FFFMessageMaker msgWithVideo:path];
                    NIMMessage *message = [ShouldMaker line:path];
                    //: [self sendMessage:message];
                    [self user:message];
                //: } else {
                } else {
                    //: NSLog(@"获取视频路径失败");
                }
            //: }];
            }];

        //: }else{
        }else{




            //: [self getOriginalImageFromAsset:asset completion:^(UIImage *image) {
            [self my:asset with:^(UIImage *image) {
                //: if (image) {
                if (image) {
                    //: NIMMessage *message = [FFFMessageMaker msgWithImage:image];
                    NIMMessage *message = [ShouldMaker select:image];

                    //: NSMutableDictionary *dic = [[FFFConfig sharedConfig] Gdic];
                    NSMutableDictionary *dic = [[ContextTeam mutual] Gdic];
                    //: NSData *imageData = UIImagePNGRepresentation(image);
                    NSData *imageData = UIImagePNGRepresentation(image);
                    //: [dic setObject:imageData forKey:message.messageId];
                    [dic setObject:imageData forKey:message.messageId];

                    //: [self sendMessage:message];
                    [self user:message];

                //: } else {
                } else {
                    //: NSLog(@"获取图片路径失败");
                }
            //: }];
            }];

//            // 获取图片路径
//            [self getImagePathFromPHAsset:asset completion:^(NSString *path) {
//                if (path) {
//                    NSLog(@"图片路径: %@", path);
//                    // 使用路径...
//                    NIMMessage *message = [ShouldMaker msgWithImagePath:path];
//                    [self sendMessage:message];
//                } else {
//                    NSLog(@"获取图片路径失败");
//                }
//            }];


        }
    }

}

//: - (void)onClickEmoticon:(NIMMessage *)message
- (void)infoSelected:(NIMMessage *)message
                //: comment:(NIMQuickComment *)comment
                device:(NIMQuickComment *)comment
               //: selected:(BOOL)isSelected
               viewQueryed:(BOOL)isSelected
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: if (isSelected)
    if (isSelected)
    {
        //: [self.interactor delQuickComment:comment
        [self.interactor fastPress:comment
                           //: targetMessage:message
                           speedy:message
                              //: completion:^(NSError *error)
                              instance:^(NSError *error)
         {
//            [self.view hideToasts];
            //: if (!error)
            if (!error)
            {
                //: return;
                return;
            }
            //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
            [weakSelf.view makeToast:[MakeManager cell:[[DeployCommandData sharedInstance] kNameServingString]] duration:2 position:CSToastPositionCenter];
        //: }];
        }];
    }
    //: else
    else
    {
        //: NIMQuickComment *aComment = [comment copy];
        NIMQuickComment *aComment = [comment copy];
        //: [self.interactor addQuickComment:aComment
        [self.interactor pressDownEnable:aComment
                               //: toMessage:message
                               my:message
                              //: completion:^(NSError *error)
                              outInfo:^(NSError *error)
         {
//            [self.view hideToasts];
            //: if (!error)
            if (!error)
            {
                //: return;
                return;
            }
            //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
            [weakSelf.view makeToast:[MakeManager cell:[[DeployCommandData sharedInstance] kNameServingString]] duration:2 position:CSToastPositionCenter];
        //: }];
        }];
    }

}

//: - (void)onTapMediaItemLocation:(FFFMediaItem *)item
- (void)appearance:(CommingleItem *)item
{
//    [self.interactor mediaLocationPressed];
    //: [self.view addSubview:self.audioContent];
    [self.view addSubview:self.audioContent];
    //: self.audioContent.actionDelegate = self;
    self.audioContent.actionDelegate = self;
    //: [self.audioContent animationShow];
    [self.audioContent keep];

}

//: - (void)setSessionState:(NIMKitSessionState)state {
- (void)setBackgroundDoing:(NIMKitSessionState)state {
    //: [self.interactor setSessionState:state];
    [self.interactor setMark:state];
}

//- (void)onInvited:(NSString *)invitor
//          userIDs:(NSArray<NSString *> *)userIDs
//      isFromGroup:(BOOL)isFromGroup
//          groupID:(nullable NSString *)groupID
//             type:(NERtcCallType)type
//       attachment:(nullable NSString *)attachment
//{
//    ZMONVideoCallViewController *vc = [[ZMONVideoCallViewController alloc] init];
//    vc.isInvait = YES;
//    vc.userId = invitor;
//    vc.roomId = self.session.sessionId;
//    [self.navigationController pushViewController:vc animated:YES];
//}

 //: - (void)setBanned {
 - (void)targetBubble {
     //: NIMSessionType type = self.session.sessionType;
     NIMSessionType type = self.session.sessionType;
     //: switch (type) {
     switch (type) {
         //: case NIMSessionTypeTeam:{
         case NIMSessionTypeTeam:{
             //: NIMTeam *team = [[[NIMSDK sharedSDK] teamManager] teamById:self.session.sessionId];
             NIMTeam *team = [[[NIMSDK sharedSDK] teamManager] teamById:self.session.sessionId];
             //: if (team.inAllMuteMode) {
             if (team.inAllMuteMode) {
                 //: if (team.allMuteMode == NIMTeamAllMuteModeMuteNormal || team.allMuteMode == NIMTeamAllMuteModeMuteAll) {
                 if (team.allMuteMode == NIMTeamAllMuteModeMuteNormal || team.allMuteMode == NIMTeamAllMuteModeMuteAll) {
                     //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
                     NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
                     //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
                     NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
                     //: if (member.isMuted) {
                     if (member.isMuted) {
                         //: [self setInputViewPlaceholder:YES];
                         [self setSetWithPlaceholder:YES];
                     }
                 }
             }
         }
             //: break;
             break;

             //: break;
             break;
         //: case NIMSessionTypeSuperTeam: {
         case NIMSessionTypeSuperTeam: {
             //: NIMTeam *team = [[[NIMSDK sharedSDK] superTeamManager] teamById:self.session.sessionId];
             NIMTeam *team = [[[NIMSDK sharedSDK] superTeamManager] teamById:self.session.sessionId];
             //: if (team.inAllMuteMode) {
             if (team.inAllMuteMode) {
                 //: if (team.allMuteMode == NIMTeamAllMuteModeMuteNormal || team.allMuteMode == NIMTeamAllMuteModeMuteAll) {
                 if (team.allMuteMode == NIMTeamAllMuteModeMuteNormal || team.allMuteMode == NIMTeamAllMuteModeMuteAll) {
                     //: NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
                     NSString *userID = [NIMSDK sharedSDK].loginManager.currentAccount;
                     //: NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
                     NIMTeamMember *member = [[NIMSDK sharedSDK].teamManager teamMember:userID inTeam:self.session.sessionId];
                     //: if (member.isMuted) {
                     if (member.isMuted) {
                         //: [self setInputViewPlaceholder:YES];
                         [self setSetWithPlaceholder:YES];
                     }
                 }
             }
         }
         //: default:
         default:
             //: break;
             break;
     }
 }

//: #pragma mark - NIMConversationManagerDelegate
#pragma mark - NIMConversationManagerDelegate
//- (void)messagesDeletedInSession:(NIMSession *)session{
//    [self.interactor resetMessages:nil];
//    [self.tableView reloadData];
//}

// 远端消息清空回调
//: - (void)onRecvAllRemoteMessagesInSessionDeleted:(NIMSessionDeleteAllRemoteMessagesInfo *)info
- (void)onRecvAllRemoteMessagesInSessionDeleted:(NIMSessionDeleteAllRemoteMessagesInfo *)info
{
    //: [self refreshMessages];
    [self commentMessages];
}

//: - (void)recordAudio:(NSString *)filePath didCompletedWithError:(NSError *)error {
- (void)recordAudio:(NSString *)filePath didCompletedWithError:(NSError *)error {
    //: if(!error) {
    if(!error) {
        //: if ([self recordFileCanBeSend:filePath]) {
        if ([self telephoneMessage:filePath]) {
            //: [self sendMessage:[FFFMessageMaker msgWithAudio:filePath]];
            [self user:[ShouldMaker data:filePath]];
        //: }else{
        }else{
            //: [self showRecordFileNotSendReason];
            [self with];
        }
    //: } else {
    } else {
        //: [self onRecordFailed:error];
        [self styleItem:error];
    }
    //: _sessionInputView.recording = NO;
    _sessionInputView.recording = NO;
}

// 实现UIGestureRecognizerDelegate方法
//: - (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
    // 获取触摸点位置
    //: CGPoint touchPoint = [touch locationInView:self.customAlbumView];
    CGPoint touchPoint = [touch locationInView:self.customAlbumView];

    // 检查触摸点是否在子视图上
    //: for (UIView *subview in self.customAlbumView.subviews) {
    for (UIView *subview in self.customAlbumView.subviews) {
        //: if (CGRectContainsPoint(subview.frame, touchPoint) && subview.userInteractionEnabled) {
        if (CGRectContainsPoint(subview.frame, touchPoint) && subview.userInteractionEnabled) {
            //: return NO; 
            return NO; // 如果触摸点在子视图上，父视图手势不响应
        }
    }

    //: return YES; 
    return YES; // 其他区域父视图手势响应
}


//发送结果
//: - (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)sendMessage:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if ([message.session isEqual:_session])
    if ([message.session isEqual:_session])
    {
        //: if( message.messageType == NIMMessageTypeImage){
        if( message.messageType == NIMMessageTypeImage){
            //缓存图片URL
            //: NIMImageObject *imageObject = message.messageObject;
            NIMImageObject *imageObject = message.messageObject;
            //: NSString *urlString = imageObject.url;
            NSString *urlString = imageObject.url;

            //: NSMutableDictionary *dic = [[FFFConfig sharedConfig] Gdic];
            NSMutableDictionary *dic = [[ContextTeam mutual] Gdic];
            //: NSData *data = [dic objectForKey:message.messageId];
            NSData *data = [dic objectForKey:message.messageId];
            //: if(data && urlString){
            if(data && urlString){
                //: NSString *key = [[SDWebImageManager sharedManager]cacheKeyForURL:[NSURL URLWithString:urlString]];
                NSString *key = [[SDWebImageManager sharedManager]cacheKeyForURL:[NSURL URLWithString:urlString]];
                //: dic[message.messageId] = nil;
                dic[message.messageId] = nil;
                //: __weak typeof(self) weakSelf = self;
                __weak typeof(self) weakSelf = self;
                //: [[SDImageCache sharedImageCache] storeImageData:data forKey:key completion:^{
                [[SDImageCache sharedImageCache] storeImageData:data forKey:key completion:^{
                    //: [weakSelf.interactor updateMessage:message];
                    [weakSelf.interactor valueInfo:message];
                //: }];
                }];
            }
        //: }else{
        }else{
            //: [self.interactor updateMessage:message];
            [self.interactor valueInfo:message];
//            [self.tableView reloadData];
        }


        //: if (message.session.sessionType == NIMSessionTypeTeam ||
        if (message.session.sessionType == NIMSessionTypeTeam ||
            //: message.session.sessionType == NIMSessionTypeSuperTeam)
            message.session.sessionType == NIMSessionTypeSuperTeam)
        {
            //如果是群的话需要检查一下回执显示情况
            //: NIMMessageReceipt *receipt = [[NIMMessageReceipt alloc] initWithMessage:message];
            NIMMessageReceipt *receipt = [[NIMMessageReceipt alloc] initWithMessage:message];
            //: [self.interactor checkReceipts:@[receipt]];
            [self.interactor view:@[receipt]];
        }
    }

}

//: - (void)refreshSessionBadge
- (void)table
{

    //: if(self.sessionUnreadCount>0){
    if(self.sessionUnreadCount>0){
        //: _badgeView.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
        _badgeView.badgeValue = self.sessionUnreadCount ? @(self.sessionUnreadCount).stringValue : nil;
        //: _badgeView.hidden = NO;
        _badgeView.hidden = NO;
//        _labtitle.frame = CGRectMake(_badgeView.right+10, SCREEN_STATUS_HEIGHT, 100, 40);
    }
    //: else{
    else{
        //: _badgeView.hidden = YES;
        _badgeView.hidden = YES;
//        _labtitle.frame = CGRectMake(65, SCREEN_STATUS_HEIGHT, 200, 40);
    }
}

//: - (NSArray *)genMediaButtonsWithMessage:(NIMMessage *)message {
- (NSArray *)hide:(NIMMessage *)message {

    //: NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];

    //: NSArray *items;
    NSArray *items;
    //: if (!self.sessionConfig)
    if (!self.messageBar)
    {
        //: items = [[MyUserKit sharedKit].config defaultMenuItemsWithMessage:message];
        items = [[Mortification text].config valueDown:message];
    }
    //: else if([self.sessionConfig respondsToSelector:@selector(menuItemsWithMessage:)])
    else if([self.messageBar respondsToSelector:@selector(inputsed:)])
    {
        //: items = [self.sessionConfig menuItemsWithMessage:message];
        items = [self.messageBar inputsed:message];
    }

    //: [items enumerateObjectsUsingBlock:^(FFFMediaItem *item, NSUInteger idx, BOOL *stop) {
    [items enumerateObjectsUsingBlock:^(CommingleItem *item, NSUInteger idx, BOOL *stop) {

        //: FFFBubbleButtonModel *model = [[FFFBubbleButtonModel alloc] init];
        MessageTeam *model = [[MessageTeam alloc] init];
        //: model.normalImage = item.normalImage;
        model.normalImage = item.normalImage;
        //: model.name = item.title;
        model.name = item.title;
        //: model.item = item;
        model.item = item;

        //: [selectedAllRangeButtons addObject:model];
        [selectedAllRangeButtons addObject:model];

    //: }];
    }];

    //: return selectedAllRangeButtons;
    return selectedAllRangeButtons;
}

//: - (void)showMenuWithMessage:(NIMMessage *)message withView:(UIView *)view {
- (void)withColor:(NIMMessage *)message cleanTo:(UIView *)view {

    //: [[FFFBubbleMenuView shareMenuView] removeFromSuperview];
    [[ResultCuttingEdgeView namePrixFixe] removeFromSuperview];

    //: NSArray *btns = [self genMediaButtonsWithMessage:message];
    NSArray *btns = [self hide:message];

    //: if (btns.count > 0) {
    if (btns.count > 0) {

        //: CGRect tempRect = [view convertRect:view.bounds toView:self.view];
        CGRect tempRect = [view convertRect:view.bounds toView:self.view];
        //: CGRect cursorStartRectToWindow = [view convertRect:view.bounds toView:self.view];
        CGRect cursorStartRectToWindow = [view convertRect:view.bounds toView:self.view];

        @
         //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
         autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                      ;
        //: [[FFFBubbleMenuView shareMenuView] showViewWithButtonModels:btns cursorStartRect:cursorStartRectToWindow selectionTextRectInWindow:tempRect selectBlock:^(FFFMediaItem *item) {
        [[ResultCuttingEdgeView namePrixFixe] panoramicView:btns emotion:cursorStartRectToWindow timeBy:tempRect past:^(CommingleItem *item) {
            @
             //: try{} @finally{} __typeof__(self) self = __weak_self__;
             try{} @finally{} __typeof__(self) self = __weak_self__;
                            ;
            //: [self onTapMediaItem:item];
            [self messageTable:item];

            //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
            [ResultCuttingEdgeView.namePrixFixe removeFromSuperview];
        //: }praiseBlock:^(NSInteger tag) {
        }addTogether:^(NSInteger tag) {
            //: [self praiseViewdidSelectIndex:tag];
            [self withCustom:tag];
        //: }];
        }];
    }

}



//: - (void)uiCheckReceipts:(NSArray<NIMMessageReceipt *> *)receipts
- (void)ting:(NSArray<NIMMessageReceipt *> *)receipts
{
    //: [self.interactor checkReceipts:receipts];
    [self.interactor view:receipts];
}


//: - (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
- (void)didUpdateRecentSession:(NIMRecentSession *)recentSession
              //: totalUnreadCount:(NSInteger)totalUnreadCount{
              totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self table];
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];

}

//: - (void)gotoBack:(id)sender {
- (void)frameworking:(id)sender {
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}


//: - (void)handleAudioBtn
- (void)barButton
{
//    [self.sessionInputView refreshStatus:NIMInputStatusText];
    //: self.sessionInputView.toolBar.showsKeyboard = NO;
    self.sessionInputView.toolBar.showsKeyboard = NO;

    //: [self.view addSubview:self.audioContent];
    [self.view addSubview:self.audioContent];
    //: self.audioContent.actionDelegate = self;
    self.audioContent.actionDelegate = self;
    //: [self.audioContent animationShow];
    [self.audioContent keep];
}

//: - (void)onTapAlbunBtn:(id)sender
- (void)alonged:(id)sender
{
//    [self.interactor mediaPicturePressed];

//    [self.view addSubview:self.photopicview];
//    self.photopicview.hidden = NO;
}

//: - (BOOL)recordFileCanBeSend:(NSString *)filepath
- (BOOL)telephoneMessage:(NSString *)filepath
{
    //: return YES;
    return YES;
}


//: - (void)allMessagesDeleted{
- (void)allMessagesDeleted{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self table];
}

//: - (void)scrollViewDidScroll:(UIScrollView *)scrollView {
- (void)location:(UIScrollView *)scrollView {
    //: if ([scrollView isKindOfClass:[UITextView class]]) {
    if ([scrollView isKindOfClass:[UITextView class]]) {
        //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
        [ResultCuttingEdgeView.namePrixFixe removeFromSuperview];
    }
    //: [self.view endEditing:YES];
    [self.view endEditing:YES];
}

//: - (NSString *)sessionSubTitle{return @"";};
- (NSString *)rangeScale{return @"";}

//: #pragma mark - 标记已读
#pragma mark - 标记已读
//: - (void)markRead
- (void)take
{
    //: [self.interactor markRead:YES];
    [self.interactor block:YES];
}

//: - (void)onRecvMessageReceipts:(NSArray<NIMMessageReceipt *> *)receipts
- (void)onRecvMessageReceipts:(NSArray<NIMMessageReceipt *> *)receipts
{
    //: if ([self shouldAddListenerForNewMsg])
    if ([self to])
    {
        //: NSMutableArray *handledReceipts = [[NSMutableArray alloc] init];
        NSMutableArray *handledReceipts = [[NSMutableArray alloc] init];
        //: for (NIMMessageReceipt *receipt in receipts) {
        for (NIMMessageReceipt *receipt in receipts) {
            //: if ([receipt.session isEqual:self.session])
            if ([receipt.session isEqual:self.session])
            {
                //: [handledReceipts addObject:receipt];
                [handledReceipts addObject:receipt];
            }
        }
        //: if (handledReceipts.count)
        if (handledReceipts.count)
        {
            //: [self uiCheckReceipts:handledReceipts];
            [self ting:handledReceipts];
        }
    }
}

//: - (void)setupInputView
- (void)pastOrigin
{
    //: if ([self shouldShowInputView])
    if ([self find])
    {
        //: self.sessionInputView = [[FFFInputView alloc] initWithFrame:CGRectMake(0, 0, self.view.device_width,0) config:self.sessionConfig];
        self.sessionInputView = [[ContextInputView alloc] initWithTing:CGRectMake(0, 0, self.view.device_width,0) play:self.messageBar];
        //: self.sessionInputView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
        self.sessionInputView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleTopMargin;
        //: [self.sessionInputView setSession:self.session];
        [self.sessionInputView setSession:self.session];
        //: [self.sessionInputView setInputDelegate:self];
        [self.sessionInputView setInputDelegate:self];
        //: [self.sessionInputView setInputActionDelegate:self];
        [self.sessionInputView setValue:self];
        //: [self.sessionInputView refreshStatus:NIMInputStatusText];
        [self.sessionInputView canStatus:NIMInputStatusText];
        //: [self.view addSubview:_sessionInputView];
        [self.view addSubview:_sessionInputView];
        //: self.tableView.bottom = self.sessionInputView.top;
        self.tableView.bottom = self.sessionInputView.top;
//        self.tableView.top = self.topview.bottom;
        //: [self.tableView sizeToFit];
        [self.tableView sizeToFit];
    }
}

//: - (void)uiUpdateMessage:(NIMMessage *)message{
- (void)cypherTime:(NIMMessage *)message{
    //: [self.interactor updateMessage:message];
    [self.interactor valueInfo:message];
}

//: - (void)uiInsertMessages:(NSArray *)messages
- (void)recordCountroduceText:(NSArray *)messages
{
    //: [self.interactor insertMessages:messages];
    [self.interactor managerMessages:messages];
}

//: - (void)uiPinMessage:(NIMMessage *)message
- (void)lineUser:(NIMMessage *)message
{
    //: [self.interactor addPinForMessage:message];
    [self.interactor pictureMessage:message];
}

//: - (void)viewWillDisappear:(BOOL)animated
- (void)viewWillDisappear:(BOOL)animated
{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: [self.sessionInputView endEditing:YES];
    [self.sessionInputView endEditing:YES];
    // 隐藏长按弹窗
    //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
    [ResultCuttingEdgeView.namePrixFixe removeFromSuperview];
    //: [self.navigationController.navigationBar setHidden:NO];
    [self.navigationController.navigationBar setHidden:NO];
}

//: #pragma mark - FFFMessageCellDelegate
#pragma mark - CompartmentPath
//: - (BOOL)onTapCell:(FFFKitEvent *)event{
- (BOOL)cutOptionExtend:(ToiletKitSession *)event{
    //: BOOL handle = NO;
    BOOL handle = NO;
    //: NSString *eventName = event.eventName;
    NSString *eventName = event.eventName;
    //: if ([eventName isEqualToString:FFFKitEventNameTapAudio])
    if ([eventName isEqualToString:app_successDoingceMsg])
    {
        //: [self.interactor mediaAudioPressed:event.messageModel];
        [self.interactor record:event.messageModel];
        //: handle = YES;
        handle = YES;
    }
    //: return handle;
    return handle;
}

//上传资源文件成功
//: - (void)uploadAttachmentSuccess:(NSString *)urlString
- (void)uploadAttachmentSuccess:(NSString *)urlString
                     //: forMessage:(NIMMessage *)message
                     forMessage:(NIMMessage *)message
{
    //如果需要使用富文本推送，可以在这里进行 message apns payload 的设置
//    [self.tableView reloadData];
}

//: - (void)messagesDeletedInSession:(NIMSession *)session{
- (void)messagesDeletedInSession:(NIMSession *)session{
    //: self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    self.sessionUnreadCount = [NIMSDK sharedSDK].conversationManager.allUnreadCount;
    //: [self refreshSessionBadge];
    [self table];
    //: [self.interactor resetMessages:nil];
    [self.interactor cellMessages:nil];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//获取当前最上层的控制器
//: - (UIViewController *)getTopMostController {
- (UIViewController *)heritage {
    //: UIViewController *topVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    UIViewController *topVC = [UIApplication sharedApplication].windows.firstObject.rootViewController;
    //循环之前tempVC和topVC是一样的
    //: UIViewController *tempVC = topVC;
    UIViewController *tempVC = topVC;
    //: while (1) {
    while (1) {
        //: if ([topVC isKindOfClass:[UITabBarController class]]) {
        if ([topVC isKindOfClass:[UITabBarController class]]) {
            //: topVC = ((UITabBarController*)topVC).selectedViewController;
            topVC = ((UITabBarController*)topVC).selectedViewController;
        }
        //: if ([topVC isKindOfClass:[UINavigationController class]]) {
        if ([topVC isKindOfClass:[UINavigationController class]]) {
            //: topVC = ((UINavigationController*)topVC).visibleViewController;
            topVC = ((UINavigationController*)topVC).visibleViewController;
        }
        //: if (topVC.presentedViewController) {
        if (topVC.presentedViewController) {
            //: topVC = topVC.presentedViewController;
            topVC = topVC.presentedViewController;
        }
        //如果两者一样，说明循环结束了
        //: if ([tempVC isEqual:topVC]) {
        if ([tempVC isEqual:topVC]) {
            //: break;
            break;
        //: } else {
        } else {
        //如果两者不一样，继续循环
            //: tempVC = topVC;
            tempVC = topVC;
        }
    }
    //: return topVC;
    return topVC;
}

//: - (void)onStopRecording
- (void)recordingSession
{
    //: [[NIMSDK sharedSDK].mediaManager stopRecord];
    [[NIMSDK sharedSDK].mediaManager stopRecord];
//    [self.audioContent animationClose];
}

//: - (void)fetchMessageAttachment:(NIMMessage *)message didCompleteWithError:(NSError *)error
- (void)fetchMessageAttachment:(NIMMessage *)message didCompleteWithError:(NSError *)error
{
    //: if ([message.session isEqual:_session])
    if ([message.session isEqual:_session])
    {
        //: FFFMessageModel *model = [self.interactor findMessageModel:message];
        CleanDoing *model = [self.interactor telegram:message];
        //下完缩略图之后，因为比例有变化，重新刷下宽高。
        //: [model cleanCache];
        [model session];
        //: [self.interactor updateMessage:message];
        [self.interactor valueInfo:message];
    }
}
//: - (void)refreshSessionSubTitle:(NSString *)title
- (void)to:(NSString *)title
{
    //: self.subTitleLabel.text = title;
    self.subTitleLabel.text = title;
    //: self.subtitle.text = title;
    self.subtitle.text = title;
    //: if([title isEqualToString:@"离线".user_localized]){
    if([title isEqualToString:@"离线".nominate]){
        //: self.subtitle.textColor = [UIColor colorWithHexString:@"777777"];
        self.subtitle.textColor = [UIColor cell:[[DeployCommandData sharedInstance] kNameGravityData]];
    //: }else{
    }else{
        //: self.subtitle.textColor = [UIColor colorWithHexString:@"#00B01B"];
        self.subtitle.textColor = [UIColor cell:[[DeployCommandData sharedInstance] kNameHandsomeValue]];
    }
    //: [self setUpTitleView];
    [self chronicle];
}

// 获取视频路径
//: - (void)getVideoPathFromPHAsset:(PHAsset *)asset completion:(void (^)(NSString *path))completion {
- (void)magnitude:(PHAsset *)asset dateCompletion:(void (^)(NSString *path))completion {
    //: if (asset.mediaType != PHAssetMediaTypeVideo) {
    if (asset.mediaType != PHAssetMediaTypeVideo) {
        //: if (completion) completion(nil);
        if (completion) completion(nil);
        //: return;
        return;
    }

    //: PHVideoRequestOptions *options = [[PHVideoRequestOptions alloc] init];
    PHVideoRequestOptions *options = [[PHVideoRequestOptions alloc] init];
    //: options.version = PHVideoRequestOptionsVersionOriginal;
    options.version = PHVideoRequestOptionsVersionOriginal;
    //: options.deliveryMode = PHVideoRequestOptionsDeliveryModeAutomatic;
    options.deliveryMode = PHVideoRequestOptionsDeliveryModeAutomatic;
    //: options.networkAccessAllowed = YES;
    options.networkAccessAllowed = YES;

    //: [[PHImageManager defaultManager] requestAVAssetForVideo:asset options:options resultHandler:^(AVAsset * _Nullable avAsset, AVAudioMix * _Nullable audioMix, NSDictionary * _Nullable info) {
    [[PHImageManager defaultManager] requestAVAssetForVideo:asset options:options resultHandler:^(AVAsset * _Nullable avAsset, AVAudioMix * _Nullable audioMix, NSDictionary * _Nullable info) {
        //: if ([avAsset isKindOfClass:[AVURLAsset class]]) {
        if ([avAsset isKindOfClass:[AVURLAsset class]]) {
            //: AVURLAsset *urlAsset = (AVURLAsset *)avAsset;
            AVURLAsset *urlAsset = (AVURLAsset *)avAsset;
            //: NSURL *url = urlAsset.URL;
            NSURL *url = urlAsset.URL;
            //: if (completion) completion(url.path);
            if (completion) completion(url.path);
        //: } else {
        } else {
            // 如果无法直接获取URL，则需要导出到临时文件
            //: [self exportVideoToTempFile:avAsset completion:completion];
            [self enable:avAsset searchedCompletion:completion];
        }
    //: }];
    }];
}
//: #pragma mark - 消息收发接口
#pragma mark - 消息收发接口
//: - (void)sendMessage:(NIMMessage *)message
- (void)user:(NIMMessage *)message
{
    //: [self.interactor sendMessage:message toMessage:nil];
    [self.interactor definiteMessage:message bottom:nil];
    //: dispatch_async(dispatch_get_main_queue(), ^{
    dispatch_async(dispatch_get_main_queue(), ^{
       //: [self cleanMenuMessage];
       [self clean];
    //: });
    });
}

//: - (instancetype)initWithSession:(NIMSession *)session{
- (instancetype)initWithTitleSession:(NIMSession *)session{
    //: self = [super initWithNibName:nil bundle:nil];
    self = [super initWithNibName:nil bundle:nil];
    //: if (self) {
    if (self) {
        //: _session = session;
        _session = session;
    }
    //: return self;
    return self;
}


//: - (BOOL)shouldShowMenuByMessage:(NIMMessage *)message
- (BOOL)container:(NIMMessage *)message
{
    //: if (message.session.sessionType == NIMSessionTypeChatroom ||
    if (message.session.sessionType == NIMSessionTypeChatroom ||
        //: message.messageType == NIMMessageTypeTip ||
        message.messageType == NIMMessageTypeTip ||
        //: message.messageType == NIMMessageTypeNotification)
        message.messageType == NIMMessageTypeNotification)
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//是否需要显示输入框 : 某些场景不需要显示输入框，如使用 3D touch 的场景预览会话界面内容
//: - (BOOL)shouldShowInputView
- (BOOL)find
{
    //: BOOL should = YES;
    BOOL should = YES;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableInputView)]) {
    if ([self.messageBar respondsToSelector:@selector(changeUser)]) {
        //: should = ![self.sessionConfig disableInputView];
        should = ![self.messageBar changeUser];
    }
    //: return should;
    return should;
}

//: - (void)praiseViewdidSelectIndex:(NSInteger)index
- (void)withCustom:(NSInteger)index
{
    //: __block NIMQuickComment *newComment = [NIMCommentMaker commentWithType:index content:@"" ext:@"扩展"];
    __block NIMQuickComment *newComment = [GrowingColor scale:index top:@"" noticeParentName:@"扩展"];

    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self hadCommentThisMessage:self.messageForMenu type:index
    [self information:self.messageForMenu easing:index
                      //: compltion:^(NSMapTable *result)
                      wisecrack:^(NSMapTable *result)
     {
        //: NIMQuickComment *oldComment = [FFFKitQuickCommentUtil myCommentFromComments:0 keys:@[@(index)] comments:result];
        NIMQuickComment *oldComment = [ControlInside pinComments:0 by:@[@(index)] vanguard:result];
        //: BOOL contains = oldComment ? YES : NO;
        BOOL contains = oldComment ? YES : NO;
        //: if (!contains)
        if (!contains)
        {
            //: [weakSelf.interactor addQuickComment:newComment toMessage:self.messageForMenu completion:^(NSError *error)
            [weakSelf.interactor pressDownEnable:newComment my:self.messageForMenu outInfo:^(NSError *error)
            {
//                [self.view hideToasts];
                //: if (error)
                if (error)
                {
                    //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
                    [weakSelf.view makeToast:[MakeManager cell:[[DeployCommandData sharedInstance] kNameServingString]] duration:2 position:CSToastPositionCenter];
                }

                //: [weakSelf cleanMenuMessage];
                [weakSelf clean];
            //: }];
            }];
        }
        //: else
        else
        {
            //: [weakSelf.interactor delQuickComment:oldComment
            [weakSelf.interactor fastPress:oldComment
                                   //: targetMessage:weakSelf.messageForMenu
                                   speedy:weakSelf.messageForMenu
                                      //: completion:^(NSError *error)
                                      instance:^(NSError *error)
            {
//                [self.view hideToasts];
                //: if (error)
                if (error)
                {
                    //: [weakSelf.view makeToast:[FFFLanguageManager getTextWithKey:@"group_info_activity_op_failed"] duration:2 position:CSToastPositionCenter];
                    [weakSelf.view makeToast:[MakeManager cell:[[DeployCommandData sharedInstance] kNameServingString]] duration:2 position:CSToastPositionCenter];
                }

                //: [weakSelf cleanMenuMessage];
                [weakSelf clean];
            //: }];
            }];
        }
    //: }];
    }];
}

//获取图片
//: - (void)getOriginalImageFromAsset:(PHAsset *)asset completion:(void (^)(UIImage *image))completion {
- (void)my:(PHAsset *)asset with:(void (^)(UIImage *image))completion {
    //: PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
    PHImageRequestOptions *options = [[PHImageRequestOptions alloc] init];
    //: options.version = PHImageRequestOptionsVersionOriginal;
    options.version = PHImageRequestOptionsVersionOriginal;
    //: options.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    options.deliveryMode = PHImageRequestOptionsDeliveryModeHighQualityFormat;
    //: options.networkAccessAllowed = YES;
    options.networkAccessAllowed = YES;

    //: [[PHImageManager defaultManager] requestImageDataForAsset:asset
    [[PHImageManager defaultManager] requestImageDataForAsset:asset
                                                     //: options:options
                                                     options:options
                                               //: resultHandler:^(NSData * _Nullable imageData, NSString * _Nullable dataUTI, UIImageOrientation orientation, NSDictionary * _Nullable info) {
                                               resultHandler:^(NSData * _Nullable imageData, NSString * _Nullable dataUTI, UIImageOrientation orientation, NSDictionary * _Nullable info) {
        //: if (imageData) {
        if (imageData) {
            //: UIImage *image = [UIImage imageWithData:imageData];
            UIImage *image = [UIImage imageWithData:imageData];
            //: completion(image);
            completion(image);
        //: } else {
        } else {
            //: NSLog(@"获取原始图片失败: %@", info);
            //: completion(nil);
            completion(nil);
        }
    //: }];
    }];
}

//: - (void)allMessagesRead
- (void)allMessagesRead
{
    //: self.sessionUnreadCount = 0;
    self.sessionUnreadCount = 0;
    //: [self refreshSessionBadge];
    [self table];
}


//: #pragma mark - NIMConversationManagerDelegate
#pragma mark - NIMConversationManagerDelegate
//: - (void)didAddRecentSession:(NIMRecentSession *)recentSession
- (void)didAddRecentSession:(NIMRecentSession *)recentSession
           //: totalUnreadCount:(NSInteger)totalUnreadCount{
           totalUnreadCount:(NSInteger)totalUnreadCount{
    //: self.sessionUnreadCount = totalUnreadCount;
    self.sessionUnreadCount = totalUnreadCount;
    //: [self refreshSessionBadge];
    [self table];
//    [self changeUnreadCount:recentSession totalUnreadCount:totalUnreadCount];
}


//: - (void)setUpTitleView
- (void)chronicle
{
    //: FFFKitTitleView *titleView = (FFFKitTitleView *)self.navigationItem.titleView;
    LabelHeadView *titleView = (LabelHeadView *)self.navigationItem.titleView;
    //: if (!titleView || ![titleView isKindOfClass:[FFFKitTitleView class]])
    if (!titleView || ![titleView isKindOfClass:[LabelHeadView class]])
    {
        //: titleView = [[FFFKitTitleView alloc] initWithFrame:CGRectZero];
        titleView = [[LabelHeadView alloc] initWithFrame:CGRectZero];
        //: self.navigationItem.titleView = titleView;
        self.navigationItem.titleView = titleView;

        //: titleView.titleLabel.text = self.sessionTitle;
        titleView.titleLabel.text = self.doingdSessionContent;
        //: titleView.subtitleLabel.text = self.sessionSubTitle;
        titleView.subtitleLabel.text = self.rangeScale;

        //: self.titleLabel = titleView.titleLabel;
        self.titleLabel = titleView.titleLabel;
        //: self.subTitleLabel = titleView.subtitleLabel;
        self.subTitleLabel = titleView.subtitleLabel;
    }

    //: [titleView sizeToFit];
    [titleView sizeToFit];
    //: self.subtitle.text = self.sessionSubTitle;
    self.subtitle.text = self.rangeScale;
}

//: - (void)CustomPickerDidSelectCamera
- (void)infoSub
{
    //: [self.customAlbumView animationClose];
    [self.customAlbumView ingatheringBy];
    //: [self.interactor mediaShootPressed];
    [self.interactor beforeWhen];
}


//: - (void)onTapAudioBtn:(id)sender
- (void)verticals:(id)sender
{
    //: self.sessionInputView.toolBar.showsKeyboard = NO;
    self.sessionInputView.toolBar.showsKeyboard = NO;

    //: [self.view addSubview:self.audioContent];
    [self.view addSubview:self.audioContent];
    //: self.audioContent.actionDelegate = self;
    self.audioContent.actionDelegate = self;
    //: [self.audioContent animationShow];
    [self.audioContent keep];
}


//: - (void)onRemoveQuickComment:(NIMQuickComment *)comment
- (void)onRemoveQuickComment:(NIMQuickComment *)comment
{
    //: [self.interactor updateMessage:comment.message];
    [self.interactor valueInfo:comment.message];
}

//: - (void)refreshMessages
- (void)commentMessages
{
    //: [self.interactor resetMessages:nil];
    [self.interactor cellMessages:nil];
}


//: - (void)didPullUpMessageData {}
- (void)textMessage {}


//: - (void)didRefreshMessageData
- (void)restoreWithinData
{
    //: [self refreshSessionTitle:self.sessionTitle];
    [self whenRefresh:self.doingdSessionContent];
    //: [self refreshSessionSubTitle:self.sessionSubTitle];
    [self to:self.rangeScale];
    //: [self.tableView reloadData];
    [self.tableView reloadData];
}

//: - (BOOL)onLongPressCell:(NIMMessage *)message
- (BOOL)ats:(NIMMessage *)message
{
    //: BOOL handle = NO;
    BOOL handle = NO;
    //: _messageForMenu = message;
    _messageForMenu = message;
    //: [self.interactor setReferenceMessage:message];
    [self.interactor setMessage:message];
    //: if (![self becomeFirstResponder]) {
    if (![self becomeFirstResponder]) {
        //: handle = NO;
        handle = NO;
        //: return handle;
        return handle;
    }
    //: handle = YES;
    handle = YES;
    //: return handle;
    return handle;
}

//: - (void)enterPersonInfoCard:(id)sender
- (void)clickSession:(id)sender
{
    //: USERPersonalCardViewController *vc = [[USERPersonalCardViewController alloc] initWithUserId:self.session.sessionId];
    CornerViewController *vc = [[CornerViewController alloc] initWithRestoreSession:self.session.sessionId];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];

}

//: - (void)viewDidLayoutSubviews
- (void)viewDidLayoutSubviews
{
    //: [super viewDidLayoutSubviews];
    [super viewDidLayoutSubviews];
//    [self changeLeftBarBadge:self.conversationManager.allUnreadCount];
    //: [self.interactor resetLayout];
    [self.interactor publication];
}

//: - (BOOL)onLongPressCell:(NIMMessage *)message complete:(void(^)(id data))complete; {
- (BOOL)link:(NIMMessage *)message underDomain:(void(^)(id data))complete; {
    //: BOOL handle = NO;
    BOOL handle = NO;
    //: _messageForMenu = message;
    _messageForMenu = message;
    //: [self.interactor setReferenceMessage:message];
    [self.interactor setMessage:message];

    //: handle = [self shouldShowMenuByMessage:message];
    handle = [self container:message];
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: !complete ? : complete(wself);
    !complete ? : complete(wself);

    //: return handle;
    return handle;
}

//: - (void)sendMessage:(NIMMessage *)message completion:(void(^)(NSError * err))completion
- (void)with:(NIMMessage *)message actuarialTable:(void(^)(NSError * err))completion
{
    //: __weak typeof(self) weakSelf = self;
    __weak typeof(self) weakSelf = self;
    //: [self.interactor sendMessage:message
    [self.interactor year:message
                        //: toMessage:nil
                        showCompletion:nil
                      //: completion:^(NSError *err)
                      itemTap:^(NSError *err)
    {
        //: if (completion)
        if (completion)
        {
            //: completion(err);
            completion(err);
        }
        //: [weakSelf cleanMenuMessage];
        [weakSelf clean];
    //: }];
    }];
}


//: - (void)uiUnpinMessage:(NIMMessage *)message
- (void)readRowMessage:(NIMMessage *)message
{
    //: [self.interactor removePinForMessage:message];
    [self.interactor object:message];
}
//: #pragma mark - 操作接口
#pragma mark - 操作接口
//: - (void)uiAddMessages:(NSArray *)messages
- (void)titleMessages:(NSArray *)messages
{
    //: [self.interactor addMessages:messages];
    [self.interactor image:messages];
}
//: - (void)onSendText:(NSString *)text atUsers:(NSArray *)atUsers
- (void)start:(NSString *)text comment_strong:(NSArray *)atUsers
{
    //: NSMutableArray *users = [NSMutableArray arrayWithArray:atUsers];
    NSMutableArray *users = [NSMutableArray arrayWithArray:atUsers];
    //: if (self.session.sessionType == NIMSessionTypeP2P)
    if (self.session.sessionType == NIMSessionTypeP2P)
    {
        //: [users addObject:self.session.sessionId];
        [users addObject:self.session.sessionId];
    }

    //: NIMMessage *message = [FFFMessageMaker msgWithText:text];
    NIMMessage *message = [ShouldMaker file:text];
    //: if (atUsers.count)
    if (atUsers.count)
    {
        //: NIMMessageApnsMemberOption *apnsOption = [[NIMMessageApnsMemberOption alloc] init];
        NIMMessageApnsMemberOption *apnsOption = [[NIMMessageApnsMemberOption alloc] init];
        //: apnsOption.userIds = atUsers;
        apnsOption.userIds = atUsers;
        //: apnsOption.forcePush = YES;
        apnsOption.forcePush = YES;

        //: FFFKitInfoFetchOption *option = [[FFFKitInfoFetchOption alloc] init];
        CellClean *option = [[CellClean alloc] init];
        //: option.session = self.session;
        option.session = self.session;

        //: NSString *me = [[MyUserKit sharedKit].provider infoByUser:[NIMSDK sharedSDK].loginManager.currentAccount option:option].showName;
        NSString *me = [[Mortification text].provider tingVoice:[NIMSDK sharedSDK].loginManager.currentAccount keepingOption:option].showName;
        //: apnsOption.apnsContent = [NSString stringWithFormat:@"%@在群里@了你".nim_localized, me];
        apnsOption.apnsContent = [NSString stringWithFormat:[[DeployCommandData sharedInstance] kContentBurningValue].disable, me];
        //: message.apnsMemberOption = apnsOption;
        message.apnsMemberOption = apnsOption;
    }

    //: [self sendMessage:message];
    [self user:message];
}

//: #pragma mark - 旋转处理 (iOS8 or above)
#pragma mark - 旋转处理 (iOS8 or above)
//: - (void)viewWillTransitionToSize:(CGSize)size
- (void)viewWillTransitionToSize:(CGSize)size
       //: withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
       withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    //: self.lastVisibleIndexPathBeforeRotation = [self.tableView indexPathsForVisibleRows].lastObject;
    self.lastVisibleIndexPathBeforeRotation = [self.tableView indexPathsForVisibleRows].lastObject;
    //: [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    //: if (self.view.window) {
    if (self.view.window) {
        //: __weak typeof(self) wself = self;
        __weak typeof(self) wself = self;
        //: [coordinator animateAlongsideTransition:^(id <UIViewControllerTransitionCoordinatorContext> context)
        [coordinator animateAlongsideTransition:^(id <UIViewControllerTransitionCoordinatorContext> context)
         {
             //: [[NIMSDK sharedSDK].mediaManager cancelRecord];
             [[NIMSDK sharedSDK].mediaManager cancelRecord];
             //: [wself.interactor cleanCache];
             [wself.interactor scrubbedMessage];
             //: [wself.sessionInputView reset];
             [wself.sessionInputView nameAll];
             //: [wself.tableView reloadData];
             [wself.tableView reloadData];
             //: [wself.tableView scrollToRowAtIndexPath:wself.lastVisibleIndexPathBeforeRotation atScrollPosition:UITableViewScrollPositionBottom animated:NO];
             [wself.tableView scrollToRowAtIndexPath:wself.lastVisibleIndexPathBeforeRotation atScrollPosition:UITableViewScrollPositionBottom animated:NO];
         //: } completion:nil];
         } completion:nil];
    }
}

//: - (id<NIMConversationManager>)conversationManager{
- (id<NIMConversationManager>)colorButton{
    //: switch (self.session.sessionType) {
    switch (self.session.sessionType) {
        //: case NIMSessionTypeChatroom:
        case NIMSessionTypeChatroom:
            //: return nil;
            return nil;
            //: break;
            break;
        //: case NIMSessionTypeP2P:
        case NIMSessionTypeP2P:
        //: case NIMSessionTypeTeam:
        case NIMSessionTypeTeam:
        //: case NIMSessionTypeSuperTeam:
        case NIMSessionTypeSuperTeam:
        //: default:
        default:
            //: return [NIMSDK sharedSDK].conversationManager;
            return [NIMSDK sharedSDK].conversationManager;
    }
}

//: #pragma mark - 配置项列表
#pragma mark - 配置项列表
//是否需要监听新消息通知 : 某些场景不需要监听新消息，如浏览服务器消息历史界面
//: - (BOOL)shouldAddListenerForNewMsg
- (BOOL)to
{
    //: BOOL should = YES;
    BOOL should = YES;
    //: if ([self.sessionConfig respondsToSelector:@selector(disableReceiveNewMessages)]) {
    if ([self.messageBar respondsToSelector:@selector(tingOn)]) {
        //: should = ![self.sessionConfig disableReceiveNewMessages];
        should = ![self.messageBar tingOn];
    }
    //: return should;
    return should;
}

//: - (void)hadCommentThisMessage:(NIMMessage *)message
- (void)information:(NIMMessage *)message
                         //: type:(int64_t)type
                         easing:(int64_t)type
                    //: compltion:(void(^)(NSMapTable *))completion
                    wisecrack:(void(^)(NSMapTable *))completion
{
    //: [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NSArray<NIMQuickComment *> * >* _Nullable result) {
    [[NIMSDK sharedSDK].chatExtendManager quickCommentsByMessage:message completion:^(NSError * _Nullable error, NSMapTable<NSNumber *,NSArray<NIMQuickComment *> * >* _Nullable result) {
        //: if (completion)
        if (completion)
        {
            //: completion(result);
            completion(result);
        }
    //: }];
    }];
}

//: #pragma mark - NIMMeidaButton
#pragma mark - NIMMeidaButton
//: - (void)onTapMediaItemPicture:(FFFMediaItem *)item
- (void)infoSizeSub:(CommingleItem *)item
{
    //: [self.interactor mediaPicturePressed];
    [self.interactor tingName];
}

//: #pragma mark -
#pragma mark -
//: #pragma mark - 长按菜单事件
#pragma mark - 长按菜单事件
//: - (NIMMessage *)messageForMenu
- (NIMMessage *)messageForMenu
{
    //: return _messageForMenu;
    return _messageForMenu;
}
//: - (void)refreshSessionTitle:(NSString *)title
- (void)whenRefresh:(NSString *)title
{
    //: self.titleLabel.text = title;
    self.titleLabel.text = title;
//    self.labtitle.text = self.sessionTitle;
    //: [self setUpTitleView];
    [self chronicle];
}

//: - (void)handleShotBtn
- (void)onHeight
{
    //: _photopicview.hidden = YES;
    _photopicview.hidden = YES;
    //: [self.interactor mediaShootPressed];
    [self.interactor beforeWhen];
}

//: - (void)onRetryMessage:(NIMMessage *)message
- (void)backRemote:(NIMMessage *)message
{
    //: if (message.isReceivedMsg) {
    if (message.isReceivedMsg) {
        //: [[[NIMSDK sharedSDK] chatManager] fetchMessageAttachment:message
        [[[NIMSDK sharedSDK] chatManager] fetchMessageAttachment:message
                                                           //: error:nil];
                                                           error:nil];
    //: }else{
    }else{
        //: [[[NIMSDK sharedSDK] chatManager] resendMessage:message
        [[[NIMSDK sharedSDK] chatManager] resendMessage:message
                                                  //: error:nil];
                                                  error:nil];
    }
}

//: - (void)setupConfigurator
- (void)politicalSphere
{
    //: _configurator = [[FFFSessionConfigurator alloc] init];
    _configurator = [[TitleTargetYear alloc] init];
    //: [_configurator setup:self];
    [_configurator color:self];

    //: BOOL needProximityMonitor = [self needProximityMonitor];
    BOOL needProximityMonitor = [self record];
    //: [[NIMSDK sharedSDK].mediaManager setNeedProximityMonitor:needProximityMonitor];
    [[NIMSDK sharedSDK].mediaManager setNeedProximityMonitor:needProximityMonitor];
}

//: @end
@end
//: __SAVE__ ignore_string [763.7]