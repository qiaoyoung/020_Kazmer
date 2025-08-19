
#import <Foundation/Foundation.h>

@interface DuringRegulationData : NSObject

@end

@implementation DuringRegulationData

+ (Byte *)DuringRegulationDataToCache:(Byte *)data {
    int shipBar = data[0];
    int light = data[1];
    for (int i = 0; i < shipBar / 2; i++) {
        int begin = light + i;
        int end = light + shipBar - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[light + shipBar] = 0;
    return data + light;
}

+ (NSString *)StringFromDuringRegulationData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DuringRegulationDataToCache:data]];
}  

//: discovery
+ (NSString *)main_necessaryData {
    /* static */ NSString *main_necessaryData = nil;
    if (!main_necessaryData) {
        Byte value[] = {9, 9, 37, 9, 8, 46, 184, 120, 51, 121, 114, 101, 118, 111, 99, 115, 105, 100, 158};
        main_necessaryData = [self StringFromDuringRegulationData:value];
    }
    return main_necessaryData;
}

//: ic_none_LogList
+ (NSString *)mKeyTextValue {
    /* static */ NSString *mKeyTextValue = nil;
    if (!mKeyTextValue) {
        Byte value[] = {15, 2, 116, 115, 105, 76, 103, 111, 76, 95, 101, 110, 111, 110, 95, 99, 105, 214};
        mKeyTextValue = [self StringFromDuringRegulationData:value];
    }
    return mKeyTextValue;
}

//: chat_top_bg
+ (NSString *)app_originStr {
    /* static */ NSString *app_originStr = nil;
    if (!app_originStr) {
        Byte value[] = {11, 6, 45, 93, 163, 216, 103, 98, 95, 112, 111, 116, 95, 116, 97, 104, 99, 131};
        app_originStr = [self StringFromDuringRegulationData:value];
    }
    return app_originStr;
}

//: group_info_activity_without
+ (NSString *)dream_bubbleMsg {
    /* static */ NSString *dream_bubbleMsg = nil;
    if (!dream_bubbleMsg) {
        Byte value[] = {27, 9, 214, 129, 180, 46, 140, 170, 172, 116, 117, 111, 104, 116, 105, 119, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 111, 102, 110, 105, 95, 112, 117, 111, 114, 103, 255};
        dream_bubbleMsg = [self StringFromDuringRegulationData:value];
    }
    return dream_bubbleMsg;
}

//: #ffffff
+ (NSString *)showKillerData {
    /* static */ NSString *showKillerData = nil;
    if (!showKillerData) {
        Byte value[] = {7, 7, 107, 148, 161, 218, 224, 102, 102, 102, 102, 102, 102, 35, 20};
        showKillerData = [self StringFromDuringRegulationData:value];
    }
    return showKillerData;
}

//: #999999
+ (NSString *)user_extraData {
    /* static */ NSString *user_extraData = nil;
    if (!user_extraData) {
        Byte value[] = {7, 7, 210, 175, 91, 91, 92, 57, 57, 57, 57, 57, 57, 35, 182};
        user_extraData = [self StringFromDuringRegulationData:value];
    }
    return user_extraData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  AntediluvianViewController.m
//  Riverla
//
//  Created by mac on 2025/3/31.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisCorveyViewController.h"
#import "AntediluvianViewController.h"

//: @interface DisCorveyViewController()
@interface AntediluvianViewController()

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;

//: @end
@end

//: @implementation DisCorveyViewController
@implementation AntediluvianViewController

//: - (void)viewWillAppear:(BOOL)animated{
- (void)viewWillAppear:(BOOL)animated{
    //: [super viewWillAppear:animated];
    [super viewWillAppear:animated];
    //: self.navigationController.navigationBarHidden = YES;
    self.navigationController.navigationBarHidden = YES;
}

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
}

//: - (void)viewDidLoad {
- (void)viewDidLoad {
    //: [super viewDidLoad];
    [super viewDidLoad];
    //: self.view.backgroundColor = [UIColor whiteColor];
    self.view.backgroundColor = [UIColor whiteColor];
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 375)];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 375)];
    //: bg.image = [UIImage imageNamed:@"chat_top_bg"];
    bg.image = [UIImage imageNamed:[DuringRegulationData app_originStr]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width, 44)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice tingHeight], [[UIScreen mainScreen] bounds].size.width, 44)];
    //: [self.view addSubview:topview];
    [self.view addSubview:topview];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, 0, 200, 44)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, 0, 200, 44)];
    //: labtitle.textColor = [UIColor whiteColor];
    labtitle.textColor = [UIColor whiteColor];
    //: labtitle.font = [UIFont boldSystemFontOfSize:18];
    labtitle.font = [UIFont boldSystemFontOfSize:18];
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"discovery"];
    labtitle.text = [PaintedNaturalLanguageTo exhibit:[DuringRegulationData main_necessaryData]];
    //: [topview addSubview:labtitle];
    [topview addSubview:labtitle];

    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+10, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice tingHeight])+10, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice tingHeight]))];
    //: contentView.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
    contentView.backgroundColor = [UIColor min:[DuringRegulationData showKillerData]];
    //: contentView.layer.cornerRadius = 34;
    contentView.layer.cornerRadius = 34;
    //: [self.view addSubview:contentView];
    [self.view addSubview:contentView];

    //: [self.view addSubview:self.defView];
    [self.view addSubview:self.defView];
}

//: - (UIView *)defView{
- (UIView *)defView{
    //: if(!_defView){
    if(!_defView){
        //: _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice tingHeight])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
//        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_LogList"];
        defImg.image = [UIImage imageNamed:[DuringRegulationData mKeyTextValue]];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];


        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor min:[DuringRegulationData user_extraData]];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [FFFLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [PaintedNaturalLanguageTo exhibit:[DuringRegulationData dream_bubbleMsg]];


    }
    //: return _defView;
    return _defView;
}

//: @end
@end