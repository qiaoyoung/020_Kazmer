
#import <Foundation/Foundation.h>

@interface BubbleData : NSObject

@end

@implementation BubbleData

+ (Byte *)BubbleDataToCache:(Byte *)data {
    int tableBar = data[0];
    int cut = data[1];
    for (int i = 0; i < tableBar / 2; i++) {
        int begin = cut + i;
        int end = cut + tableBar - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[cut + tableBar] = 0;
    return data + cut;
}

+ (NSString *)StringFromBubbleData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self BubbleDataToCache:data]];
}  

//: #875FFA
+ (NSString *)mainBarTitle {
    /* static */ NSString *mainBarTitle = nil;
    if (!mainBarTitle) {
        Byte value[] = {7, 10, 56, 174, 237, 196, 219, 67, 73, 194, 65, 70, 70, 53, 55, 56, 35, 14};
        mainBarTitle = [self StringFromBubbleData:value];
    }
    return mainBarTitle;
}

//: contact_my_tag_activity_my_friend
+ (NSString *)user_powerUrl {
    /* static */ NSString *user_powerUrl = nil;
    if (!user_powerUrl) {
        Byte value[] = {33, 7, 72, 75, 175, 103, 70, 100, 110, 101, 105, 114, 102, 95, 121, 109, 95, 121, 116, 105, 118, 105, 116, 99, 97, 95, 103, 97, 116, 95, 121, 109, 95, 116, 99, 97, 116, 110, 111, 99, 68};
        user_powerUrl = [self StringFromBubbleData:value];
    }
    return user_powerUrl;
}

//: #5D5F66
+ (NSString *)show_removeMessage {
    /* static */ NSString *show_removeMessage = nil;
    if (!show_removeMessage) {
        Byte value[] = {7, 6, 23, 50, 198, 112, 54, 54, 70, 53, 68, 53, 35, 151};
        show_removeMessage = [self StringFromBubbleData:value];
    }
    return show_removeMessage;
}

//: contact_fragment_group
+ (NSString *)noti_statusKey {
    /* static */ NSString *noti_statusKey = nil;
    if (!noti_statusKey) {
        Byte value[] = {22, 5, 214, 24, 30, 112, 117, 111, 114, 103, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 116, 99, 97, 116, 110, 111, 99, 219};
        noti_statusKey = [self StringFromBubbleData:value];
    }
    return noti_statusKey;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NoticeTextView.m
//  NIM
//
//  Created by 彭爽 on 2021/9/8.
//  Copyright © 2021 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESContactHeaderView.h"
#import "NoticeTextView.h"
//: #import "UIButton+ImageTitleSpacing.h"
#import "UIButton+EmptySpacing.h"

//: @interface NTESContactHeaderView ()<UITextFieldDelegate>
@interface NoticeTextView ()<UITextFieldDelegate>
//: @property (nonatomic ,strong) UIView *sliderView;
@property (nonatomic ,strong) UIView *sliderView;
//: @property (nonatomic ,strong) UIView *backView;
@property (nonatomic ,strong) UIView *backView;
//: @property (nonatomic ,strong) UIButton *mesBtn;
@property (nonatomic ,strong) UIButton *mesBtn;
//: @property (nonatomic ,strong) UIButton *resqBtn;
@property (nonatomic ,strong) UIButton *resqBtn;
//: @end
@end

//: @implementation NTESContactHeaderView
@implementation NoticeTextView

//: -(instancetype)initWithFrame:(CGRect)frame{
-(instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: [self initUI];
        [self initBe];
        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
    }
    //: return self;
    return self;
}

