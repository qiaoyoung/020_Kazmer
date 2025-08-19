
#import <Foundation/Foundation.h>

@interface VidData : NSObject

@end

@implementation VidData

+ (Byte *)VidDataToCache:(Byte *)data {
    int count = data[0];
    Byte visualImageAdd = data[1];
    int sendClose = data[2];
    for (int i = sendClose; i < sendClose + count; i++) {
        int value = data[i] + visualImageAdd;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[sendClose + count] = 0;
    return data + sendClose;
}

+ (NSString *)StringFromVidData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self VidDataToCache:data]];
}

//: NSUserDefaultLanguage
+ (NSString *)notiThoroughlyId {
    /* static */ NSString *notiThoroughlyId = nil;
    if (!notiThoroughlyId) {
        Byte value[] = {21, 44, 11, 113, 103, 144, 166, 124, 252, 160, 218, 34, 39, 41, 71, 57, 70, 24, 57, 58, 53, 73, 64, 72, 32, 53, 66, 59, 73, 53, 59, 57, 161};
        notiThoroughlyId = [self StringFromVidData:value];
    }
    return notiThoroughlyId;
}

//: 0d8bf5
+ (NSString *)dreamMarchInfoMessage {
    /* static */ NSString *dreamMarchInfoMessage = nil;
    if (!dreamMarchInfoMessage) {
        Byte value[] = {6, 15, 13, 109, 58, 195, 150, 81, 198, 178, 33, 207, 160, 33, 85, 41, 83, 87, 38, 82};
        dreamMarchInfoMessage = [self StringFromVidData:value];
    }
    return dreamMarchInfoMessage;
}

//: zh_CN
+ (NSString *)user_killerMonthMessage {
    /* static */ NSString *user_killerMonthMessage = nil;
    if (!user_killerMonthMessage) {
        Byte value[] = {5, 58, 4, 89, 64, 46, 37, 9, 20, 235};
        user_killerMonthMessage = [self StringFromVidData:value];
    }
    return user_killerMonthMessage;
}

//: yyyy-MM-dd
+ (NSString *)m_grandpaText {
    /* static */ NSString *m_grandpaText = nil;
    if (!m_grandpaText) {
        Byte value[] = {10, 61, 13, 63, 139, 211, 90, 193, 254, 133, 141, 83, 173, 60, 60, 60, 60, 240, 16, 16, 240, 39, 39, 52};
        m_grandpaText = [self StringFromVidData:value];
    }
    return m_grandpaText;
}

//: #5D5F66
+ (NSString *)app_collectorUrl {
    /* static */ NSString *app_collectorUrl = nil;
    if (!app_collectorUrl) {
        Byte value[] = {7, 25, 13, 204, 211, 154, 203, 65, 188, 221, 193, 232, 9, 10, 28, 43, 28, 45, 29, 29, 64};
        app_collectorUrl = [self StringFromVidData:value];
    }
    return app_collectorUrl;
}

