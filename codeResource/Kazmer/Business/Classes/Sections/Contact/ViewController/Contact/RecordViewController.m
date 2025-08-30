
#import <Foundation/Foundation.h>

typedef struct {
    Byte play;
    Byte *team;
    unsigned int topContent;
	int light;
	int targetLoopDevice;
} StructTrademarkData;

@interface TrademarkData : NSObject

@end

@implementation TrademarkData

//: #2C3042
+ (NSString *)kTitle_teamString {
    /* static */ NSString *kTitle_teamString = nil;
    if (!kTitle_teamString) {
        StructTrademarkData value = (StructTrademarkData){148, (Byte []){183, 166, 215, 167, 164, 160, 166, 206}, 7, 91, 67};
        kTitle_teamString = [self StringFromTrademarkData:&value];
    }
    return kTitle_teamString;
}

//: /user/checkAddFriendEx
+ (NSString *)kTitle_toData {
    /* static */ NSString *kTitle_toData = nil;
    if (!kTitle_toData) {
        StructTrademarkData value = (StructTrademarkData){183, (Byte []){152, 194, 196, 210, 197, 152, 212, 223, 210, 212, 220, 246, 211, 211, 241, 197, 222, 210, 217, 211, 242, 207, 75}, 22, 169, 146};
        kTitle_toData = [self StringFromTrademarkData:&value];
    }
    return kTitle_toData;
}

//: uid
+ (NSString *)kText_pinModelValue {
    /* static */ NSString *kText_pinModelValue = nil;
    if (!kText_pinModelValue) {
        StructTrademarkData value = (StructTrademarkData){20, (Byte []){97, 125, 112, 65}, 3, 58, 65};
        kText_pinModelValue = [self StringFromTrademarkData:&value];
    }
    return kText_pinModelValue;
}

//: add_friend_activity_add_friend
+ (NSString *)kTitleModelText {
    /* static */ NSString *kTitleModelText = nil;
    if (!kTitleModelText) {
        StructTrademarkData value = (StructTrademarkData){147, (Byte []){242, 247, 247, 204, 245, 225, 250, 246, 253, 247, 204, 242, 240, 231, 250, 229, 250, 231, 234, 204, 242, 247, 247, 204, 245, 225, 250, 246, 253, 247, 153}, 30, 31, 59};
        kTitleModelText = [self StringFromTrademarkData:&value];
    }
    return kTitleModelText;
}

//: request_successful
+ (NSString *)kName_frameValue {
    /* static */ NSString *kName_frameValue = nil;
    if (!kName_frameValue) {
        StructTrademarkData value = (StructTrademarkData){206, (Byte []){188, 171, 191, 187, 171, 189, 186, 145, 189, 187, 173, 173, 171, 189, 189, 168, 187, 162, 214}, 18, 204, 70};
        kName_frameValue = [self StringFromTrademarkData:&value];
    }
    return kName_frameValue;
}

//: add_friend_request_fail
+ (NSString *)kContent_tapData {
    /* static */ NSString *kContent_tapData = nil;
    if (!kContent_tapData) {
        StructTrademarkData value = (StructTrademarkData){233, (Byte []){136, 141, 141, 182, 143, 155, 128, 140, 135, 141, 182, 155, 140, 152, 156, 140, 154, 157, 182, 143, 136, 128, 133, 79}, 23, 61, 22};
        kContent_tapData = [self StringFromTrademarkData:&value];
    }
    return kContent_tapData;
}

//: ic_scan
+ (NSString *)kText_tapAtValueString {
    /* static */ NSString *kText_tapAtValueString = nil;
    if (!kText_tapAtValueString) {
        StructTrademarkData value = (StructTrademarkData){34, (Byte []){75, 65, 125, 81, 65, 67, 76, 215}, 7, 213, 140};
        kText_tapAtValueString = [self StringFromTrademarkData:&value];
    }
    return kText_tapAtValueString;
}

//: add_friend_activity_input_account
+ (NSString *)kTitleCellString {
    /* static */ NSString *kTitleCellString = nil;
    if (!kTitleCellString) {
        StructTrademarkData value = (StructTrademarkData){111, (Byte []){14, 11, 11, 48, 9, 29, 6, 10, 1, 11, 48, 14, 12, 27, 6, 25, 6, 27, 22, 48, 6, 1, 31, 26, 27, 48, 14, 12, 12, 0, 26, 1, 27, 77}, 33, 215, 172};
        kTitleCellString = [self StringFromTrademarkData:&value];
    }
    return kTitleCellString;
}

//: my_qr
+ (NSString *)kNameShowString {
    /* static */ NSString *kNameShowString = nil;
    if (!kNameShowString) {
        StructTrademarkData value = (StructTrademarkData){215, (Byte []){186, 174, 136, 166, 165, 58}, 5, 88, 192};
        kNameShowString = [self StringFromTrademarkData:&value];
    }
    return kNameShowString;
}