//: -(void)initUI{
-(void)initBe{

//    NSArray *titleArray = @[
//
//        LangKey(@"fragment_contact_new_friend"),
//        LangKey(@"group_notification"),
//        LangKey(@"func_viewholder_black"),
//
//    ];
//
//
//
//    UIView *bgView = [[UIView alloc] init];
//    bgView.backgroundColor = [UIColor whiteColor];
//    [self addSubview:bgView];
//    _backView = bgView;
//    [bgView mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_offset(0);
//        make.right.mas_offset(0);
//        make.top.mas_offset(0);
//        make.height.mas_equalTo(12+12+41);
//    }];
//
//
//    UIView *lineViews = [[UIView alloc] init];
//    lineViews.backgroundColor = RGB_COLOR_String(@"#F7F8FB");
//    [self addSubview:lineViews];
//    [lineViews mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.left.mas_offset(0);
//        make.right.mas_offset(0);
//        make.top.mas_equalTo(bgView.mas_bottom).mas_offset(0);
//        make.height.mas_equalTo(1);
//    }];
//
//
//    for (int i = 0; i < 3; i++) {
//
//        CGFloat x;
//        NSString *imageName;
//        if (i==0) {
//            imageName = @"ic_New_friend";
//            x = 0.4;
//        } else if (i==1) {
//            imageName = @"ic_Group_notice";
//            x = 1;
//        } else {
//            imageName = @"ic_Blacklist";
//            x = 1.6;
//        }
//
//        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
//        btn.tag = 100 +i;
//        btn.backgroundColor = [UIColor clearColor];
//        [btn setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
//        [btn addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
//        [bgView addSubview:btn];
//        [btn mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.centerX.multipliedBy(x);
//            make.centerY.mas_offset(0);
//            make.width.mas_equalTo(110);
//            make.height.mas_equalTo(40);
//        }];
//        [btn setTitle:titleArray[i] forState:(UIControlStateNormal)];
//        [btn setTitleColor:RGB_COLOR_String(@"#3F3F3F") forState:(UIControlStateNormal)];
//        btn.titleLabel.font = [UIFont systemFontOfSize:12];;
//        [btn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:3];
//
//        UILabel *numLabel = [[UILabel alloc] init];
//        numLabel.tag = 500 + i;
//        numLabel.hidden = YES;
//        numLabel.backgroundColor = [UIColor redColor];
//        numLabel.font = [UIFont systemFontOfSize:11];
//        numLabel.textColor = [UIColor whiteColor];
//        numLabel.textAlignment = NSTextAlignmentCenter;
//        [_backView addSubview:numLabel];
//        numLabel.layer.masksToBounds = YES;
//        numLabel.layer.cornerRadius = 8;
//        [numLabel mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.top.mas_equalTo(btn).mas_offset(-3);
//            make.right.mas_equalTo(btn).mas_offset(-3);
//            make.width.height.mas_equalTo(16);
//        }];
//
//    }

    //: UIView *sliderView = [[UIView alloc]initWithFrame:CGRectMake(15, 20, [[UIScreen mainScreen] bounds].size.width-30, 60)];
    UIView *sliderView = [[UIView alloc]initWithFrame:CGRectMake(15, 20, [[UIScreen mainScreen] bounds].size.width-30, 60)];
    //: sliderView.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
    sliderView.backgroundColor = [UIColor colorWithRed:97/255.0 green:44/255.0 blue:249/255.0 alpha:0.1000];
    //: sliderView.layer.cornerRadius = 30;
    sliderView.layer.cornerRadius = 30;
//    sliderView.backgroundColor = [UIColor clearColor];
    //: [self addSubview:sliderView];
    [self addSubview:sliderView];
    //: _sliderView = sliderView;
    _sliderView = sliderView;

    //: _mesBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _mesBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _mesBtn.frame = CGRectMake(8, 10, 162, 40);
    _mesBtn.frame = CGRectMake(8, 10, 162, 40);
    //: _mesBtn.tag = 200;
    _mesBtn.tag = 200;
    //: _mesBtn.backgroundColor = [UIColor colorWithHexString:@"#875FFA"];
    _mesBtn.backgroundColor = [UIColor min:[BubbleData mainBarTitle]];
    //: _mesBtn.layer.cornerRadius = 20;
    _mesBtn.layer.cornerRadius = 20;
    //: _mesBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    _mesBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_mesBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_mesBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    //: [_mesBtn setTitle:[WatchLanguageManager getTextWithKey:@"contact_my_tag_activity_my_friend"] forState:UIControlStateNormal];
    [_mesBtn setTitle:[PaintedNaturalLanguageTo exhibit:[BubbleData user_powerUrl]] forState:UIControlStateNormal];
    //: [_mesBtn addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_mesBtn addTarget:self action:@selector(mentalPicture:) forControlEvents:UIControlEventTouchUpInside];
    //: [sliderView addSubview:_mesBtn];
    [sliderView addSubview:_mesBtn];

    //: _resqBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    _resqBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    //: _resqBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-8-170, 10, 162, 40);
    _resqBtn.frame = CGRectMake([[UIScreen mainScreen] bounds].size.width-30-8-170, 10, 162, 40);
    //: _resqBtn.tag = 201;
    _resqBtn.tag = 201;
//    resqBtn.backgroundColor = RGB_COLOR_String(kCommonBGColor_begin);
    //: _resqBtn.layer.cornerRadius = 20;
    _resqBtn.layer.cornerRadius = 20;
    //: _resqBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    _resqBtn.titleLabel.font = [UIFont systemFontOfSize:14];
    //: [_resqBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
    [_resqBtn setTitleColor:[UIColor min:[BubbleData show_removeMessage]] forState:UIControlStateNormal];
    //: [_resqBtn setTitle:[WatchLanguageManager getTextWithKey:@"contact_fragment_group"] forState:UIControlStateNormal];
    [_resqBtn setTitle:[PaintedNaturalLanguageTo exhibit:[BubbleData noti_statusKey]] forState:UIControlStateNormal];
    //: [_resqBtn addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [_resqBtn addTarget:self action:@selector(mentalPicture:) forControlEvents:UIControlEventTouchUpInside];
    //: [sliderView addSubview:_resqBtn];
    [sliderView addSubview:_resqBtn];

//    for (int i = 0; i<2; i++) {
//        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
//        button.tag = 200 + i;
//        [button addTarget:self action:@selector(sliderButtonClick:) forControlEvents:UIControlEventTouchUpInside];
//        [sliderView addSubview:button];
//
//        [button mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.centerY.multipliedBy(1);
//            make.centerX.multipliedBy(0.5+1*i).mas_offset(i*10);
//            make.width.mas_equalTo(80);
//            make.height.mas_equalTo(44);
//        }];
//
//        UIView *lineView = [[UIView alloc] init];
//        lineView.tag = 2000 + i;
//        [sliderView addSubview:lineView];
//        [lineView mas_makeConstraints:^(MASConstraintMaker *make) {
//            make.left.mas_offset(SCREEN_WIDTH/2.f*i);
//            make.width.mas_equalTo(SCREEN_WIDTH/2.f);
//            make.top.mas_equalTo(button.mas_bottom).mas_offset(-3);
//            make.height.mas_equalTo(2);
//        }];
//
//        if (i == 0) {
//            [button setImage:[UIImage imageNamed:@"ic_friends"] forState:(UIControlStateNormal)];
//            [button setImage:[UIImage imageNamed:@"ic_friends_current"] forState:(UIControlStateSelected)];
//
//            lineView.backgroundColor = [UIColor colorWithPatternImage:[NoticeHelper getLinearGradientImage:RGB_COLOR_String(kCommonBGColor_begin) and:RGB_COLOR_String(kCommonBGColor_end) directionType:SNLinearGradientDirectionLevel]];
//            button.selected = YES;
//        } else if (i == 1){
//            [button setImage:[UIImage imageNamed:@"ic_group"] forState:(UIControlStateNormal)];
//            [button setImage:[UIImage imageNamed:@"ic_group_current"] forState:(UIControlStateSelected)];
//
//        }
//
//    }
}