//: eeeeee
+ (NSString *)userHateMsg {
    /* static */ NSString *userHateMsg = nil;
    if (!userHateMsg) {
        Byte value[] = {6, 15, 11, 231, 207, 38, 28, 73, 207, 215, 156, 86, 86, 86, 86, 86, 86, 185};
        userHateMsg = [self StringFromVidData:value];
    }
    return userHateMsg;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  AttendanceDatePickerView.m
//  ProjectK
//
//  Created by beartech on 14-1-3.
//  Copyright (c) 2014年 Beartech. All rights reserved.
//

// __M_A_C_R_O__
//: #import "HMDatePickerView.h"
#import "DateTextView.h"
//: #import "NSDate+KIAdditions.h"
#import "NSDate+Page.h"
//: #import "NSDateFormatter+KIAdditions.h"
#import "NSDateFormatter+Page.h"

//: @interface HMDatePickerView (){
@interface DateTextView (){

    //左边退出按钮
    //: UIButton *cancelButton;
    UIButton *cancelButton;
    //右边的确定按钮
    //: UIButton *chooseButton;
    UIButton *chooseButton;
}
//: @property (nonatomic, strong) UIView *bgView;
@property (nonatomic, strong) UIView *bgView;

//: @property (nonatomic,retain) UILabel *yearLabel;
@property (nonatomic,retain) UILabel *yearLabel;
//: @property (nonatomic,retain) UIView *animationView;
@property (nonatomic,retain) UIView *animationView;

//: @end
@end

//: @implementation HMDatePickerView
@implementation DateTextView
//: @synthesize delegate = _delegate;
@synthesize delegate = _delegate;
//: @synthesize datePicker;
@synthesize datePicker;
//: @synthesize yearLabel;
@synthesize yearLabel;
//: @synthesize blackBackgroundButton = _blackBackgroundButton;
@synthesize blackBackgroundButton = _blackBackgroundButton;
//: @synthesize animationView = _animationView;
@synthesize animationView = _animationView;



//: #pragma mark ==================================================
#pragma mark ==================================================
//: #pragma mark == 初始化
#pragma mark == 初始化
//: #pragma mark ==================================================
#pragma mark ==================================================
//: - (id)initWithFrame:(CGRect)frame{
- (id)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];

        //: _blackBackgroundButton = [[UIButton alloc]init];
        _blackBackgroundButton = [[UIButton alloc]init];
        //: _blackBackgroundButton.frame = self.bounds;
        _blackBackgroundButton.frame = self.bounds;
        //: _blackBackgroundButton.alpha = 0;
        _blackBackgroundButton.alpha = 0;
        //: _blackBackgroundButton.backgroundColor = [UIColor blackColor];
        _blackBackgroundButton.backgroundColor = [UIColor blackColor];
        //: [_blackBackgroundButton addTarget:self action:@selector(singleTap) forControlEvents:UIControlEventTouchDown];
        [_blackBackgroundButton addTarget:self action:@selector(sizeTap) forControlEvents:UIControlEventTouchDown];
        //: [self addSubview:_blackBackgroundButton];
        [self addSubview:_blackBackgroundButton];

        //: _animationView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIApplication sharedApplication].windows.firstObject.frame.size.height+50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 190 +50+(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))];
        _animationView = [[UIView alloc]initWithFrame:CGRectMake(0, [UIApplication sharedApplication].windows.firstObject.frame.size.height+50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 190 +50+(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom))];
        //: _animationView.backgroundColor = [UIColor whiteColor];
        _animationView.backgroundColor = [UIColor whiteColor];
        //: _animationView.userInteractionEnabled = YES;
        _animationView.userInteractionEnabled = YES;
        //: [self addSubview:_animationView];
        [self addSubview:_animationView];

        //: datePicker = [[UIDatePicker alloc]initWithFrame:CGRectMake(0,50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 190)];
        datePicker = [[UIDatePicker alloc]initWithFrame:CGRectMake(0,50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 190)];
        //: [datePicker addTarget:self action:@selector(datePickerValueChanged) forControlEvents:UIControlEventValueChanged];
        [datePicker addTarget:self action:@selector(userComplete) forControlEvents:UIControlEventValueChanged];
        //: [datePicker setDate:[NSDate date]];
        [datePicker setDate:[NSDate date]];
        //: datePicker.datePickerMode = UIDatePickerModeDate;
        datePicker.datePickerMode = UIDatePickerModeDate;
        //: [_animationView addSubview:datePicker];
        [_animationView addSubview:datePicker];

        //: NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:@"NSUserDefaultLanguage"];
        NSString *lang = [[NSUserDefaults standardUserDefaults] objectForKey:[VidData notiThoroughlyId]];
        //: if (lang.length <= 0) {
        if (lang.length <= 0) {
            //: lang = @"zh_CN";
            lang = [VidData user_killerMonthMessage];
        }
        //: NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:lang];
        NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:lang];
        //: datePicker.locale = locale;
        datePicker.locale = locale;

        //: if (@available(iOS 14.0, *)) {
        if (@available(iOS 14.0, *)) {
            //: datePicker.preferredDatePickerStyle = UIDatePickerStyleWheels;
            datePicker.preferredDatePickerStyle = UIDatePickerStyleWheels;
            //此处记得再写一下frame, 在datePickerMode设置之后
            //: datePicker.frame = CGRectMake(0,50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 190);
            datePicker.frame = CGRectMake(0,50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 190);
        }

        //: [self setNavigationBarView];
        [self navigation];
    }
    //: return self;
    return self;
}


