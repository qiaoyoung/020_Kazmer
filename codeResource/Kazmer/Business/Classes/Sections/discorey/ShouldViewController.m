
#import <Foundation/Foundation.h>

typedef struct {
    Byte itemEnable;
    Byte *viewRecord;
    unsigned int nimShared;
} StructCutData;

@interface CutData : NSObject

@end

@implementation CutData

//: group_info_activity_without
+ (NSString *)kContent_mainItemData {
    /* static */ NSString *kContent_mainItemData = nil;
    if (!kContent_mainItemData) {
		NSArray<NSString *> *origin = @[@"81", @"68", @"89", @"67", @"70", @"105", @"95", @"88", @"80", @"89", @"105", @"87", @"85", @"66", @"95", @"64", @"95", @"66", @"79", @"105", @"65", @"95", @"66", @"94", @"89", @"67", @"66", @"7"];
		NSData *data = [CutData CutDataToData:origin];
        StructCutData value = (StructCutData){54, (Byte *)data.bytes, 27};
        kContent_mainItemData = [self StringFromCutData:&value];
    }
    return kContent_mainItemData;
}

//: #ffffff
+ (NSString *)kTextValueData {
    /* static */ NSString *kTextValueData = nil;
    if (!kTextValueData) {
		NSArray<NSString *> *origin = @[@"152", @"221", @"221", @"221", @"221", @"221", @"221", @"19"];
		NSData *data = [CutData CutDataToData:origin];
        StructCutData value = (StructCutData){187, (Byte *)data.bytes, 7};
        kTextValueData = [self StringFromCutData:&value];
    }
    return kTextValueData;
}

+ (NSString *)StringFromCutData:(StructCutData *)data {
    return [NSString stringWithUTF8String:(char *)[self CutDataToByte:data]];
}

//: discovery
+ (NSString *)kTitleContentValue {
    /* static */ NSString *kTitleContentValue = nil;
    if (!kTitleContentValue) {
		NSArray<NSString *> *origin = @[@"162", @"175", @"181", @"165", @"169", @"176", @"163", @"180", @"191", @"162"];
		NSData *data = [CutData CutDataToData:origin];
        StructCutData value = (StructCutData){198, (Byte *)data.bytes, 9};
        kTitleContentValue = [self StringFromCutData:&value];
    }
    return kTitleContentValue;
}

+ (NSData *)CutDataToData:(NSArray<NSString *> *)value {
    NSMutableArray<NSString *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)CutDataToByte:(StructCutData *)data {
    for (int i = 0; i < data->nimShared; i++) {
        data->viewRecord[i] ^= data->itemEnable;
    }
    data->viewRecord[data->nimShared] = 0;
    return data->viewRecord;
}

//: ic_none_LogList
+ (NSString *)kName_sharedShowText {
    /* static */ NSString *kName_sharedShowText = nil;
    if (!kName_sharedShowText) {
		NSArray<NSString *> *origin = @[@"250", @"240", @"204", @"253", @"252", @"253", @"246", @"204", @"223", @"252", @"244", @"223", @"250", @"224", @"231", @"25"];
		NSData *data = [CutData CutDataToData:origin];
        StructCutData value = (StructCutData){147, (Byte *)data.bytes, 15};
        kName_sharedShowText = [self StringFromCutData:&value];
    }
    return kName_sharedShowText;
}

//: chat_top_bg
+ (NSString *)kTitle_onString {
    /* static */ NSString *kTitle_onString = nil;
    if (!kTitle_onString) {
		NSArray<NSString *> *origin = @[@"169", @"162", @"171", @"190", @"149", @"190", @"165", @"186", @"149", @"168", @"173", @"69"];
		NSData *data = [CutData CutDataToData:origin];
        StructCutData value = (StructCutData){202, (Byte *)data.bytes, 11};
        kTitle_onString = [self StringFromCutData:&value];
    }
    return kTitle_onString;
}