//: -(void)sliderButtonClick:(UIButton *)sender{
-(void)mentalPicture:(UIButton *)sender{

    //: sender.selected = YES;
    sender.selected = YES;

    //: if(sender == self.mesBtn){
    if(sender == self.mesBtn){
        //: _mesBtn.backgroundColor = [UIColor colorWithHexString:@"#875FFA"];
        _mesBtn.backgroundColor = [UIColor min:[BubbleData mainBarTitle]];
        //: [_mesBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_mesBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: _resqBtn.backgroundColor = [UIColor clearColor];
        _resqBtn.backgroundColor = [UIColor clearColor];
        //: [_resqBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_resqBtn setTitleColor:[UIColor min:[BubbleData show_removeMessage]] forState:UIControlStateNormal];
    //: }else if (sender == self.resqBtn){
    }else if (sender == self.resqBtn){
        //: _resqBtn.backgroundColor = [UIColor colorWithHexString:@"#875FFA"];
        _resqBtn.backgroundColor = [UIColor min:[BubbleData mainBarTitle]];
        //: [_resqBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_resqBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: _mesBtn.backgroundColor = [UIColor clearColor];
        _mesBtn.backgroundColor = [UIColor clearColor];
        //: [_mesBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_mesBtn setTitleColor:[UIColor min:[BubbleData show_removeMessage]] forState:UIControlStateNormal];
    }


    //: if (self.delegate && [self.delegate respondsToSelector:@selector(sliderWithIndex:)]) {
    if (self.delegate && [self.delegate respondsToSelector:@selector(tools:)]) {
        //: [self.delegate sliderWithIndex:sender.tag -200];
        [self.delegate tools:sender.tag -200];
    }

}