//: hot_guys
+ (NSString *)kTitle_atLastName {
    /* static */ NSString *kTitle_atLastName = nil;
    if (!kTitle_atLastName) {
        StructTrademarkData value = (StructTrademarkData){50, (Byte []){90, 93, 70, 109, 85, 71, 75, 65, 54}, 8, 56, 47};
        kTitle_atLastName = [self StringFromTrademarkData:&value];
    }
    return kTitle_atLastName;
}

//: back_arrow_bl
+ (NSString *)kTitle_loopValue {
    /* static */ NSString *kTitle_loopValue = nil;
    if (!kTitle_loopValue) {
        StructTrademarkData value = (StructTrademarkData){204, (Byte []){174, 173, 175, 167, 147, 173, 190, 190, 163, 187, 147, 174, 160, 91}, 13, 67, 41};
        kTitle_loopValue = [self StringFromTrademarkData:&value];
    }
    return kTitle_loopValue;
}

//: #4B43DE
+ (NSString *)kName_topData {
    /* static */ NSString *kName_topData = nil;
    if (!kName_topData) {
        StructTrademarkData value = (StructTrademarkData){96, (Byte []){67, 84, 34, 84, 83, 36, 37, 76}, 7, 62, 250};
        kName_topData = [self StringFromTrademarkData:&value];
    }
    return kName_topData;
}

//: /user/search
+ (NSString *)kTitleShowData {
    /* static */ NSString *kTitleShowData = nil;
    if (!kTitleShowData) {
        StructTrademarkData value = (StructTrademarkData){50, (Byte []){29, 71, 65, 87, 64, 29, 65, 87, 83, 64, 81, 90, 122}, 12, 125, 20};
        kTitleShowData = [self StringFromTrademarkData:&value];
    }
    return kTitleShowData;
}

//: icon_search_w
+ (NSString *)kTitle_redValue {
    /* static */ NSString *kTitle_redValue = nil;
    if (!kTitle_redValue) {
        StructTrademarkData value = (StructTrademarkData){230, (Byte []){143, 133, 137, 136, 185, 149, 131, 135, 148, 133, 142, 185, 145, 29}, 13, 44, 25};
        kTitle_redValue = [self StringFromTrademarkData:&value];
    }
    return kTitle_redValue;
}

//: msg
+ (NSString *)kText_tapValue {
    /* static */ NSString *kText_tapValue = nil;
    if (!kText_tapValue) {
        StructTrademarkData value = (StructTrademarkData){51, (Byte []){94, 64, 84, 131}, 3, 62, 137};
        kText_tapValue = [self StringFromTrademarkData:&value];
    }
    return kText_tapValue;
}

//: #EEEEEE
+ (NSString *)kText_frameValue {
    /* static */ NSString *kText_frameValue = nil;
    if (!kText_frameValue) {
        StructTrademarkData value = (StructTrademarkData){50, (Byte []){17, 119, 119, 119, 119, 119, 119, 74}, 7, 165, 116};
        kText_frameValue = [self StringFromTrademarkData:&value];
    }
    return kText_frameValue;
}

+ (Byte *)TrademarkDataToByte:(StructTrademarkData *)data {
    for (int i = 0; i < data->topContent; i++) {
        data->team[i] ^= data->play;
    }
    data->team[data->topContent] = 0;
	if (data->topContent >= 2) {
		data->light = data->team[0];
		data->targetLoopDevice = data->team[1];
	}
    return data->team;
}

//: contact_tag_fragment_add_success
+ (NSString *)kTitleMainData {
    /* static */ NSString *kTitleMainData = nil;
    if (!kTitleMainData) {
        StructTrademarkData value = (StructTrademarkData){197, (Byte []){166, 170, 171, 177, 164, 166, 177, 154, 177, 164, 162, 154, 163, 183, 164, 162, 168, 160, 171, 177, 154, 164, 161, 161, 154, 182, 176, 166, 166, 160, 182, 182, 166}, 32, 249, 122};
        kTitleMainData = [self StringFromTrademarkData:&value];
    }
    return kTitleMainData;
}

//: group_info_activity_number_no
+ (NSString *)kTitleFlushString {
    /* static */ NSString *kTitleFlushString = nil;
    if (!kTitleFlushString) {
        StructTrademarkData value = (StructTrademarkData){104, (Byte []){15, 26, 7, 29, 24, 55, 1, 6, 14, 7, 55, 9, 11, 28, 1, 30, 1, 28, 17, 55, 6, 29, 5, 10, 13, 26, 55, 6, 7, 209}, 29, 19, 235};
        kTitleFlushString = [self StringFromTrademarkData:&value];
    }
    return kTitleFlushString;
}

