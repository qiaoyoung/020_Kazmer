
#import <Foundation/Foundation.h>

@interface ConductorData : NSObject

@end

@implementation ConductorData

//: rejected_group_invitation
+ (NSString *)kName_textString {
    /* static */ NSString *kName_textString = nil;
    if (!kName_textString) {
		NSArray<NSNumber *> *origin = @[@25, @41, @13, @97, @242, @234, @157, @176, @226, @70, @145, @89, @217, @73, @60, @65, @60, @58, @75, @60, @59, @54, @62, @73, @70, @76, @71, @54, @64, @69, @77, @64, @75, @56, @75, @64, @70, @69, @21];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_textString = [self StringFromConductorData:value];
    }
    return kName_textString;
}

//: message_helper_refuse_group
+ (NSString *)kText_itemData {
    /* static */ NSString *kText_itemData = nil;
    if (!kText_itemData) {
		NSArray<NSNumber *> *origin = @[@27, @53, @11, @42, @94, @38, @43, @71, @129, @223, @97, @56, @48, @62, @62, @44, @50, @48, @42, @51, @48, @55, @59, @48, @61, @42, @61, @48, @49, @64, @62, @48, @42, @50, @61, @58, @64, @59, @223];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_itemData = [self StringFromConductorData:value];
    }
    return kText_itemData;
}

+ (NSData *)ConductorDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)ConductorDataToCache:(Byte *)data {
    int cellTool = data[0];
    Byte hideFrame = data[1];
    int contentTap = data[2];
    for (int i = contentTap; i < contentTap + cellTool; i++) {
        int value = data[i] + hideFrame;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[contentTap + cellTool] = 0;
    return data + contentTap;
}

//: message_helper_already_time
+ (NSString *)kTitleNimLastString {
    /* static */ NSString *kTitleNimLastString = nil;
    if (!kTitleNimLastString) {
		NSArray<NSNumber *> *origin = @[@27, @19, @4, @223, @90, @82, @96, @96, @78, @84, @82, @76, @85, @82, @89, @93, @82, @95, @76, @78, @89, @95, @82, @78, @81, @102, @76, @97, @86, @90, @82, @76];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleNimLastString = [self StringFromConductorData:value];
    }
    return kTitleNimLastString;
}

//: %@ attach:%@
+ (NSString *)kTitle_modelString {
    /* static */ NSString *kTitle_modelString = nil;
    if (!kTitle_modelString) {
		NSArray<NSNumber *> *origin = @[@12, @79, @10, @224, @87, @241, @157, @236, @42, @85, @214, @241, @209, @18, @37, @37, @18, @20, @25, @235, @214, @241, @165];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_modelString = [self StringFromConductorData:value];
    }
    return kTitle_modelString;
}

//: 000000
+ (NSString *)kContentCropString {
    /* static */ NSString *kContentCropString = nil;
    if (!kContentCropString) {
		NSArray<NSNumber *> *origin = @[@6, @37, @12, @55, @238, @54, @192, @65, @46, @63, @4, @237, @11, @11, @11, @11, @11, @11, @10];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentCropString = [self StringFromConductorData:value];
    }
    return kContentCropString;
}

//: #999999
+ (NSString *)kText_endData {
    /* static */ NSString *kText_endData = nil;
    if (!kText_endData) {
		NSArray<NSNumber *> *origin = @[@7, @70, @4, @80, @221, @243, @243, @243, @243, @243, @243, @248];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_endData = [self StringFromConductorData:value];
    }
    return kText_endData;
}

//: apply_join_supergroup
+ (NSString *)kText_targetWithData {
    /* static */ NSString *kText_targetWithData = nil;
    if (!kText_targetWithData) {
		NSArray<NSNumber *> *origin = @[@21, @15, @8, @141, @58, @212, @180, @11, @82, @97, @97, @93, @106, @80, @91, @96, @90, @95, @80, @100, @102, @97, @86, @99, @88, @99, @96, @102, @97, @210];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_targetWithData = [self StringFromConductorData:value];
    }
    return kText_targetWithData;
}

//: message_helper_already_no
+ (NSString *)kNameHideEndString {
    /* static */ NSString *kNameHideEndString = nil;
    if (!kNameHideEndString) {
		NSArray<NSNumber *> *origin = @[@25, @17, @5, @16, @171, @92, @84, @98, @98, @80, @86, @84, @78, @87, @84, @91, @95, @84, @97, @78, @80, @91, @97, @84, @80, @83, @104, @78, @93, @94, @74];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameHideEndString = [self StringFromConductorData:value];
    }
    return kNameHideEndString;
}

//: ic_btn_accept
+ (NSString *)kNameFileData {
    /* static */ NSString *kNameFileData = nil;
    if (!kNameFileData) {
		NSArray<NSNumber *> *origin = @[@13, @41, @8, @246, @142, @79, @179, @197, @64, @58, @54, @57, @75, @69, @54, @56, @58, @58, @60, @71, @75, @35];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameFileData = [self StringFromConductorData:value];
    }
    return kNameFileData;
}

//: to_deny_entry
+ (NSString *)kName_errorString {
    /* static */ NSString *kName_errorString = nil;
    if (!kName_errorString) {
		NSArray<NSNumber *> *origin = @[@13, @35, @13, @246, @68, @140, @227, @31, @59, @36, @98, @54, @147, @81, @76, @60, @65, @66, @75, @86, @60, @66, @75, @81, @79, @86, @17];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_errorString = [self StringFromConductorData:value];
    }
    return kName_errorString;
}

//: message_helper_already_add
+ (NSString *)kNameShowMonthData {
    /* static */ NSString *kNameShowMonthData = nil;
    if (!kNameShowMonthData) {
		NSArray<NSNumber *> *origin = @[@26, @54, @11, @58, @110, @198, @14, @200, @149, @168, @194, @55, @47, @61, @61, @43, @49, @47, @41, @50, @47, @54, @58, @47, @60, @41, @43, @54, @60, @47, @43, @46, @67, @41, @43, @46, @46, @225];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameShowMonthData = [self StringFromConductorData:value];
    }
    return kNameShowMonthData;
}

//: request_add_you_as_a_friend
+ (NSString *)kTitle_fileName {
    /* static */ NSString *kTitle_fileName = nil;
    if (!kTitle_fileName) {
		NSArray<NSNumber *> *origin = @[@27, @50, @8, @107, @254, @28, @160, @192, @64, @51, @63, @67, @51, @65, @66, @45, @47, @50, @50, @45, @71, @61, @67, @45, @47, @65, @45, @47, @45, @52, @64, @55, @51, @60, @50, @91];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_fileName = [self StringFromConductorData:value];
    }
    return kTitle_fileName;
}

//: is_read
+ (NSString *)kTitle_onData {
    /* static */ NSString *kTitle_onData = nil;
    if (!kTitle_onData) {
		NSArray<NSNumber *> *origin = @[@7, @67, @7, @250, @209, @149, @175, @38, @48, @28, @47, @34, @30, @33, @44];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_onData = [self StringFromConductorData:value];
    }
    return kTitle_onData;
}

+ (NSString *)StringFromConductorData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ConductorDataToCache:data]];
}