//: - (void)singleTap{
- (void)sizeTap{
    //: [self leftButtonClicked:nil];
    [self caned:nil];
}

//: - (void)setDate:(NSDate*)date{
- (void)setTarget:(NSDate*)date{
    //: if ([NSDate isDate:date earlierThanDate:datePicker.minimumDate]) {
    if ([NSDate bottomDate:date calendar:datePicker.minimumDate]) {
        //: return;
        return;
    }

    //: if ([NSDate isDate:datePicker.maximumDate earlierThanDate:date]) {
    if ([NSDate bottomDate:datePicker.maximumDate calendar:date]) {
        //: return;
        return;
    }

    //: [datePicker setDate:date];
    [datePicker setDate:date];
}


//: - (void)setNavigationBarView{
- (void)navigation{

    //盛放按钮的View
    //: UIView *upVeiw = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMinY(datePicker.frame)-50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 50)];
    UIView *upVeiw = [[UIView alloc]initWithFrame:CGRectMake(0, CGRectGetMinY(datePicker.frame)-50, [UIApplication sharedApplication].windows.firstObject.frame.size.width, 50)];
    //: upVeiw.backgroundColor = [UIColor whiteColor];
    upVeiw.backgroundColor = [UIColor whiteColor];
    //: [_animationView addSubview:upVeiw];
    [_animationView addSubview:upVeiw];
    //: upVeiw.layer.borderWidth = 0.5f;
    upVeiw.layer.borderWidth = 0.5f;
    //: upVeiw.layer.borderColor = [UIColor colorWithHexString:@"eeeeee"].CGColor;
    upVeiw.layer.borderColor = [UIColor min:[VidData userHateMsg]].CGColor;

    //左边的取消按钮
    //: cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
    cancelButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: cancelButton.frame = CGRectMake(12, 0, 50, 50);
    cancelButton.frame = CGRectMake(12, 0, 50, 50);
    //: [cancelButton setTitle:@"取消".nim_localized forState:UIControlStateNormal];
    [cancelButton setTitle:@"取消".messageWith forState:UIControlStateNormal];
    //: cancelButton.backgroundColor = [UIColor clearColor];
    cancelButton.backgroundColor = [UIColor clearColor];
    //: cancelButton.titleLabel.font = [UIFont systemFontOfSize:16];
    cancelButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [cancelButton setTitleColor:[UIColor colorWithHexString:@"0d8bf5"] forState:UIControlStateNormal];
    [cancelButton setTitleColor:[UIColor min:[VidData dreamMarchInfoMessage]] forState:UIControlStateNormal];
    //: [cancelButton addTarget:self action:@selector(leftButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [cancelButton addTarget:self action:@selector(caned:) forControlEvents:UIControlEventTouchUpInside];
    //: [upVeiw addSubview:cancelButton];
    [upVeiw addSubview:cancelButton];

    //右边的确定按钮
    //: chooseButton = [UIButton buttonWithType:UIButtonTypeCustom];
    chooseButton = [UIButton buttonWithType:UIButtonTypeCustom];
    //: chooseButton.frame = CGRectMake([UIScreen mainScreen].bounds.size.width - 62, 0, 50, 50);
    chooseButton.frame = CGRectMake([UIScreen mainScreen].bounds.size.width - 62, 0, 50, 50);
    //: [chooseButton setTitle:@"完成".nim_localized forState:UIControlStateNormal];
    [chooseButton setTitle:@"完成".messageWith forState:UIControlStateNormal];
    //: chooseButton.backgroundColor = [UIColor clearColor];
    chooseButton.backgroundColor = [UIColor clearColor];
    //: chooseButton.titleLabel.font = [UIFont systemFontOfSize:16];
    chooseButton.titleLabel.font = [UIFont systemFontOfSize:16];
    //: [chooseButton setTitleColor:[UIColor colorWithHexString:@"0d8bf5"] forState:UIControlStateNormal];
    [chooseButton setTitleColor:[UIColor min:[VidData dreamMarchInfoMessage]] forState:UIControlStateNormal];
    //: [chooseButton addTarget:self action:@selector(rightButtonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [chooseButton addTarget:self action:@selector(languaging:) forControlEvents:UIControlEventTouchUpInside];
    //: [upVeiw addSubview:chooseButton];
    [upVeiw addSubview:chooseButton];

    //: self.titleL = [[UILabel alloc] initWithFrame:CGRectMake(62, 10, [[UIScreen mainScreen] bounds].size.width-124, 30)];
    self.titleL = [[UILabel alloc] initWithFrame:CGRectMake(62, 10, [[UIScreen mainScreen] bounds].size.width-124, 30)];
    //: [upVeiw addSubview:_titleL];
    [upVeiw addSubview:_titleL];
    //: _titleL.textColor = [UIColor colorWithHexString:@"#5D5F66"];
    _titleL.textColor = [UIColor min:[VidData app_collectorUrl]];
    //: _titleL.font = [UIFont systemFontOfSize:16];
    _titleL.font = [UIFont systemFontOfSize:16];
    //: _titleL.textAlignment = NSTextAlignmentCenter;
    _titleL.textAlignment = NSTextAlignmentCenter;
    //: _titleL.text = _titleString;
    _titleL.text = _titleString;

    //分割线
    //: UIView *splitView = [[UIView alloc] initWithFrame:CGRectMake(0, 50, [[UIScreen mainScreen] bounds].size.width, 0.5)];
    UIView *splitView = [[UIView alloc] initWithFrame:CGRectMake(0, 50, [[UIScreen mainScreen] bounds].size.width, 0.5)];
    //: splitView.backgroundColor = [UIColor lightTextColor];
    splitView.backgroundColor = [UIColor lightTextColor];
    //: [upVeiw addSubview:splitView];
    [upVeiw addSubview:splitView];


    //: if([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0){
    if([[[UIDevice currentDevice] systemVersion] floatValue] >= 7.0){
        //: datePicker.backgroundColor = [UIColor whiteColor];
        datePicker.backgroundColor = [UIColor whiteColor];
    }

}