//: add_friend_add_fail
+ (NSString *)kTextRecentTeamName {
    /* static */ NSString *kTextRecentTeamName = nil;
    if (!kTextRecentTeamName) {
        StructTrademarkData value = (StructTrademarkData){118, (Byte []){23, 18, 18, 41, 16, 4, 31, 19, 24, 18, 41, 23, 18, 18, 41, 16, 23, 31, 26, 57}, 19, 21, 157};
        kTextRecentTeamName = [self StringFromTrademarkData:&value];
    }
    return kTextRecentTeamName;
}

//: code
+ (NSString *)kTitleSharedHideName {
    /* static */ NSString *kTitleSharedHideName = nil;
    if (!kTitleSharedHideName) {
        StructTrademarkData value = (StructTrademarkData){140, (Byte []){239, 227, 232, 233, 175}, 4, 114, 237};
        kTitleSharedHideName = [self StringFromTrademarkData:&value];
    }
    return kTitleSharedHideName;
}

//: /user/recommend
+ (NSString *)kName_recordValue {
    /* static */ NSString *kName_recordValue = nil;
    if (!kName_recordValue) {
        StructTrademarkData value = (StructTrademarkData){68, (Byte []){107, 49, 55, 33, 54, 107, 54, 33, 39, 43, 41, 41, 33, 42, 32, 21}, 15, 212, 167};
        kName_recordValue = [self StringFromTrademarkData:&value];
    }
    return kName_recordValue;
}

//: fuid
+ (NSString *)kNameExamineedData {
    /* static */ NSString *kNameExamineedData = nil;
    if (!kNameExamineedData) {
        StructTrademarkData value = (StructTrademarkData){221, (Byte []){187, 168, 180, 185, 157}, 4, 71, 121};
        kNameExamineedData = [self StringFromTrademarkData:&value];
    }
    return kNameExamineedData;
}

//: please_contact_your_administrator
+ (NSString *)kTitleHideData {
    /* static */ NSString *kTitleHideData = nil;
    if (!kTitleHideData) {
        StructTrademarkData value = (StructTrademarkData){127, (Byte []){15, 19, 26, 30, 12, 26, 32, 28, 16, 17, 11, 30, 28, 11, 32, 6, 16, 10, 13, 32, 30, 27, 18, 22, 17, 22, 12, 11, 13, 30, 11, 16, 13, 241}, 33, 5, 1};
        kTitleHideData = [self StringFromTrademarkData:&value];
    }
    return kTitleHideData;
}

//: #333333
+ (NSString *)kTitle_hideText {
    /* static */ NSString *kTitle_hideText = nil;
    if (!kTitle_hideText) {
        StructTrademarkData value = (StructTrademarkData){155, (Byte []){184, 168, 168, 168, 168, 168, 168, 68}, 7, 109, 79};
        kTitle_hideText = [self StringFromTrademarkData:&value];
    }
    return kTitle_hideText;
}

//: #FAF8FD
+ (NSString *)kText_scaleRecordData {
    /* static */ NSString *kText_scaleRecordData = nil;
    if (!kText_scaleRecordData) {
        StructTrademarkData value = (StructTrademarkData){167, (Byte []){132, 225, 230, 225, 159, 225, 227, 63}, 7, 16, 95};
        kText_scaleRecordData = [self StringFromTrademarkData:&value];
    }
    return kText_scaleRecordData;
}

+ (NSString *)StringFromTrademarkData:(StructTrademarkData *)data {
    return [NSString stringWithUTF8String:(char *)[self TrademarkDataToByte:data]];
}