//: invite_you_join_us
+ (NSString *)kTextDateData {
    /* static */ NSString *kTextDateData = nil;
    if (!kTextDateData) {
		NSArray<NSNumber *> *origin = @[@18, @71, @4, @48, @34, @39, @47, @34, @45, @30, @24, @50, @40, @46, @24, @35, @40, @34, @39, @24, @46, @44, @251];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextDateData = [self StringFromConductorData:value];
    }
    return kTextDateData;
}

//: invite_you_group
+ (NSString *)kTextMessageName {
    /* static */ NSString *kTextMessageName = nil;
    if (!kTextMessageName) {
		NSArray<NSNumber *> *origin = @[@16, @81, @3, @24, @29, @37, @24, @35, @20, @14, @40, @30, @36, @14, @22, @33, @30, @36, @31, @55];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextMessageName = [self StringFromConductorData:value];
    }
    return kTextMessageName;
}

//: contact_fragment_group
+ (NSString *)kName_fileKnowData {
    /* static */ NSString *kName_fileKnowData = nil;
    if (!kName_fileKnowData) {
		NSArray<NSNumber *> *origin = @[@22, @43, @9, @56, @204, @95, @57, @81, @162, @56, @68, @67, @73, @54, @56, @73, @52, @59, @71, @54, @60, @66, @58, @67, @73, @52, @60, @71, @68, @74, @69, @9];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_fileKnowData = [self StringFromConductorData:value];
    }
    return kName_fileKnowData;
}

//: ic_btn_disaccept
+ (NSString *)kTitleCurrentValue {
    /* static */ NSString *kTitleCurrentValue = nil;
    if (!kTitleCurrentValue) {
		NSArray<NSNumber *> *origin = @[@16, @56, @13, @94, @162, @56, @153, @38, @197, @68, @11, @249, @187, @49, @43, @39, @42, @60, @54, @39, @44, @49, @59, @41, @43, @43, @45, @56, @60, @225];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleCurrentValue = [self StringFromConductorData:value];
    }
    return kTitleCurrentValue;
}

//: message_helper_allow_you_apply
+ (NSString *)kTitle_currentText {
    /* static */ NSString *kTitle_currentText = nil;
    if (!kTitle_currentText) {
		NSArray<NSNumber *> *origin = @[@30, @12, @10, @161, @27, @75, @64, @224, @19, @120, @97, @89, @103, @103, @85, @91, @89, @83, @92, @89, @96, @100, @89, @102, @83, @85, @96, @96, @99, @107, @83, @109, @99, @105, @83, @85, @100, @100, @96, @109, @79];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_currentText = [self StringFromConductorData:value];
    }
    return kTitle_currentText;
}

//: #4B43DE
+ (NSString *)kTitle_knowData {
    /* static */ NSString *kTitle_knowData = nil;
    if (!kTitle_knowData) {
		NSArray<NSNumber *> *origin = @[@7, @67, @9, @208, @59, @131, @200, @200, @162, @224, @241, @255, @241, @240, @1, @2, @137];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_knowData = [self StringFromConductorData:value];
    }
    return kTitle_knowData;
}

//: message_helper_refuse_you
+ (NSString *)kTextColorValue {
    /* static */ NSString *kTextColorValue = nil;
    if (!kTextColorValue) {
		NSArray<NSNumber *> *origin = @[@25, @53, @6, @114, @212, @196, @56, @48, @62, @62, @44, @50, @48, @42, @51, @48, @55, @59, @48, @61, @42, @61, @48, @49, @64, @62, @48, @42, @68, @58, @64, @125];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextColorValue = [self StringFromConductorData:value];
    }
    return kTextColorValue;
}

//: message_helper_apply_to_group
+ (NSString *)kTitle_playString {
    /* static */ NSString *kTitle_playString = nil;
    if (!kTitle_playString) {
		NSArray<NSNumber *> *origin = @[@29, @83, @9, @135, @18, @10, @113, @69, @170, @26, @18, @32, @32, @14, @20, @18, @12, @21, @18, @25, @29, @18, @31, @12, @14, @29, @29, @25, @38, @12, @33, @28, @12, @20, @31, @28, @34, @29, @218];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_playString = [self StringFromConductorData:value];
    }
    return kTitle_playString;
}

//: message_helper_invite
+ (NSString *)kNameCellValue {
    /* static */ NSString *kNameCellValue = nil;
    if (!kNameCellValue) {
		NSArray<NSNumber *> *origin = @[@21, @79, @6, @120, @11, @34, @30, @22, @36, @36, @18, @24, @22, @16, @25, @22, @29, @33, @22, @35, @16, @26, @31, @39, @26, @37, @22, @49];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameCellValue = [self StringFromConductorData:value];
    }
    return kNameCellValue;
}

//: large_group
+ (NSString *)kName_placeTitleValue {
    /* static */ NSString *kName_placeTitleValue = nil;
    if (!kName_placeTitleValue) {
		NSArray<NSNumber *> *origin = @[@11, @73, @9, @2, @102, @106, @145, @13, @174, @35, @24, @41, @30, @28, @22, @30, @41, @38, @44, @39, @42];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_placeTitleValue = [self StringFromConductorData:value];
    }
    return kName_placeTitleValue;
}

//: 未知请求
+ (NSString *)kTitle_scaleText {
    /* static */ NSString *kTitle_scaleText = nil;
    if (!kTitle_scaleText) {
		NSArray<NSNumber *> *origin = @[@12, @22, @6, @255, @72, @26, @208, @134, @148, @209, @137, @143, @210, @153, @161, @208, @155, @108, @86];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_scaleText = [self StringFromConductorData:value];
    }
    return kTitle_scaleText;
}