//: - (void)changeDelegate:(id<HMDatePickerViewDelegate>)delegate{
- (void)viewDelegate:(id<ReplacementInfo>)delegate{
    //: self.delegate = delegate;
    self.delegate = delegate;
    //: delegateClass = object_getClass(delegate);
    delegateClass = assertFlush(delegate);
}

//: - (void)datePickerValueChanged{
- (void)userComplete{
    //: [self reloadYearLabel:datePicker.date];
    [self mustAcross:datePicker.date];
}

//: - (void)reloadYearLabel:(NSDate*)date{
- (void)mustAcross:(NSDate*)date{
    //    NSString *stringYM = [NSDate getStringFromDate:datePicker.date dateFormatter:KKDateFormatter05];
    //: NSString *stringYMD = [NSDate getStringFromDate:date dateFormatter:@"yyyy-MM-dd"];
    NSString *stringYMD = [NSDate on:date tableOfContents:[VidData m_grandpaText]];
    //    NSString *stringYMDH = [NSDate getStringFromDate:date dateFormatter:KKDateFormatter03];
    //    NSString *stringYMDHM = [NSDate getStringFromDate:date dateFormatter:KKDateFormatter02];
    //
    //    CGFloat HH = [[NSDate getStringFromDate:date dateFormatter:@"HH"] floatValue];
    //    CGFloat mm = [[NSDate getStringFromDate:date dateFormatter:@"mm"] floatValue];


    //    if (HH==0 && mm==0) {
    //        yearLabel.text = stringYMD;
    //        yearLabel.font = [UIFont boldSystemFontOfSize:24];
    //    }
    //    else if (mm==0 && HH!=0){
    //        yearLabel.text = stringYMDH;
    //        yearLabel.font = [UIFont boldSystemFontOfSize:22];
    //    }
    //    else{
    //        yearLabel.text = stringYMDHM;
    //        yearLabel.font = [UIFont boldSystemFontOfSize:20];
    //    }
    //: yearLabel.text = stringYMD;
    yearLabel.text = stringYMD;
    //: yearLabel.font = [UIFont boldSystemFontOfSize:24];
    yearLabel.font = [UIFont boldSystemFontOfSize:24];
}