//: tuid
+ (NSString *)kTitle_deviceValue {
    /* static */ NSString *kTitle_deviceValue = nil;
    if (!kTitle_deviceValue) {
        StructTrademarkData value = (StructTrademarkData){101, (Byte []){17, 16, 12, 1, 132}, 4, 210, 196};
        kTitle_deviceValue = [self StringFromTrademarkData:&value];
    }
    return kTitle_deviceValue;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  RecordViewController.m
//  NIM
//
//  Created by chris on 15/8/18.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERContactAddFriendViewController.h"
#import "RecordViewController.h"
//: #import "USERContactAddFriendCell.h"
#import "TitleMakeView.h"
//: #import "UIView+Toast.h"
#import "UIView+Toast.h"
//: #import "SVProgressHUD.h"
#import "SVProgressHUD.h"
//: #import "USERPersonalCardViewController.h"
#import "CornerViewController.h"
//: #import "USERUserQRCodeViewController.h"
#import "CellViewController.h"
//: #import "SNDevice.h"
#import "TranslateSize.h"
//: #import "CCCLoginManager.h"
#import "BlendManager.h"
//: #import "UIAlertView+USERBlock.h"
#import "UIAlertView+NameAddContent.h"
//: #import "UIView+USER.h"
#import "UIView+Turn.h"
//: #import "LCQRCodeUtil.h"
#import "AggregationUtil.h"
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>
//: #import "CCCContactScanViewController.h"
#import "MessageNameViewController.h"
//: #import "ZMONMyQRcodeView.h"
#import "RemarkView.h"
//: #import "ZMONFriendCardViewController.h"
#import "RedViewController.h"
//: #import "RecommendfriendTableViewCell.h"
#import "InsideView.h"

//: @interface USERContactAddFriendViewController ()<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource,RecommendfriendCellDelegate>
@interface RecordViewController ()<UITextFieldDelegate,UITableViewDelegate,UITableViewDataSource,TagDelegate>

//: @property (nonatomic ,strong) UIImageView *qrImgview;
@property (nonatomic ,strong) UIImageView *qrImgview;
//: @property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) UITableView *tableView;
//: @property (nonatomic ,strong) UILabel *accountLabel;
@property (nonatomic ,strong) UILabel *accountLabel;
//: @property (nonatomic ,strong) ZMONMyQRcodeView *MyQRcodeView;
@property (nonatomic ,strong) RemarkView *MyQRcodeView;

//: @property (nonatomic ,strong) UILabel *tipsLabel;
@property (nonatomic ,strong) UILabel *tipsLabel;

//: @property (nonatomic,copy) NSArray *friendList;
@property (nonatomic,copy) NSArray *friendList;
//: @property (nonatomic ,strong) UITextField *textField;
@property (nonatomic ,strong) UITextField *textField;

//: @end
@end

//: @implementation USERContactAddFriendViewController
@implementation RecordViewController

//: - (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    //: return 12.f;
    return 12.f;
}

//: - (void)didTouchAdddButton:(NSString *)memberId
- (void)osculating:(NSString *)memberId
{
    //: NSString *tempVerificationInfo = [NIMUserDefaults standardUserDefaults].tempVerificationInfo;
    NSString *tempVerificationInfo = [TableContext name].tempVerificationInfo;
    //: NIMUserRequest *request = [[NIMUserRequest alloc] init];
    NIMUserRequest *request = [[NIMUserRequest alloc] init];
    //: request.userId = memberId;
    request.userId = memberId;
    //: request.operation = NIMUserOperationAdd;
    request.operation = NIMUserOperationAdd;
    //: request.operation = NIMUserOperationRequest;
    request.operation = NIMUserOperationRequest;
    //: request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";
    request.message = tempVerificationInfo.length > 0 ? tempVerificationInfo : @"";

    //: NSString *contact_tag_fragment_add_success = [DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_add_success"];
    NSString *contact_tag_fragment_add_success = [MakeManager cell:[TrademarkData kTitleMainData]];//@"添加成功".
    //: NSString *request_successful = [DisplayLanguageManager getTextWithKey:@"request_successful"];
    NSString *request_successful = [MakeManager cell:[TrademarkData kName_frameValue]];//@"请求成功".
    //: NSString *add_friend_add_fail = [DisplayLanguageManager getTextWithKey:@"add_friend_add_fail"];
    NSString *add_friend_add_fail = [MakeManager cell:[TrademarkData kTextRecentTeamName]];//@"添加失败".
    //: NSString *add_friend_request_fail = [DisplayLanguageManager getTextWithKey:@"add_friend_request_fail"];
    NSString *add_friend_request_fail = [MakeManager cell:[TrademarkData kContent_tapData]];//@"请求失败".
    //: NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    NSString *successText = request.operation == NIMUserOperationAdd ? contact_tag_fragment_add_success: request_successful;
    //: NSString *failedText = request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;
    NSString *failedText = request.operation == NIMUserOperationAdd ? add_friend_add_fail : add_friend_request_fail;

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [SVProgressHUD show];
    [SVProgressHUD show];

    //: [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
    [[NIMSDK sharedSDK].userManager requestFriend:request completion:^(NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (!error) {
        if (!error) {
            //: [wself.view makeToast:successText
            [wself.view makeToast:successText
                         //: duration:2.0f
                         duration:2.0f
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        //: }else{
        }else{
            //: [wself.view makeToast:failedText
            [wself.view makeToast:failedText
                         //: duration:2.0f
                         duration:2.0f
                         //: position:CSToastPositionCenter];
                         position:CSToastPositionCenter];
        }
    //: }];
    }];
}

//: -(void)checkIsAdmin:(NSString *)userId{
-(void)blue:(NSString *)userId{

    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: dict[@"fuid"] = [[NIMSDK sharedSDK].loginManager currentAccount];
    dict[[TrademarkData kNameExamineedData]] = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: dict[@"tuid"] = userId;
    dict[[TrademarkData kTitle_deviceValue]] = userId;

    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/checkAddFriendEx"] params:dict isShow:NO success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[TrademarkData kTitle_toData]] query:dict showThan:NO green:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict comment:[TrademarkData kTitleSharedHideName]];
        //: if (code.integerValue == 0) {
        if (code.integerValue == 0) {
            //跳转详情

            //: BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:userId];
            BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:userId];
            //: if (isMyFriend) {
            if (isMyFriend) {
                //: USERPersonalCardViewController *vc = [[USERPersonalCardViewController alloc] initWithUserId:userId];
                CornerViewController *vc = [[CornerViewController alloc] initWithRestoreSession:userId];
                //: [wself.navigationController pushViewController:vc animated:YES];
                [wself.navigationController pushViewController:vc animated:YES];
            //: }else{
            }else{
                //: ZMONFriendCardViewController *vc = [[ZMONFriendCardViewController alloc] initWithUserId:userId];
                RedViewController *vc = [[RedViewController alloc] initWithConsumerPressed:userId];
                //: [wself.navigationController pushViewController:vc animated:YES];
                [wself.navigationController pushViewController:vc animated:YES];
            }


        //: }else{
        }else{
            //: [wself.view makeToast:[DisplayLanguageManager getTextWithKey:@"please_contact_your_administrator"] duration:2.0 position:CSToastPositionCenter];
            [wself.view makeToast:[MakeManager cell:[TrademarkData kTitleHideData]] duration:2.0 position:CSToastPositionCenter];
        }
    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {
        //: [wself.view makeToast:[DisplayLanguageManager getTextWithKey:@"please_contact_your_administrator"] duration:2.0 position:CSToastPositionCenter];
        [wself.view makeToast:[MakeManager cell:[TrademarkData kTitleHideData]] duration:2.0 position:CSToastPositionCenter];
    //: }];
    }];
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
}