//: -(void)buttonClick:(UIButton *)sender{
-(void)views:(UIButton *)sender{
    //: NSInteger tag = sender.tag -100;
    NSInteger tag = sender.tag -100;
    //: switch (tag) {
    switch (tag) {
        //: case 0:
        case 0:
        {
            //: if (self.delegate && [self.delegate respondsToSelector:@selector(friendNotification)]) {
            if (self.delegate && [self.delegate respondsToSelector:@selector(seekTime)]) {
                //: [self.delegate friendNotification];
                [self.delegate seekTime];
            }
        }
            //: break;
            break;
        //: case 1:
        case 1:
        {
            //: if (self.delegate && [self.delegate respondsToSelector:@selector(friendNotification)]) {
            if (self.delegate && [self.delegate respondsToSelector:@selector(seekTime)]) {
                //: [self.delegate groupNotification];
                [self.delegate atView];
            }
        }
            //: break;
            break;
        //: case 2:
        case 2:
        {
            //: if (self.delegate && [self.delegate respondsToSelector:@selector(blackFriendList)]) {
            if (self.delegate && [self.delegate respondsToSelector:@selector(mustShow)]) {
                //: [self.delegate blackFriendList];
                [self.delegate mustShow];
            }
        }
            //: break;
            break;

        //: default:
        default:
            //: break;
            break;
    }
}



//: - (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField{

    //: if (self.delegate &&[self.delegate respondsToSelector:@selector(searchClick)]) {
    if (self.delegate &&[self.delegate respondsToSelector:@selector(sizeView)]) {
        //: [self.delegate searchClick];
        [self.delegate sizeView];
    }

    //: return NO;
    return NO;
}

//: -(void)reloadCountNumber:(NSInteger)systemCount{
-(void)oeuvre:(NSInteger)systemCount{
    //: [self reloadAddFriend];
    [self requirement];
    //: [self reloadGroup];
    [self subgroupTing];
}

//: -(void)reloadAddFriend{
-(void)requirement{
    //: NIMSystemNotificationFilter *filter = [[NIMSystemNotificationFilter alloc] init];
    NIMSystemNotificationFilter *filter = [[NIMSystemNotificationFilter alloc] init];
    //: filter.notificationTypes = @[@(5)];
    filter.notificationTypes = @[@(5)];
    //: NSInteger systemCount = [[[NIMSDK sharedSDK] systemNotificationManager] allUnreadCount:filter];
    NSInteger systemCount = [[[NIMSDK sharedSDK] systemNotificationManager] allUnreadCount:filter];
    //: UILabel *label = [_backView viewWithTag:500];
    UILabel *label = [_backView viewWithTag:500];
    //: label.text = [NSString stringWithFormat:@"%ld",systemCount];
    label.text = [NSString stringWithFormat:@"%ld",systemCount];
    //: if (systemCount > 0) {
    if (systemCount > 0) {
        //: label.hidden = NO;
        label.hidden = NO;
    //: }else{
    }else{
        //: label.hidden = YES;
        label.hidden = YES;
    }
}

//: -(void)reloadGroup{
-(void)subgroupTing{
    //: NIMSystemNotificationFilter *filter = [[NIMSystemNotificationFilter alloc] init];
    NIMSystemNotificationFilter *filter = [[NIMSystemNotificationFilter alloc] init];
    //: filter.notificationTypes = @[@(0),@(1),@(2),@(3),@(15),@(16),@(17),@(18)];
    filter.notificationTypes = @[@(0),@(1),@(2),@(3),@(15),@(16),@(17),@(18)];
    //: NSInteger systemCount = [[[NIMSDK sharedSDK] systemNotificationManager] allUnreadCount:filter];
    NSInteger systemCount = [[[NIMSDK sharedSDK] systemNotificationManager] allUnreadCount:filter];
    //: UILabel *label = [_backView viewWithTag:500 +1];
    UILabel *label = [_backView viewWithTag:500 +1];
    //: label.text = [NSString stringWithFormat:@"%ld",systemCount];
    label.text = [NSString stringWithFormat:@"%ld",systemCount];
    //: if (systemCount > 0) {
    if (systemCount > 0) {
        //: label.hidden = NO;
        label.hidden = NO;
    //: }else{
    }else{
        //: label.hidden = YES;
        label.hidden = YES;
    }
}

//: @end
@end