//: #pragma mark ==================================================
#pragma mark ==================================================
//: #pragma mark == 接口
#pragma mark == 接口
//: #pragma mark ==================================================
#pragma mark ==================================================
//: + (void)showInView:(UIView*)view delegate:(id<HMDatePickerViewDelegate>)delegate minDate:(NSDate*)minDate maxDate:(NSDate*)maxDate showDate:(NSDate *)showDate{
+ (void)duringMaxVisible:(UIView*)view inwardFrame:(id<ReplacementInfo>)delegate constituent:(NSDate*)minDate array:(NSDate*)maxDate anToday:(NSDate *)showDate{

    //: HMDatePickerView *pickerView = [[HMDatePickerView alloc]initWithFrame:CGRectMake(0, 0, [UIApplication sharedApplication].windows.firstObject.frame.size.width, view.frame.size.height)];
    DateTextView *pickerView = [[DateTextView alloc]initWithFrame:CGRectMake(0, 0, [UIApplication sharedApplication].windows.firstObject.frame.size.width, view.frame.size.height)];
    //: pickerView.tag = 2006021272;
    pickerView.tag = 2006021272;
    //: if (minDate) {
    if (minDate) {
        //: [pickerView.datePicker setMinimumDate:minDate];
        [pickerView.datePicker setMinimumDate:minDate];
    }
    //: if (maxDate) {
    if (maxDate) {
        //: [pickerView.datePicker setMaximumDate:maxDate];
        [pickerView.datePicker setMaximumDate:maxDate];
    }
    //: if (showDate) {
    if (showDate) {
        //: [pickerView.datePicker setDate:showDate];
        [pickerView.datePicker setDate:showDate];
    }
    //: [pickerView changeDelegate:delegate];
    [pickerView viewDelegate:delegate];
    //: [view addSubview:pickerView];
    [view addSubview:pickerView];
    //: [pickerView show];
    [pickerView nakedOption];


}

//: + (id)showWithDelegate:(id<HMDatePickerViewDelegate>)delegate minDate:(NSDate*)minDate maxDate:(NSDate*)maxDate showDate:(NSDate*)showDate{
+ (id)show:(id<ReplacementInfo>)delegate dedicationDate:(NSDate*)minDate object:(NSDate*)maxDate pinSession:(NSDate*)showDate{
    //: HMDatePickerView *pickerView = [[HMDatePickerView alloc]initWithFrame:CGRectMake(0, 0, [UIApplication sharedApplication].windows.firstObject.frame.size.width, [UIApplication sharedApplication].windows.firstObject.frame.size.height)];
    DateTextView *pickerView = [[DateTextView alloc]initWithFrame:CGRectMake(0, 0, [UIApplication sharedApplication].windows.firstObject.frame.size.width, [UIApplication sharedApplication].windows.firstObject.frame.size.height)];
    //: pickerView.tag = 2006021272;
    pickerView.tag = 2006021272;
    //: if (minDate) {
    if (minDate) {
        //: [pickerView.datePicker setMinimumDate:minDate];
        [pickerView.datePicker setMinimumDate:minDate];
    }
    //: if (maxDate) {
    if (maxDate) {
        //: [pickerView.datePicker setMaximumDate:maxDate];
        [pickerView.datePicker setMaximumDate:maxDate];
    }
    //: if (showDate) {
    if (showDate) {
        //: [pickerView.datePicker setDate:showDate];
        [pickerView.datePicker setDate:showDate];
    }
    //: [pickerView changeDelegate:delegate];
    [pickerView viewDelegate:delegate];

//    BOOL iswork = [pickerView.delegate isKindOfClass:[UEmployNotifiViewController class]];
//    BOOL isedu  = [pickerView.delegate isKindOfClass:[UInvitationTestViewController class]];
//    if (iswork || isedu) {
//        pickerView.datePicker.datePickerMode = UIDatePickerModeDateAndTime;
//
//    }

    //: UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    UIWindow *window = [[UIApplication sharedApplication] keyWindow];
    //: [window addSubview:pickerView];
    [window addSubview:pickerView];
    //: [window bringSubviewToFront:pickerView];
    [window bringSubviewToFront:pickerView];

    //: [pickerView show];
    [pickerView nakedOption];

    //: return pickerView;
    return pickerView;
}