//: -(void)goSearch:(UITextField *)textField{
-(void)after:(UITextField *)textField{
    //: [self.view endEditing:YES];
    [self.view endEditing:YES];
    //: NSString *userId = [textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *userId = [textField.text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //: if (userId.length) {
    if (userId.length) {
        //: userId = [userId lowercaseString];
        userId = [userId lowercaseString];
        //: [self addFriend:userId];
        [self quick:userId];
    }
}

//: - (void)getNetServer{
- (void)deviceOf{

//    NSMutableDictionary *dict = @{}.mutableCopy;
//    dict[@"user_id"] = self.userId;
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/recommend"] params:nil isShow:NO success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[TrademarkData kName_recordValue]] query:nil showThan:NO green:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSLog(@"%@",resultDict);
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict comment:[TrademarkData kTitleSharedHideName]];
        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {

            //: self.friendList = [resultDict valueObjectForKey:@"data"];
            self.friendList = [resultDict buttonAt:@"data"];
            //: [self.tableView reloadData];
            [self.tableView reloadData];
        }

    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {

    //: }];
    }];
}

//: #pragma mark - UITableViewDelegate
#pragma mark - UITableViewDelegate
//: - (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    //: return self.friendList.count;
    return self.friendList.count;
}

//: #pragma mark - UITextFieldDelegate
#pragma mark - UITextFieldDelegate

//: - (BOOL)textFieldShouldReturn:(UITextField *)textField{
- (BOOL)textFieldShouldReturn:(UITextField *)textField{
    //: [self goSearch:textField];
    [self after:textField];
    //: return YES;
    return YES;
}

//: - (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    //: NSDictionary *dic = self.friendList[indexPath.section];
    NSDictionary *dic = self.friendList[indexPath.section];
    //: NSString *uId = [dic newStringValueForKey:@"id"];
    NSString *uId = [dic comment:@"id"];

//    BOOL isMyFriend = [[NIMSDK sharedSDK].userManager isMyFriend:uId];
//    if (isMyFriend) {
        //: USERPersonalCardViewController *vc = [[USERPersonalCardViewController alloc] initWithUserId:uId];
        CornerViewController *vc = [[CornerViewController alloc] initWithRestoreSession:uId];
        //: [self.navigationController pushViewController:vc animated:YES];
        [self.navigationController pushViewController:vc animated:YES];
//    }else{
//        RedViewController *vc = [[RedViewController alloc] initWithUserId:uId];
//        [self.navigationController pushViewController:vc animated:YES];
//    }

}

//: - (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    //: return 1;
    return 1;
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {

    //: return 72;
    return 72;
}

//: - (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
- (UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //: RecommendfriendTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"RecommendfriendTableViewCell" forIndexPath:indexPath];
    InsideView *cell = [self.tableView dequeueReusableCellWithIdentifier:@"InsideView" forIndexPath:indexPath];
    //: cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    //: cell.delegate = self;
    cell.delegate = self;

    //: NSDictionary *dic = self.friendList[indexPath.section];
    NSDictionary *dic = self.friendList[indexPath.section];
//    NSString *uId = [dic newStringValueForKey:@"id"];

    //: [cell refreshWithModel:dic];
    [cell displayTing:dic];

    //: return cell;
    return cell;
}

//: - (void)gotoBack:(id)sender {
- (void)frameworking:(id)sender {
    //: [self.navigationController popViewControllerAnimated:NO];
    [self.navigationController popViewControllerAnimated:NO];
}