//: message_helper_refuse_you_apply
+ (NSString *)kName_targetValueLoopText {
    /* static */ NSString *kName_targetValueLoopText = nil;
    if (!kName_targetValueLoopText) {
		NSArray<NSNumber *> *origin = @[@31, @2, @4, @232, @107, @99, @113, @113, @95, @101, @99, @93, @102, @99, @106, @110, @99, @112, @93, @112, @99, @100, @115, @113, @99, @93, @119, @109, @115, @93, @95, @110, @110, @106, @119, @98];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_targetValueLoopText = [self StringFromConductorData:value];
    }
    return kName_targetValueLoopText;
}

//: #F6F6F6
+ (NSString *)kNameTargetItemCheckedData {
    /* static */ NSString *kNameTargetItemCheckedData = nil;
    if (!kNameTargetItemCheckedData) {
		NSArray<NSNumber *> *origin = @[@7, @5, @11, @130, @170, @133, @169, @28, @44, @184, @169, @30, @65, @49, @65, @49, @65, @49, @37];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameTargetItemCheckedData = [self StringFromConductorData:value];
    }
    return kNameTargetItemCheckedData;
}

//: message_helper_already_ok
+ (NSString *)kTitle_deviceTargetValue {
    /* static */ NSString *kTitle_deviceTargetValue = nil;
    if (!kTitle_deviceTargetValue) {
		NSArray<NSNumber *> *origin = @[@25, @29, @9, @3, @47, @154, @146, @30, @27, @80, @72, @86, @86, @68, @74, @72, @66, @75, @72, @79, @83, @72, @85, @66, @68, @79, @85, @72, @68, @71, @92, @66, @82, @78, @107];
		NSData *data = [ConductorData ConductorDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_deviceTargetValue = [self StringFromConductorData:value];
    }
    return kTitle_deviceTargetValue;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  ManNameViewCell.m
//  NIM
//
//  Created by amao on 3/17/15.
//  Copyright (c) 2015 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERSystemNotificationCell.h"
#import "ManNameViewCell.h"
//: #import "UIView+USER.h"
#import "UIView+Turn.h"
//: #import "DisplayAvatarImageView.h"
#import "MemoryImageControl.h"
//: #import "DisplayKitUtil.h"
#import "AtPull.h"

//: @interface USERSystemNotificationCell ()
@interface ManNameViewCell ()

//: @property (nonatomic,strong) NIMSystemNotification *notification;
@property (nonatomic,strong) NIMSystemNotification *notification;
//@property (nonatomic,strong) IBOutlet MemoryImageControl *avatarImageView;
//: @end
@end

//: @implementation USERSystemNotificationCell
@implementation ManNameViewCell

//: - (UIImageView *)avatarImageView {
- (UIImageView *)avatarImageView {
    //: if (!_avatarImageView) {
    if (!_avatarImageView) {
        //: _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 18, 50, 50)];
        _avatarImageView = [[UIImageView alloc] initWithFrame:CGRectMake(15, 18, 50, 50)];
        //: _avatarImageView.contentMode = UIViewContentModeScaleToFill;
        _avatarImageView.contentMode = UIViewContentModeScaleToFill;
        //: _avatarImageView.layer.cornerRadius = 25;
        _avatarImageView.layer.cornerRadius = 25;
        //: _avatarImageView.layer.masksToBounds = YES;
        _avatarImageView.layer.masksToBounds = YES;

//        UITapGestureRecognizer *panGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(onTouchAvatar:)];
//        [_avatarImageView addGestureRecognizer:panGesture];
    }
    //: return _avatarImageView;
    return _avatarImageView;
}

//: - (UIButton *)refuseButton {
- (UIButton *)refuseButton {
    //: if (!_refuseButton) {
    if (!_refuseButton) {
        //: _refuseButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        _refuseButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        //: _refuseButton.frame = CGRectMake(0, 0, 32, 32);
        _refuseButton.frame = CGRectMake(0, 0, 32, 32);
        //: _refuseButton.right = self.acceptButton.left - 10;
        _refuseButton.right = self.acceptButton.left - 10;
        //: _refuseButton.top = self.acceptButton.top;
        _refuseButton.top = self.acceptButton.top;
//        _refuseButton.titleLabel.font = [UIFont systemFontOfSize:15];
//        [_refuseButton setTitle:LangKey(@"request_add_reject") forState:(UIControlStateNormal)];
        //: [_refuseButton addTarget:self action:@selector(onRefusebtn) forControlEvents:(UIControlEventTouchUpInside)];
        [_refuseButton addTarget:self action:@selector(pinUser) forControlEvents:(UIControlEventTouchUpInside)];
//        [_refuseButton setTitleColor:kTextColor_2c3042 forState:(UIControlStateNormal)];
//        [_refuseButton setBackgroundColor:RGB_COLOR_String(@"#fffDisplay")];
        //: [_refuseButton setImage:[UIImage imageNamed:@"ic_btn_disaccept"] forState:UIControlStateNormal];
        [_refuseButton setImage:[UIImage imageNamed:[ConductorData kTitleCurrentValue]] forState:UIControlStateNormal];
//        _refuseButton.layer.cornerRadius = 16;
//        _refuseButton.layer.masksToBounds = YES;
    }
    //: return _refuseButton;
    return _refuseButton;
}

//: - (UIButton *)acceptButton {
- (UIButton *)acceptButton {
    //: if (!_acceptButton) {
    if (!_acceptButton) {
        //: _acceptButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        _acceptButton = [UIButton buttonWithType:(UIButtonTypeCustom)];
        //: _acceptButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-15-32, 21, 32, 32);
        _acceptButton.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-15-32, 21, 32, 32);
//        _acceptButton.titleLabel.font = [UIFont systemFontOfSize:15];
//        [_acceptButton setTitle:LangKey(@"request_add_accept") forState:(UIControlStateNormal)];
        //: [_acceptButton addTarget:self action:@selector(onAcceptBtn) forControlEvents:(UIControlEventTouchUpInside)];
        [_acceptButton addTarget:self action:@selector(pregnantChange) forControlEvents:(UIControlEventTouchUpInside)];
//        [_acceptButton setTitleColor:[KEKESkinColorManager shareInstance].skinColor forState:(UIControlStateNormal)];
//        [_acceptButton setBackgroundColor:RGB_COLOR_String(@"#fffDisplay")];
        //: [_acceptButton setImage:[UIImage imageNamed:@"ic_btn_accept"] forState:UIControlStateNormal];
        [_acceptButton setImage:[UIImage imageNamed:[ConductorData kNameFileData]] forState:UIControlStateNormal];
//        _acceptButton.layer.cornerRadius = 16;
//        _acceptButton.layer.masksToBounds = YES;
    }
    //: return _acceptButton;
    return _acceptButton;
}

//: - (void)updateSourceMember:(DisplayKitInfo *)sourceMember{
- (void)pathRed:(CancelTeamCorner *)sourceMember{

    //: NIMSystemNotificationType type = self.notification.type;
    NIMSystemNotificationType type = self.notification.type;
    //: NSString *avatarUrlString = sourceMember.avatarUrlString;
    NSString *avatarUrlString = sourceMember.avatarUrlString;
    //: NSURL *url;
    NSURL *url;
    //: if (avatarUrlString.length) {
    if (avatarUrlString.length) {
        //: url = [NSURL URLWithString:avatarUrlString];
        url = [NSURL URLWithString:avatarUrlString];
    }
//    [self.avatarImageView nim_setImageWithURL:url placeholderImage:sourceMember.avatarImage options:SDWebImageRetryFailed];
    //: [self.avatarImageView sd_setImageWithURL:url placeholderImage:sourceMember.avatarImage];
    [self.avatarImageView sd_setImageWithURL:url placeholderImage:sourceMember.avatarImage];
    //: self.titleLabel.text = sourceMember.showName;
    self.titleLabel.text = sourceMember.showName;
    //: switch (type) {
    switch (type) {
        //: case NIMSystemNotificationTypeTeamApply:
        case NIMSystemNotificationTypeTeamApply:
        {
            //: NSString *message_helper_apply_to_group = [DisplayLanguageManager getTextWithKey:@"message_helper_apply_to_group"];
            NSString *message_helper_apply_to_group = [MakeManager cell:[ConductorData kTitle_playString]];//@"申请加入群".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",message_helper_apply_to_group, team.teamName];
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",message_helper_apply_to_group, team.teamName];
        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeTeamApplyReject:
        case NIMSystemNotificationTypeTeamApplyReject:
        {
            //: NSString *contact_fragment_group = [DisplayLanguageManager getTextWithKey:@"contact_fragment_group"];
            NSString *contact_fragment_group = [MakeManager cell:[ConductorData kName_fileKnowData]];//@"群".nim_localized
            //: NSString *message_helper_refuse_you = [DisplayLanguageManager getTextWithKey:@"message_helper_refuse_you"];
            NSString *message_helper_refuse_you = [MakeManager cell:[ConductorData kTextColorValue]];//@"拒绝你加入".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
                                         //: contact_fragment_group,
                                         contact_fragment_group,
                                         //: team.teamName,
                                         team.teamName,
                                         //: message_helper_refuse_you];
                                         message_helper_refuse_you];
        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeTeamInvite:
        case NIMSystemNotificationTypeTeamInvite:
        {
            //: NSString *contact_fragment_group = [DisplayLanguageManager getTextWithKey:@"contact_fragment_group"];
            NSString *contact_fragment_group = [MakeManager cell:[ConductorData kName_fileKnowData]];//@"群".nim_localized
            //: NSString *invite_you_group = [DisplayLanguageManager getTextWithKey:@"invite_you_group"];
            NSString *invite_you_group = [MakeManager cell:[ConductorData kTextMessageName]];//@"邀请你加入".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];

            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
                                         //: contact_fragment_group,
                                         contact_fragment_group,
                                         //: team.teamName,
                                         team.teamName,
                                         //: invite_you_group];
                                         invite_you_group];

            //: if (self.notification.notifyExt.length>0) {
            if (self.notification.notifyExt.length>0) {
                //: self.messageLabel.text = [NSString stringWithFormat:@"%@ attach:%@",self.messageLabel.text , self.notification.notifyExt?:@""];
                self.messageLabel.text = [NSString stringWithFormat:[ConductorData kTitle_modelString],self.messageLabel.text , self.notification.notifyExt?:@""];
            }

        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeTeamIviteReject:
        case NIMSystemNotificationTypeTeamIviteReject:
        {
            //: NSString *message_helper_refuse_group = [DisplayLanguageManager getTextWithKey:@"message_helper_refuse_group"];
            NSString *message_helper_refuse_group = [MakeManager cell:[ConductorData kText_itemData]];
            //: NSString *message_helper_invite = [DisplayLanguageManager getTextWithKey:@"message_helper_invite"];
            NSString *message_helper_invite = [MakeManager cell:[ConductorData kNameCellValue]];//@"邀请".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
                                         //: message_helper_refuse_group,
                                         message_helper_refuse_group,
                                         //: team.teamName,
                                         team.teamName,
                                         //: message_helper_invite];
                                         message_helper_invite];
        }
            //: break;
            break;
        //: case NIMSystemNotificationTypeSuperTeamApply:
        case NIMSystemNotificationTypeSuperTeamApply:
        {
            //: NSString *apply_join_supergroup = [DisplayLanguageManager getTextWithKey:@"apply_join_supergroup"];
            NSString *apply_join_supergroup = [MakeManager cell:[ConductorData kText_targetWithData]];//@"申请加入超大群 %@".nim_localized
            //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:apply_join_supergroup, team.teamName];
            self.messageLabel.text = [NSString stringWithFormat:apply_join_supergroup, team.teamName];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeSuperTeamApplyReject:
        case NIMSystemNotificationTypeSuperTeamApplyReject:
        {
            //: NSString *large_group = [DisplayLanguageManager getTextWithKey:@"large_group"];
            NSString *large_group = [MakeManager cell:[ConductorData kName_placeTitleValue]];//超大群
            //: NSString *to_deny_entry = [DisplayLanguageManager getTextWithKey:@"to_deny_entry"];
            NSString *to_deny_entry = [MakeManager cell:[ConductorData kName_errorString]];//拒绝你加入
            //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",large_group, team.teamName,to_deny_entry];
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@ %@",large_group, team.teamName,to_deny_entry];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeSuperTeamInvite:
        case NIMSystemNotificationTypeSuperTeamInvite:
        {
            //: NSString *large_group = [DisplayLanguageManager getTextWithKey:@"large_group"];
            NSString *large_group = [MakeManager cell:[ConductorData kName_placeTitleValue]];//超大群
            //: NSString *invite_you_join_us = [DisplayLanguageManager getTextWithKey:@"invite_you_join_us"];
            NSString *invite_you_join_us = [MakeManager cell:[ConductorData kTextDateData]];//邀请你加入
            //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@  %@",large_group, team.teamName,invite_you_join_us];
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@  %@",large_group, team.teamName,invite_you_join_us];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeSuperTeamIviteReject:
        case NIMSystemNotificationTypeSuperTeamIviteReject:
        {
            //: NSString *rejected_group_invitation = [DisplayLanguageManager getTextWithKey:@"rejected_group_invitation"];
            NSString *rejected_group_invitation = [MakeManager cell:[ConductorData kName_textString]];
            //: NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
            //: self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",rejected_group_invitation, team.teamName];
            self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",rejected_group_invitation, team.teamName];
            //: break;
            break;
        }
        //: case NIMSystemNotificationTypeFriendAdd:
        case NIMSystemNotificationTypeFriendAdd:
        {
            //: NSString *text = @"未知请求".nim_localized;
            NSString *text = [ConductorData kTitle_scaleText].disable;
            //: id object = self.notification.attachment;
            id object = self.notification.attachment;
            //: if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
            if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
                //: NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
                NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
                //: NSString *serverExt = [(NIMUserAddAttachment *)object serverExt];
                NSString *serverExt = [(NIMUserAddAttachment *)object serverExt];

                //: switch (operation) {
                switch (operation) {
                    //: case NIMUserOperationAdd:
                    case NIMUserOperationAdd:
                        //: text = [DisplayLanguageManager getTextWithKey:@"message_helper_already_add"];
                        text = [MakeManager cell:[ConductorData kNameShowMonthData]];//@"已添加你为好友".nim_localized;
                        //: break;
                        break;
                    //: case NIMUserOperationRequest:
                    case NIMUserOperationRequest:
                        //: text = [DisplayLanguageManager getTextWithKey:@"request_add_you_as_a_friend"];
                        text = [MakeManager cell:[ConductorData kTitle_fileName]];//@"请求添加你为好友".nim_localized;
                        //: break;
                        break;
                    //: case NIMUserOperationVerify:
                    case NIMUserOperationVerify:
                        //: text = [DisplayLanguageManager getTextWithKey:@"message_helper_allow_you_apply"];
                        text = [MakeManager cell:[ConductorData kTitle_currentText]];//@"通过了你的好友请求".nim_localized;
                        //: break;
                        break;
                    //: case NIMUserOperationReject:
                    case NIMUserOperationReject:
                        //: text = [DisplayLanguageManager getTextWithKey:@"message_helper_refuse_you_apply"];
                        text = [MakeManager cell:[ConductorData kName_targetValueLoopText]];//@"拒绝了你的好友请求".nim_localized;
                        //: break;
                        break;
                    //: default:
                    default:
                        //: break;
                        break;
                }

                //: if (serverExt && [serverExt length]) {
                if (serverExt && [serverExt length]) {
                    //: text = [NSString stringWithFormat:@"%@（%@）", text, serverExt];
                    text = [NSString stringWithFormat:@"%@（%@）", text, serverExt];
                }
            }

            //: self.messageLabel.text = text;
            self.messageLabel.text = text;
        }
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }

//    if (self.notification.postscript.length > 0) {
//        self.messageLabel.text = [NSString stringWithFormat:@"%@ %@",self.notification.postscript, self.messageLabel.text];
//    }

//    CGSize contentSize = [self.messageLabel.text boundingRectWithSize:CGSizeMake(SCREEN_WIDTH-48-15-12-15, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName: [UIFont systemFontOfSize:13]} context:nil].size;
//
//    self.messageLabel.height = contentSize.height + 10;

//    _refuseButton.top = _handleInfoLabel.top = _acceptButton.top = self.messageLabel.bottom + 8;
}

//: - (UILabel *)handleInfoLabel {
- (UILabel *)handleInfoLabel {
    //: if (!_handleInfoLabel) {
    if (!_handleInfoLabel) {
        //: _handleInfoLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        _handleInfoLabel = [[UILabel alloc] initWithFrame:CGRectZero];
        //: _handleInfoLabel.frame = CGRectMake(0, 0, 130, 20);
        _handleInfoLabel.frame = CGRectMake(0, 0, 130, 20);
        //: _handleInfoLabel.right = [[UIScreen mainScreen] bounds].size.width-30-15;
        _handleInfoLabel.right = [[UIScreen mainScreen] bounds].size.width-30-15;
        //: _handleInfoLabel.centerY = self.avatarImageView.centerY;
        _handleInfoLabel.centerY = self.avatarImageView.centerY;
        //: _handleInfoLabel.font = [UIFont systemFontOfSize:14.f];
        _handleInfoLabel.font = [UIFont systemFontOfSize:14.f];
        //: _handleInfoLabel.textColor = [UIColor colorWithHexString:@"#4B43DE"];
        _handleInfoLabel.textColor = [UIColor cell:[ConductorData kTitle_knowData]];
        //: _handleInfoLabel.textAlignment = NSTextAlignmentRight;
        _handleInfoLabel.textAlignment = NSTextAlignmentRight;
//        _handleInfoLabel.numberOfLines = 1;
//        _handleInfoLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _handleInfoLabel;
    return _handleInfoLabel;
}

//: - (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    //: self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    //: if (self) {
    if (self) {
        //: [self.contentView addSubview:self.avatarImageView];
        [self.contentView addSubview:self.avatarImageView];
        //: [self.contentView addSubview:self.titleLabel];
        [self.contentView addSubview:self.titleLabel];
        //: [self.contentView addSubview:self.timeLabel];
        [self.contentView addSubview:self.timeLabel];
        //: [self.contentView addSubview:self.messageLabel];
        [self.contentView addSubview:self.messageLabel];
        //: [self.contentView addSubview:self.handleInfoLabel];
        [self.contentView addSubview:self.handleInfoLabel];
        //: [self.contentView addSubview:self.acceptButton];
        [self.contentView addSubview:self.acceptButton];
        //: [self.contentView addSubview:self.refuseButton];
        [self.contentView addSubview:self.refuseButton];
//        [self.contentView addSubview:self.handleInfoLabel];

        //: self.backgroundColor = [UIColor colorWithHexString:@"#F6F6F6"];
        self.backgroundColor = [UIColor cell:[ConductorData kNameTargetItemCheckedData]];
        //: self.layer.cornerRadius = 16;
        self.layer.cornerRadius = 16;
    }
    //: return self;
    return self;
}

//: - (UILabel *)titleLabel {
- (UILabel *)titleLabel {
    //: if (!_titleLabel) {
    if (!_titleLabel) {
        //: _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.avatarImageView.right + 15, 18, 200 , 20)];
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.avatarImageView.right + 15, 18, 200 , 20)];
        //: _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        _titleLabel.font = [UIFont boldSystemFontOfSize:16.f];
        //: _titleLabel.textColor = [UIColor colorWithHexString:@"000000"];
        _titleLabel.textColor = [UIColor cell:[ConductorData kContentCropString]];
        //: _titleLabel.textAlignment = NSTextAlignmentLeft;
        _titleLabel.textAlignment = NSTextAlignmentLeft;
        //: _titleLabel.numberOfLines = 1;
        _titleLabel.numberOfLines = 1;
        //: _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _titleLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _titleLabel;
    return _titleLabel;
}

//: - (BOOL)shouldHideActionButton
- (BOOL)inhibitionBarButton
{
    //: NIMSystemNotificationType type = self.notification.type;
    NIMSystemNotificationType type = self.notification.type;
    //: BOOL handled = self.notification.handleStatus != 0;
    BOOL handled = self.notification.handleStatus != 0;
    //: BOOL needHandle = NO;
    BOOL needHandle = NO;
    //: if (type == NIMSystemNotificationTypeTeamApply ||
    if (type == NIMSystemNotificationTypeTeamApply ||
        //: type == NIMSystemNotificationTypeTeamInvite ||
        type == NIMSystemNotificationTypeTeamInvite ||
        //: type == NIMSystemNotificationTypeSuperTeamApply ||
        type == NIMSystemNotificationTypeSuperTeamApply ||
        //: type == NIMSystemNotificationTypeSuperTeamInvite) {
        type == NIMSystemNotificationTypeSuperTeamInvite) {
        //: needHandle = YES;
        needHandle = YES;
    }
    //: if (type == NIMSystemNotificationTypeFriendAdd) {
    if (type == NIMSystemNotificationTypeFriendAdd) {
        //: id object = self.notification.attachment;
        id object = self.notification.attachment;
        //: if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
        if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
            //: NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
            NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
            //: needHandle = operation == NIMUserOperationRequest;
            needHandle = operation == NIMUserOperationRequest;
        }
    }
    //: return !(!handled && needHandle);
    return !(!handled && needHandle);

}


//: - (YYLabel *)messageLabel {
- (YYLabel *)messageLabel {
    //: if (!_messageLabel) {
    if (!_messageLabel) {
        //: _messageLabel = [[YYLabel alloc] initWithFrame:CGRectMake(self.titleLabel.left, self.timeLabel.bottom, self.titleLabel.width, 20)];
        _messageLabel = [[YYLabel alloc] initWithFrame:CGRectMake(self.titleLabel.left, self.timeLabel.bottom, self.titleLabel.width, 20)];
        //: _messageLabel.font = [UIFont systemFontOfSize:12.f];
        _messageLabel.font = [UIFont systemFontOfSize:12.f];
//        _messageLabel.textContainerInset = UIEdgeInsetsMake(5, 5, 5, 5);
        //: _messageLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _messageLabel.textColor = [UIColor cell:[ConductorData kText_endData]];
        //: _messageLabel.textAlignment = NSTextAlignmentLeft;
        _messageLabel.textAlignment = NSTextAlignmentLeft;
//        _messageLabel.numberOfLines = 3;
//        _messageLabel.lineBreakMode = NSLineBreakByTruncatingMiddle;
//        _messageLabel.layer.cornerRadius = 6;
//        _messageLabel.layer.borderColor = TextColor_Subtitle.CGColor;
//        _messageLabel.layer.borderWidth = 1.f/[UIScreen mainScreen].scale;
//        _messageLabel.layer.masksToBounds = YES;
    }
    //: return _messageLabel;
    return _messageLabel;
}

//: - (void)onAcceptBtn{
- (void)pregnantChange{
    //: if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onAccept:)]){
    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(showwed:)]){
        //: [_actionDelegate onAccept:self.notification];
        [_actionDelegate showwed:self.notification];
    }
}