//: - (void)show{
- (void)nakedOption{
    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: _blackBackgroundButton.alpha = 0.3;
        _blackBackgroundButton.alpha = 0.3;
        //: _animationView.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-190 -50, [[UIScreen mainScreen] bounds].size.width, 190 +50+(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom));
        _animationView.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom)-190 -50, [[UIScreen mainScreen] bounds].size.width, 190 +50+(({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom));
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {

    //: }];
    }];
}

//: #pragma mark ==================================================
#pragma mark ==================================================
//: #pragma mark == PickerViewDelegate
#pragma mark == PickerViewDelegate
//: #pragma mark ==================================================
#pragma mark ==================================================
//: - (void)leftButtonClicked:(id)sender{
- (void)caned:(id)sender{
    //: Class currentClass = object_getClass(self.delegate);
    Class currentClass = assertFlush(self.delegate);
    //: if ((currentClass == delegateClass) && [self.delegate respondsToSelector:@selector(dismissDataPickerView)]) {
    if ((currentClass == delegateClass) && [self.delegate respondsToSelector:@selector(stanzaRead)]) {
        //: [self.delegate dismissDataPickerView];
        [self.delegate stanzaRead];
    }

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: _blackBackgroundButton.alpha = 0;
        _blackBackgroundButton.alpha = 0;
        //: _animationView.frame = CGRectOffset(self.frame, 0, self.frame.size.height);
        _animationView.frame = CGRectOffset(self.frame, 0, self.frame.size.height);
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];
}

//: - (void)rightButtonClicked:(id)sender{
- (void)languaging:(id)sender{
    //: Class currentClass = object_getClass(self.delegate);
    Class currentClass = assertFlush(self.delegate);
    //: if ((currentClass == delegateClass) && [self.delegate respondsToSelector:@selector(dismissDataPickerView)]) {
    if ((currentClass == delegateClass) && [self.delegate respondsToSelector:@selector(stanzaRead)]) {
        //: [self.delegate dismissDataPickerView];
        [self.delegate stanzaRead];
    }
    //: if ((currentClass == delegateClass) && [self.delegate respondsToSelector:@selector(datePick:doneWithDate:)]) {
    if ((currentClass == delegateClass) && [self.delegate respondsToSelector:@selector(select:enableDate:)]) {
        //: [self.delegate datePick:self doneWithDate:datePicker.date];
        [self.delegate select:self enableDate:datePicker.date];
    }

    //: [UIView animateWithDuration:0.3 animations:^{
    [UIView animateWithDuration:0.3 animations:^{
        //: _blackBackgroundButton.alpha = 0;
        _blackBackgroundButton.alpha = 0;
        //: _animationView.frame = CGRectOffset(self.frame, 0, self.frame.size.height);
        _animationView.frame = CGRectOffset(self.frame, 0, self.frame.size.height);
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {
        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];
}


//: @end
@end