//: - (ZMONMyQRcodeView *)MyQRcodeView
- (RemarkView *)MyQRcodeView
{
    //: if(!_MyQRcodeView){
    if(!_MyQRcodeView){
        //: _MyQRcodeView = [[ZMONMyQRcodeView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
        _MyQRcodeView = [[RemarkView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height)];
    }
    //: return _MyQRcodeView;
    return _MyQRcodeView;
}

//: - (UITextField *)textField{
- (UITextField *)textField{
    //: if(!_textField){
    if(!_textField){
        //: _textField = [[UITextField alloc]init];
        _textField = [[UITextField alloc]init];
        //: _textField.placeholder = [DisplayLanguageManager getTextWithKey:@"add_friend_activity_input_account"];
        _textField.placeholder = [MakeManager cell:[TrademarkData kTitleCellString]];
        //: _textField.textColor = [UIColor colorWithHexString:@"#333333"];
        _textField.textColor = [UIColor cell:[TrademarkData kTitle_hideText]];
        //: _textField.font = [UIFont systemFontOfSize:14];
        _textField.font = [UIFont systemFontOfSize:14];
        //: _textField.delegate = self;
        _textField.delegate = self;
        //: _textField.returnKeyType = UIReturnKeyDone;
        _textField.returnKeyType = UIReturnKeyDone;
    }
    //: return _textField;
    return _textField;
}

//: - (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
    //: return YES;
    return YES;
}

//: - (void)QRCodeButtnClick
- (void)nameName
{
//    [self.view addSubview:self.MyQRcodeView];
//    [self.MyQRcodeView animationShow];

    //: USERUserQRCodeViewController *vc = [[USERUserQRCodeViewController alloc]init];
    CellViewController *vc = [[CellViewController alloc]init];
    //: vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    vc.userID = [[NIMSDK sharedSDK].loginManager currentAccount];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}

//: - (void)doneSearch{
- (void)nimQuery{
    //: [self goSearch:_textField];
    [self after:_textField];
}

//: - (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    //: return .1f;
    return .1f;
}

//: -(void)scan{
-(void)sessionScan{
    //: CCCContactScanViewController *vc = [[CCCContactScanViewController alloc] init];
    MessageNameViewController *vc = [[MessageNameViewController alloc] init];
    //: [self.navigationController pushViewController:vc animated:YES];
    [self.navigationController pushViewController:vc animated:YES];
}


//: #pragma mark - Private
#pragma mark - Private
//: - (void)addFriend:(NSString *)userId
- (void)quick:(NSString *)userId
{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: NSMutableDictionary *dict = @{}.mutableCopy;
    NSMutableDictionary *dict = @{}.mutableCopy;
    //: [dict setObject:userId forKey:@"account"];
    [dict setObject:userId forKey:@"account"];
    //: [ZCHttpManager getWithUrl:[NSString stringWithFormat:@"/user/search"] params:dict isShow:YES success:^(id responseObject) {
    [BlendView read:[NSString stringWithFormat:[TrademarkData kTitleShowData]] query:dict showThan:YES green:^(id responseObject) {
        //: NSDictionary *resultDict = (NSDictionary *)responseObject;
        NSDictionary *resultDict = (NSDictionary *)responseObject;
        //: NSString *code = [resultDict newStringValueForKey:@"code"];
        NSString *code = [resultDict comment:[TrademarkData kTitleSharedHideName]];
        //: NSString *msg = [resultDict newStringValueForKey:@"msg"];
        NSString *msg = [resultDict comment:[TrademarkData kText_tapValue]];

        //: if (code.integerValue <= 0) {
        if (code.integerValue <= 0) {
            //: NSDictionary *data = [resultDict valueObjectForKey:@"data"];
            NSDictionary *data = [resultDict buttonAt:@"data"];
            //: NSString *uid = [data newStringValueForKey:@"uid"];
            NSString *uid = [data comment:[TrademarkData kText_pinModelValue]];
            //: [wself sendAddrequest:uid];
            [wself text:uid];

        //: }else {
        }else {

            //: [SVProgressHUD showMessage:msg];
            [SVProgressHUD firstTeam:msg];

        }
    //: } failed:^(id responseObject, NSError *error) {
    } blue:^(id responseObject, NSError *error) {

    //: }];
    }];

}