//: - (UILabel *)timeLabel {
- (UILabel *)timeLabel {
    //: if (!_timeLabel) {
    if (!_timeLabel) {
        //: _timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.titleLabel.left, self.titleLabel.bottom, self.titleLabel.width, 18)];
        _timeLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.titleLabel.left, self.titleLabel.bottom, self.titleLabel.width, 18)];
        //: _timeLabel.font = [UIFont systemFontOfSize:12.f];
        _timeLabel.font = [UIFont systemFontOfSize:12.f];
        //: _timeLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        _timeLabel.textColor = [UIColor cell:[ConductorData kText_endData]];
        //: _timeLabel.textAlignment = NSTextAlignmentLeft;
        _timeLabel.textAlignment = NSTextAlignmentLeft;
        //: _timeLabel.numberOfLines = 1;
        _timeLabel.numberOfLines = 1;
        //: _timeLabel.lineBreakMode = NSLineBreakByTruncatingTail;
        _timeLabel.lineBreakMode = NSLineBreakByTruncatingTail;
    }
    //: return _timeLabel;
    return _timeLabel;
}

//: - (void)onRefusebtn {
- (void)pinUser {
    //: if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onRefuse:)]){
    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(queryedRefuse:)]){
        //: [_actionDelegate onRefuse:self.notification];
        [_actionDelegate queryedRefuse:self.notification];
    }
}
//: - (void)updateUI{
- (void)canUi{
    //: BOOL hideActionButton = [self shouldHideActionButton];
    BOOL hideActionButton = [self inhibitionBarButton];

    //: [self.acceptButton setHidden:hideActionButton];
    [self.acceptButton setHidden:hideActionButton];
    //: [self.refuseButton setHidden:hideActionButton];
    [self.refuseButton setHidden:hideActionButton];
    //: if(hideActionButton) {
    if(hideActionButton) {
        //: self.handleInfoLabel.hidden = NO;
        self.handleInfoLabel.hidden = NO;
        //: switch (self.notification.handleStatus) {
        switch (self.notification.handleStatus) {
            //: case NotificationHandleTypeOk:
            case NotificationHandleTypeOk:
                //: self.handleInfoLabel.text = [DisplayLanguageManager getTextWithKey:@"message_helper_already_ok"];
                self.handleInfoLabel.text = [MakeManager cell:[ConductorData kTitle_deviceTargetValue]];//@"已同意".nim_localized;
                //: break;
                break;
            //: case NotificationHandleTypeNo:
            case NotificationHandleTypeNo:
                //: self.handleInfoLabel.text = [DisplayLanguageManager getTextWithKey:@"message_helper_already_no"];
                self.handleInfoLabel.text = [MakeManager cell:[ConductorData kNameHideEndString]];//@"已拒绝".nim_localized;
                //: break;
                break;
            //: case NotificationHandleTypeOutOfDate:
            case NotificationHandleTypeOutOfDate:
                //: self.handleInfoLabel.text = [DisplayLanguageManager getTextWithKey:@"message_helper_already_time"];
                self.handleInfoLabel.text = [MakeManager cell:[ConductorData kTitleNimLastString]];//@"已过期".nim_localized;
                //: break;
                break;
            //: default:
            default:
                //: self.handleInfoLabel.text = [DisplayLanguageManager getTextWithKey:@"is_read"];
                self.handleInfoLabel.text = [MakeManager cell:[ConductorData kTitle_onData]];
                //: break;
                break;
        }
    //: } else {
    } else {
        //: self.handleInfoLabel.hidden = YES;
        self.handleInfoLabel.hidden = YES;
    }


    //: self.timeLabel.text = [DisplayKitUtil showTime:self.notification.timestamp showDetail:YES];
    self.timeLabel.text = [AtPull account:self.notification.timestamp notice:YES];

    //: NSString *sourceID = self.notification.sourceID;
    NSString *sourceID = self.notification.sourceID;
    //: DisplayKitInfo *sourceMember = [[MyUserKit sharedKit] infoByUser:sourceID option:nil];
    CancelTeamCorner *sourceMember = [[Mortification text] tingVoice:sourceID keepingOption:nil];
    //: [self updateSourceMember:sourceMember];
    [self pathRed:sourceMember];
}