//: #999999
+ (NSString *)kNameRecordData {
    /* static */ NSString *kNameRecordData = nil;
    if (!kNameRecordData) {
		NSArray<NSString *> *origin = @[@"86", @"76", @"76", @"76", @"76", @"76", @"76", @"194"];
		NSData *data = [CutData CutDataToData:origin];
        StructCutData value = (StructCutData){117, (Byte *)data.bytes, 7};
        kNameRecordData = [self StringFromCutData:&value];
    }
    return kNameRecordData;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  ShouldViewController.m
//  Riverla
//
//  Created by mac on 2025/3/31.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisCorveyViewController.h"
#import "ShouldViewController.h"

//: @interface DisCorveyViewController()
@interface ShouldViewController()

//: @property (nonatomic,strong) UIView *defView;
@property (nonatomic,strong) UIView *defView;

//: @end
@end

//: @implementation DisCorveyViewController
@implementation ShouldViewController

//: - (void)viewWillDisappear:(BOOL)animated{
- (void)viewWillDisappear:(BOOL)animated{
    //: [super viewWillDisappear:animated];
    [super viewWillDisappear:animated];
    //: self.navigationController.navigationBarHidden = NO;
    self.navigationController.navigationBarHidden = NO;
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
    //: UIImageView *bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 375)];
    UIImageView *bg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 375)];
    //: bg.image = [UIImage imageNamed:@"chat_top_bg"];
    bg.image = [UIImage imageNamed:[CutData kTitle_onString]];
    //: [self.view addSubview:bg];
    [self.view addSubview:bg];

    //: UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice vg_statusBarHeight], [[UIScreen mainScreen] bounds].size.width, 44)];
    UIView *topview = [[UIView alloc]initWithFrame:CGRectMake(0, [UIDevice comeDownSuperphylum], [[UIScreen mainScreen] bounds].size.width, 44)];
    //: [self.view addSubview:topview];
    [self.view addSubview:topview];

    //: UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, 0, 200, 44)];
    UILabel *labtitle = [[UILabel alloc]initWithFrame:CGRectMake(15, 0, 200, 44)];
    //: labtitle.textColor = [UIColor whiteColor];
    labtitle.textColor = [UIColor whiteColor];
    //: labtitle.font = [UIFont boldSystemFontOfSize:18];
    labtitle.font = [UIFont boldSystemFontOfSize:18];
    //: labtitle.text = [FFFLanguageManager getTextWithKey:@"discovery"];
    labtitle.text = [MakeManager cell:[CutData kTitleContentValue]];
    //: [topview addSubview:labtitle];
    [topview addSubview:labtitle];

    //: UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice vg_statusBarHeight])+10, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice vg_statusBarHeight]))];
    UIView *contentView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice comeDownSuperphylum])+10, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height-(44.0f + [UIDevice comeDownSuperphylum]))];
    //: contentView.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
    contentView.backgroundColor = [UIColor cell:[CutData kTextValueData]];
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
        _defView = [[UIView alloc]initWithFrame:CGRectMake(0, (44.0f + [UIDevice comeDownSuperphylum])+50, [[UIScreen mainScreen] bounds].size.width, 200)];
//        _defView.hidden = YES;

        //: UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        UIImageView *defImg = [[UIImageView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-213)/2, 150, 213, 148)];
        //: defImg.image = [UIImage imageNamed:@"ic_none_LogList"];
        defImg.image = [UIImage imageNamed:[CutData kName_sharedShowText]];
        //: [_defView addSubview:defImg];
        [_defView addSubview:defImg];


        //: UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        UILabel *emptyTipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, defImg.bottom+5, [[UIScreen mainScreen] bounds].size.width, 20)];
        //: emptyTipLabel.textColor = [UIColor colorWithHexString:@"#999999"];
        emptyTipLabel.textColor = [UIColor cell:[CutData kNameRecordData]];
        //: emptyTipLabel.font = [UIFont systemFontOfSize:12];
        emptyTipLabel.font = [UIFont systemFontOfSize:12];
        //: emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        emptyTipLabel.textAlignment = NSTextAlignmentCenter;
        //: [_defView addSubview:emptyTipLabel];
        [_defView addSubview:emptyTipLabel];
        //: emptyTipLabel.text = [FFFLanguageManager getTextWithKey:@"group_info_activity_without"];
        emptyTipLabel.text = [MakeManager cell:[CutData kContent_mainItemData]];


    }
    //: return _defView;
    return _defView;
}

//: @end
@end