//: -(void)sendAddrequest:(NSString *)uid{
-(void)text:(NSString *)uid{
    //: __weak typeof(self) wself = self;
    __weak typeof(self) wself = self;
    //: [[NIMSDK sharedSDK].userManager fetchUserInfos:@[uid] completion:^(NSArray *users, NSError *error) {
    [[NIMSDK sharedSDK].userManager fetchUserInfos:@[uid] completion:^(NSArray *users, NSError *error) {
        //: [SVProgressHUD dismiss];
        [SVProgressHUD dismiss];
        //: if (users.count) {
        if (users.count) {
            //: [self checkIsAdmin:uid];
            [self blue:uid];
        //: }else{
        }else{
            //: if (wself) {
            if (wself) {
                //: [wself.view makeToast:[DisplayLanguageManager getTextWithKey:@"group_info_activity_number_no"] duration:2.0 position:CSToastPositionCenter];
                [wself.view makeToast:[MakeManager cell:[TrademarkData kTitleFlushString]] duration:2.0 position:CSToastPositionCenter];
            }
        }
    //: }];
    }];
}

//: - (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //: UIView *backView = [UIView new];
    UIView *backView = [UIView new];
    //: backView.backgroundColor = [UIColor clearColor];
    backView.backgroundColor = [UIColor clearColor];
    //: return backView;
    return backView;
}

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];


    //: UIView *navview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *navview = [[UIView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, (44.0f + [UIDevice comeDownSuperphylum]))];
    //: [self.view addSubview:navview];
    [self.view addSubview:navview];

    //: UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *backBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: backBtn.frame = CGRectMake(15, [UIDevice vg_statusBarHeight], 40, 40);
    backBtn.frame = CGRectMake(15, [UIDevice comeDownSuperphylum], 40, 40);
    //: [backBtn addTarget:self action:@selector(gotoBack:) forControlEvents:UIControlEventTouchUpInside];
    [backBtn addTarget:self action:@selector(frameworking:) forControlEvents:UIControlEventTouchUpInside];
    //: [backBtn setImage:[UIImage imageNamed:@"back_arrow_bl"] forState:UIControlStateNormal];
    [backBtn setImage:[UIImage imageNamed:[TrademarkData kTitle_loopValue]] forState:UIControlStateNormal];
    //: [navview addSubview:backBtn];
    [navview addSubview:backBtn];

    //: UILabel *labNavtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width, 44)];
    UILabel *labNavtitle = [[UILabel alloc]initWithFrame:CGRectMake(0, [UIDevice comeDownSuperphylum], [[UIScreen mainScreen] bounds].size.width, 44)];
    //: labNavtitle.textColor = [UIColor blackColor];
    labNavtitle.textColor = [UIColor blackColor];
    //: labNavtitle.font = [UIFont boldSystemFontOfSize:16];
    labNavtitle.font = [UIFont boldSystemFontOfSize:16];
    //: labNavtitle.text = [DisplayLanguageManager getTextWithKey:@"add_friend_activity_add_friend"];
    labNavtitle.text = [MakeManager cell:[TrademarkData kTitleModelText]];
    //: labNavtitle.textAlignment = NSTextAlignmentCenter;
    labNavtitle.textAlignment = NSTextAlignmentCenter;
    //: [navview addSubview:labNavtitle];
    [navview addSubview:labNavtitle];

    //: UIButton *myQrBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *myQrBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: myQrBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-40-15, [UIDevice vg_statusBarHeight], 40, 40);
    myQrBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-40-15, [UIDevice comeDownSuperphylum], 40, 40);
    //: [myQrBtn addTarget:self action:@selector(QRCodeButtnClick) forControlEvents:UIControlEventTouchUpInside];
    [myQrBtn addTarget:self action:@selector(nameName) forControlEvents:UIControlEventTouchUpInside];
    //: [myQrBtn setImage:[UIImage imageNamed:@"my_qr"] forState:UIControlStateNormal];
    [myQrBtn setImage:[UIImage imageNamed:[TrademarkData kNameShowString]] forState:UIControlStateNormal];
    //: [navview addSubview:myQrBtn];
    [navview addSubview:myQrBtn];


    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight]), [[UIScreen mainScreen] bounds].size.width, 80)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice comeDownSuperphylum]), [[UIScreen mainScreen] bounds].size.width, 80)];
    //: topview.backgroundColor = [UIColor whiteColor];
    topview.backgroundColor = [UIColor whiteColor];
    //: [self.view addSubview:topview];
    [self.view addSubview:topview];


    //: UIView *searchView = [[UIView alloc]initWithFrame:CGRectMake(15, 12, [[UIScreen mainScreen] bounds].size.width-30, 56)];
    UIView *searchView = [[UIView alloc]initWithFrame:CGRectMake(15, 12, [[UIScreen mainScreen] bounds].size.width-30, 56)];
    //: searchView.backgroundColor = [UIColor colorWithHexString:@"#FAF8FD"];
    searchView.backgroundColor = [UIColor cell:[TrademarkData kText_scaleRecordData]];
    //: searchView.layer.cornerRadius = 28;
    searchView.layer.cornerRadius = 28;
    //: [topview addSubview:searchView];
    [topview addSubview:searchView];

    //: UIButton *btnScan = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *btnScan = [UIButton buttonWithType:UIButtonTypeCustom];
    //: [btnScan addTarget:self action:@selector(scan) forControlEvents:UIControlEventTouchUpInside];
    [btnScan addTarget:self action:@selector(sessionScan) forControlEvents:UIControlEventTouchUpInside];
    //: btnScan.frame = CGRectMake(15, 8, 40, 40);
    btnScan.frame = CGRectMake(15, 8, 40, 40);
    //: [btnScan setImage:[UIImage imageNamed:@"ic_scan"] forState:UIControlStateNormal];
    [btnScan setImage:[UIImage imageNamed:[TrademarkData kText_tapAtValueString]] forState:UIControlStateNormal];
    //: [searchView addSubview:btnScan];
    [searchView addSubview:btnScan];


    //: [searchView addSubview:self.textField];
    [searchView addSubview:self.textField];
    //: self.textField.frame = CGRectMake(30+40, 0, [[UIScreen mainScreen] bounds].size.width-60-90, 56);
    self.textField.frame = CGRectMake(30+40, 0, [[UIScreen mainScreen] bounds].size.width-60-90, 56);


    //: UIButton *btnSearch = [UIButton buttonWithType:UIButtonTypeCustom];
    UIButton *btnSearch = [UIButton buttonWithType:UIButtonTypeCustom];
    //: btnSearch.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-60-8, 8, 60, 40);
    btnSearch.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-60-8, 8, 60, 40);
    //: [btnSearch setImage:[UIImage imageNamed:@"icon_search_w"] forState:UIControlStateNormal];
    [btnSearch setImage:[UIImage imageNamed:[TrademarkData kTitle_redValue]] forState:UIControlStateNormal];
    //: [btnSearch addTarget:self action:@selector(doneSearch) forControlEvents:UIControlEventTouchUpInside];
    [btnSearch addTarget:self action:@selector(nimQuery) forControlEvents:UIControlEventTouchUpInside];
    //: btnSearch.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
    btnSearch.backgroundColor = [UIColor cell:[TrademarkData kName_topData]];
    //: btnSearch.layer.cornerRadius = 20;
    btnSearch.layer.cornerRadius = 20;
    //: [searchView addSubview:btnSearch];
    [searchView addSubview:btnSearch];

    //: UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, 79, [[UIScreen mainScreen] bounds].size.width, 1)];
    UIView *lineview = [[UIView alloc]initWithFrame:CGRectMake(0, 79, [[UIScreen mainScreen] bounds].size.width, 1)];
    //: lineview.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
    lineview.backgroundColor = [UIColor cell:[TrademarkData kText_frameValue]];
    //: [topview addSubview:lineview];
    [topview addSubview:lineview];

    //: UILabel *labRecommended = [[UILabel alloc] initWithFrame:CGRectMake(15, topview.bottom+10, 200, 20)];
    UILabel *labRecommended = [[UILabel alloc] initWithFrame:CGRectMake(15, topview.bottom+10, 200, 20)];
    //: labRecommended.font = [UIFont systemFontOfSize:14.f];
    labRecommended.font = [UIFont systemFontOfSize:14.f];
    //: labRecommended.textColor = [UIColor colorWithHexString:@"#2C3042"];
    labRecommended.textColor = [UIColor cell:[TrademarkData kTitle_teamString]];
    //: labRecommended.text = [DisplayLanguageManager getTextWithKey:@"hot_guys"];
    labRecommended.text = [MakeManager cell:[TrademarkData kTitle_atLastName]];
    //: [self.view addSubview:labRecommended];
    [self.view addSubview:labRecommended];

    //: self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice vg_statusBarHeight])+110, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight])-110) style:UITableViewStyleGrouped];
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(15, (44.0f + [UIDevice comeDownSuperphylum])+110, [[UIScreen mainScreen] bounds].size.width-30, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice comeDownSuperphylum])-110) style:UITableViewStyleGrouped];
    //: self.tableView.backgroundColor = [UIColor clearColor];
    self.tableView.backgroundColor = [UIColor clearColor];
    //: self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    //: self.tableView.delegate = self;
    self.tableView.delegate = self;
    //: self.tableView.dataSource = self;
    self.tableView.dataSource = self;
    //: self.tableView.showsVerticalScrollIndicator = NO;
    self.tableView.showsVerticalScrollIndicator = NO;
    //: self.tableView.showsHorizontalScrollIndicator = NO;
    self.tableView.showsHorizontalScrollIndicator = NO;
    //: [self.view addSubview:self.tableView];
    [self.view addSubview:self.tableView];
    //: [self.tableView registerClass:[RecommendfriendTableViewCell class] forCellReuseIdentifier:@"RecommendfriendTableViewCell"];
    [self.tableView registerClass:[InsideView class] forCellReuseIdentifier:@"InsideView"];

    //: [self getNetServer];
    [self deviceOf];
}

//: @end
@end
//: __SAVE__ ignore_string [749.7,410.4]