//: - (void)update:(NIMSystemNotification *)notification{
- (void)openWith:(NIMSystemNotification *)notification{
    //: self.notification = notification;
    self.notification = notification;
    //: [self updateUI];
    [self canUi];
}
//- (void)awakeFromNib{
//    [super awakeFromNib];
//    self.textLabel.lineBreakMode = NSLineBreakByTruncatingMiddle;
//    self.detailTextLabel.backgroundColor = [UIColor clearColor];
//    self.detailTextLabel.lineBreakMode = NSLineBreakByTruncatingMiddle;
//    self.avatarImageView = [[MemoryImageControl alloc] initWithFrame:CGRectMake(0, 0, 40, 40)];
//    [self.contentView addSubview:self.avatarImageView];
//
////    UIButton *a = (UIButton *)self.acceptButton;
////    UIButton *b = (UIButton *)self.refuseButton;
////    [a setTitle:LangKey(@"request_add_accept") forState:UIControlStateNormal];
////    [b setTitle:LangKey(@"request_add_reject") forState:UIControlStateNormal];
//
//}
//
//- (void)update:(NIMSystemNotification *)notification{
//    self.notification = notification;
//    [self updateUI];
//}
//
//- (void)updateUI{
//    BOOL hideActionButton = [self shouldHideActionButton];
//
//    [self.acceptButton setHidden:hideActionButton];
//    [self.refuseButton setHidden:hideActionButton];
//    if(hideActionButton) {
//        self.handleInfoLabel.hidden = NO;
//        switch (self.notification.handleStatus) {
//            case NotificationHandleTypeOk:
//                self.handleInfoLabel.text = LangKey(@"message_helper_already_ok");//@"已同意".user_localized;
//                break;
//            case NotificationHandleTypeNo:
//                self.handleInfoLabel.text = LangKey(@"message_helper_already_no");//@"已拒绝".user_localized;
//                break;
//            case NotificationHandleTypeOutOfDate:
//                self.handleInfoLabel.text = LangKey(@"message_helper_already_time");//@"已过期".user_localized;
//                break;
//            default:
//                self.handleInfoLabel.text = nil;
//                break;
//        }
//    } else {
//        self.handleInfoLabel.hidden = YES;
//    }
//
//
//    NSString *sourceID = self.notification.sourceID;
//    CancelTeamCorner *sourceMember = [[Mortification sharedKit] infoByUser:sourceID option:nil];
//    [self updateSourceMember:sourceMember];
//}
//
//- (void)updateSourceMember:(CancelTeamCorner *)sourceMember{
//    NIMSystemNotificationType type = self.notification.type;
//    NSString *avatarUrlString = sourceMember.avatarUrlString;
//    NSURL *url;
//    if (avatarUrlString.length) {
//        url = [NSURL URLWithString:avatarUrlString];
//    }
//    [self.avatarImageView nim_setImageWithURL:url placeholderImage:sourceMember.avatarImage options:SDWebImageRetryFailed];
//    self.textLabel.text        = sourceMember.showName;
//    [self.textLabel sizeToFit];
//    switch (type) {
//        case NIMSystemNotificationTypeTeamApply:
//        {
//            NSString *message_helper_apply_to_group = LangKey(@"message_helper_apply_to_group");//@"申请加入群".user_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@",message_helper_apply_to_group, team.teamName];
//        }
//            break;
//        case NIMSystemNotificationTypeTeamApplyReject:
//        {
//            NSString *contact_fragment_group = LangKey(@"contact_fragment_group");//@"群".user_localized
//            NSString *message_helper_refuse_you = LangKey(@"message_helper_refuse_you");//@"拒绝你加入".user_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
//                                         contact_fragment_group,
//                                         team.teamName,
//                                         message_helper_refuse_you];
//        }
//            break;
//        case NIMSystemNotificationTypeTeamInvite:
//        {
//            NSString *contact_fragment_group = LangKey(@"contact_fragment_group");//@"群".user_localized
//            NSString *invite_you_group = LangKey(@"invite_you_group");//@"邀请你加入".user_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
//
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@ %@ attach:%@",
//                                         contact_fragment_group,
//                                         team.teamName,
//                                         invite_you_group,
//                                         self.notification.notifyExt ? : @""];
//        }
//            break;
//        case NIMSystemNotificationTypeTeamIviteReject:
//        {
//            NSString *message_helper_refuse_group = LangKey(@"message_helper_refuse_group");
//            NSString *message_helper_invite = LangKey(@"message_helper_invite");//@"邀请".user_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].teamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@ %@",
//                                         message_helper_refuse_group,
//                                         team.teamName,
//                                         message_helper_invite];
//        }
//            break;
//        case NIMSystemNotificationTypeSuperTeamApply:
//        {
//            NSString *apply_join_supergroup = LangKey(@"apply_join_supergroup");//@"申请加入超大群 %@".user_localized
//            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:apply_join_supergroup, team.teamName];
//            break;
//        }
//        case NIMSystemNotificationTypeSuperTeamApplyReject:
//        {
//            NSString *large_group = LangKey(@"large_group");//超大群
//            NSString *to_deny_entry = LangKey(@"to_deny_entry");//拒绝你加入
//            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@ %@",large_group, team.teamName,to_deny_entry];
//            break;
//        }
//        case NIMSystemNotificationTypeSuperTeamInvite:
//        {
//            NSString *large_group = LangKey(@"large_group");//超大群
//            NSString *invite_you_join_us = LangKey(@"invite_you_join_us");//邀请你加入
//            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@  %@",large_group, team.teamName,invite_you_join_us];
//            break;
//        }
//        case NIMSystemNotificationTypeSuperTeamIviteReject:
//        {
//            NSString *rejected_group_invitation = LangKey(@"rejected_group_invitation");
//            NIMTeam *team = [[NIMSDK sharedSDK].superTeamManager teamById:self.notification.targetID];
//            self.detailTextLabel.text = [NSString stringWithFormat:@"%@ %@",rejected_group_invitation, team.teamName];
//            break;
//        }
//        case NIMSystemNotificationTypeFriendAdd:
//        {
//            NSString *text = @"未知请求".user_localized;
//            id object = self.notification.attachment;
//            if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
//                NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
//                NSString *serverExt = [(NIMUserAddAttachment *)object serverExt];
//
//                switch (operation) {
//                    case NIMUserOperationAdd:
//                        text = LangKey(@"message_helper_already_add");//@"已添加你为好友".user_localized;
//                        break;
//                    case NIMUserOperationRequest:
//                        text = LangKey(@"request_add_you_as_a_friend");//@"请求添加你为好友".user_localized;
//                        break;
//                    case NIMUserOperationVerify:
//                        text = LangKey(@"message_helper_allow_you_apply");//@"通过了你的好友请求".user_localized;
//                        break;
//                    case NIMUserOperationReject:
//                        text = LangKey(@"message_helper_refuse_you_apply");//@"拒绝了你的好友请求".user_localized;
//                        break;
//                    default:
//                        break;
//                }
//
//                if (serverExt && [serverExt length]) {
//                    text = [NSString stringWithFormat:@"%@（%@）", text, serverExt];
//                }
//            }
//
//            self.detailTextLabel.text = text;
//        }
//            break;
//        default:
//            break;
//    }
//    [self.detailTextLabel sizeToFit];
//    self.messageLabel.text = self.notification.postscript;
//    [self.messageLabel sizeToFit];
//    [self setNeedsLayout];
//}
//
//- (IBAction)onAccept:(id)sender {
//    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onAccept:)]){
//        [_actionDelegate onAccept:self.notification];
//    }
//}
//- (IBAction)onRefuse:(id)sender {
//    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onRefuse:)]){
//        [_actionDelegate onRefuse:self.notification];
//    }
//}
//
//- (BOOL)shouldHideActionButton
//{
//    NIMSystemNotificationType type = self.notification.type;
//    BOOL handled = self.notification.handleStatus != 0;
//    BOOL needHandle = NO;
//    if (type == NIMSystemNotificationTypeTeamApply ||
//        type == NIMSystemNotificationTypeTeamInvite ||
//        type == NIMSystemNotificationTypeSuperTeamApply ||
//        type == NIMSystemNotificationTypeSuperTeamInvite) {
//        needHandle = YES;
//    }
//    if (type == NIMSystemNotificationTypeFriendAdd) {
//        id object = self.notification.attachment;
//        if ([object isKindOfClass:[NIMUserAddAttachment class]]) {
//            NIMUserOperation operation = [(NIMUserAddAttachment *)object operationType];
//            needHandle = operation == NIMUserOperationRequest;
//        }
//    }
//    return !(!handled && needHandle);
//
//}
//
//#define MaxTextLabelWidth 120.0 * UISreenWidthScale
//#define MaxDetailLabelWidth 160.0 * UISreenWidthScale
//#define MaxMessageLabelWidth 150.0 * UISreenWidthScale
//#define TextLabelAndMessageLabelSpacing 20.f
//#define AvatarImageViewLeft 15.f
//#define MessageAndAvatarSpacing 15.f
//- (void)layoutSubviews{
//    [super layoutSubviews];
//    self.avatarImageView.centerY = self.height * .5f;
//    self.avatarImageView.left = AvatarImageViewLeft;
//    if (self.textLabel.width > MaxTextLabelWidth) {
//        self.textLabel.width = MaxTextLabelWidth;
//    }
//    if (self.detailTextLabel.width > MaxDetailLabelWidth) {
//        self.detailTextLabel.width = MaxDetailLabelWidth;
//    }
//    self.textLabel.left = self.avatarImageView.right + MessageAndAvatarSpacing;
//    self.detailTextLabel.left = self.textLabel.left;
//    self.detailTextLabel.bottom = self.avatarImageView.bottom;
//
////    if (self.messageLabel.width > MaxMessageLabelWidth) {
////        self.messageLabel.width = MaxMessageLabelWidth;
////    }
////    self.messageLabel.left = self.textLabel.right + TextLabelAndMessageLabelSpacing;
//
//}

//: @end
@end
