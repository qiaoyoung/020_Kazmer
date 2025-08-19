
#import <Foundation/Foundation.h>

@interface SimplyData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation SimplyData

+ (instancetype)sharedInstance {
    static SimplyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)SimplyDataToCache:(Byte *)data {
    int givingView = data[0];
    int tableStatus = data[1];
    for (int i = 0; i < givingView / 2; i++) {
        int begin = tableStatus + i;
        int end = tableStatus + givingView - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[tableStatus + givingView] = 0;
    return data + tableStatus;
}

- (NSString *)StringFromSimplyData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self SimplyDataToCache:data]];
}  

//: #fffWatch
- (NSString *)m_pointName {
    /* static */ NSString *m_pointName = nil;
    if (!m_pointName) {
        Byte value[] = {7, 7, 247, 52, 33, 31, 85, 102, 102, 102, 102, 102, 102, 35, 40};
        m_pointName = [self StringFromSimplyData:value];
    }
    return m_pointName;
}

//: #F7D2F3
- (NSString *)appMarkUrl {
    /* static */ NSString *appMarkUrl = nil;
    if (!appMarkUrl) {
        Byte value[] = {7, 6, 1, 237, 143, 79, 51, 70, 50, 68, 55, 70, 35, 166};
        appMarkUrl = [self StringFromSimplyData:value];
    }
    return appMarkUrl;
}

//: contact_tag_fragment_cancel
- (NSString *)noti_infoStr {
    /* static */ NSString *noti_infoStr = nil;
    if (!noti_infoStr) {
        Byte value[] = {27, 9, 16, 228, 157, 251, 232, 126, 134, 108, 101, 99, 110, 97, 99, 95, 116, 110, 101, 109, 103, 97, 114, 102, 95, 103, 97, 116, 95, 116, 99, 97, 116, 110, 111, 99, 124};
        noti_infoStr = [self StringFromSimplyData:value];
    }
    return noti_infoStr;
}

//: ic_album
- (NSString *)main_freedName {
    /* static */ NSString *main_freedName = nil;
    if (!main_freedName) {
        Byte value[] = {8, 4, 203, 90, 109, 117, 98, 108, 97, 95, 99, 105, 68};
        main_freedName = [self StringFromSimplyData:value];
    }
    return main_freedName;
}

//: #000000
- (NSString *)dreamMeatFormat {
    /* static */ NSString *dreamMeatFormat = nil;
    if (!dreamMeatFormat) {
        Byte value[] = {7, 10, 82, 31, 135, 118, 222, 164, 229, 13, 48, 48, 48, 48, 48, 48, 35, 148};
        dreamMeatFormat = [self StringFromSimplyData:value];
    }
    return dreamMeatFormat;
}

//: message_send_album
- (NSString *)appCenterMayIdent {
    /* static */ NSString *appCenterMayIdent = nil;
    if (!appCenterMayIdent) {
        Byte value[] = {18, 2, 109, 117, 98, 108, 97, 95, 100, 110, 101, 115, 95, 101, 103, 97, 115, 115, 101, 109, 254};
        appCenterMayIdent = [self StringFromSimplyData:value];
    }
    return appCenterMayIdent;
}

//: #CCECFC
- (NSString *)user_intimateValueFormat {
    /* static */ NSString *user_intimateValueFormat = nil;
    if (!user_intimateValueFormat) {
        Byte value[] = {7, 9, 96, 211, 169, 128, 55, 7, 98, 67, 70, 67, 69, 67, 67, 35, 144};
        user_intimateValueFormat = [self StringFromSimplyData:value];
    }
    return user_intimateValueFormat;
}

//: message_send_camera
- (NSString *)dreamRiotFormat {
    /* static */ NSString *dreamRiotFormat = nil;
    if (!dreamRiotFormat) {
        Byte value[] = {19, 7, 235, 219, 154, 27, 102, 97, 114, 101, 109, 97, 99, 95, 100, 110, 101, 115, 95, 101, 103, 97, 115, 115, 101, 109, 171};
        dreamRiotFormat = [self StringFromSimplyData:value];
    }
    return dreamRiotFormat;
}

//: #5D5F66
- (NSString *)app_attendanceName {
    /* static */ NSString *app_attendanceName = nil;
    if (!app_attendanceName) {
        Byte value[] = {7, 7, 252, 40, 155, 129, 21, 54, 54, 70, 53, 68, 53, 35, 105};
        app_attendanceName = [self StringFromSimplyData:value];
    }
    return app_attendanceName;
}

//: ic_camera
- (NSString *)m_propertyMessage {
    /* static */ NSString *m_propertyMessage = nil;
    if (!m_propertyMessage) {
        Byte value[] = {9, 10, 221, 30, 188, 42, 218, 30, 115, 217, 97, 114, 101, 109, 97, 99, 95, 99, 105, 191};
        m_propertyMessage = [self StringFromSimplyData:value];
    }
    return m_propertyMessage;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SetView.m
//  NIM
//
//  Created by Yan Wang on 2024/11/23.
//  Copyright © 2024 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NSSetAvater.h"
#import "SetView.h"

//: @interface NSSetAvater ()
@interface SetView ()

//: @property (nonatomic, strong) UIView *viewBg;
@property (nonatomic, strong) UIView *viewBg;
//: @property (nonatomic,strong) UIButton *cancelBtn;
@property (nonatomic,strong) UIButton *cancelBtn;
//: @property (nonatomic,strong) UIButton *cameraBtn;
@property (nonatomic,strong) UIButton *cameraBtn;
//: @property (nonatomic,strong) UIButton *albumBtn;
@property (nonatomic,strong) UIButton *albumBtn;

//: @end
@end

//: @implementation NSSetAvater
@implementation SetView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        //: UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(animationClose)];
        UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(impendentImage)];
        //: [self addGestureRecognizer:singleTapclose];
        [self addGestureRecognizer:singleTapclose];

        //: [self initUI];
        [self initContent];

    }
    //: return self;
    return self;
}


//: - (void)initUI{
- (void)initContent{

    //: _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-278, [[UIScreen mainScreen] bounds].size.width, 278)];
    _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-278, [[UIScreen mainScreen] bounds].size.width, 278)];
    //: _viewBg.backgroundColor = [UIColor colorWithHexString:@"#fffWatch"];
    _viewBg.backgroundColor = [UIColor min:[[SimplyData sharedInstance] m_pointName]];
    //: _viewBg.layer.masksToBounds = YES;
    _viewBg.layer.masksToBounds = YES;
    //: _viewBg.layer.cornerRadius = 40;
    _viewBg.layer.cornerRadius = 40;
    //: _viewBg.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner; 
    _viewBg.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner; // 左上圆角 // 右上圆角
    //: [self addSubview:_viewBg];
    [self addSubview:_viewBg];

    //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
    CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;

    //: [_viewBg addSubview:self.cameraBtn];
    [_viewBg addSubview:self.cameraBtn];
    //: self.cameraBtn.frame = CGRectMake(30, 30, width, 110);
    self.cameraBtn.frame = CGRectMake(30, 30, width, 110);

    //: [_viewBg addSubview:self.albumBtn];
    [_viewBg addSubview:self.albumBtn];
    //: self.albumBtn.frame = CGRectMake(width+60, 30, width, 110);
    self.albumBtn.frame = CGRectMake(width+60, 30, width, 110);

    //: [_viewBg addSubview:self.cancelBtn];
    [_viewBg addSubview:self.cancelBtn];
    //: self.cancelBtn.frame = CGRectMake(30, self.albumBtn.bottom+24, [[UIScreen mainScreen] bounds].size.width-60, 44);
    self.cancelBtn.frame = CGRectMake(30, self.albumBtn.bottom+24, [[UIScreen mainScreen] bounds].size.width-60, 44);
}

//: -(CGFloat)calculateWidthWithFont:(NSInteger)Font Text:(NSString *)text{
-(CGFloat)should:(NSInteger)Font show:(NSString *)text{
    //: NSDictionary *attr = @{NSFontAttributeName : [UIFont systemFontOfSize:Font]};
    NSDictionary *attr = @{NSFontAttributeName : [UIFont systemFontOfSize:Font]};
    //: CGRect rect = [text boundingRectWithSize:CGSizeMake(0x1.fffffep+127f, Font + 2)
    CGRect rect = [text boundingRectWithSize:CGSizeMake(0x1.fffffep+127f, Font + 2)
                                     //: options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin
                                     options:NSStringDrawingUsesFontLeading|NSStringDrawingUsesLineFragmentOrigin
                                  //: attributes:attr
                                  attributes:attr
                                     //: context:nil];
                                     context:nil];
    //: return rect.size.width;
    return rect.size.width;
}

//: - (void)clickTheBtn:(UIButton *)sender
- (void)medicinalDrugItem:(UIButton *)sender
{
    //: [self animationClose];
    [self impendentImage];
    //: if ([self.delegate respondsToSelector:@selector(didTouchTheBtnWith:)]) {
    if ([self.delegate respondsToSelector:@selector(toolTouch:)]) {
        //: [self.delegate didTouchTheBtnWith:sender.tag];
        [self.delegate toolTouch:sender.tag];
    }

}

//: - (UIButton *)cameraBtn {
- (UIButton *)cameraBtn {
    //: if (!_cameraBtn) {
    if (!_cameraBtn) {
        //: _cameraBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _cameraBtn = [UIButton buttonWithType:UIButtonTypeCustom];
//        [_cameraBtn addTarget:self action:@selector(clickTheBtn:) forControlEvents:UIControlEventTouchUpInside];
//        _cameraBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_cameraBtn setTitleColor:TextColor_2 forState:UIControlStateNormal];
//        [_cameraBtn setTitle:LangKey(@"message_send_camera") forState:UIControlStateNormal];
//        _cameraBtn.tag = 101;
//        [_cameraBtn setImage:[UIImage imageNamed:@"ic_camera"] forState:UIControlStateNormal];
////        [_cameraBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:0];
//        _cameraBtn.backgroundColor = RGB_COLOR_String(@"#F4F1EC");
//        _cameraBtn.layer.cornerRadius = 20;
//        _cameraBtn.layer.masksToBounds = YES;

        //: _cameraBtn.tag = 101;
        _cameraBtn.tag = 101;
        //: _cameraBtn.backgroundColor = [UIColor colorWithHexString:@"#F7D2F3"];
        _cameraBtn.backgroundColor = [UIColor min:[[SimplyData sharedInstance] appMarkUrl]];
        //: _cameraBtn.layer.cornerRadius = 12;
        _cameraBtn.layer.cornerRadius = 12;
        //: [_cameraBtn addTarget:self action:@selector(clickTheBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_cameraBtn addTarget:self action:@selector(medicinalDrugItem:) forControlEvents:UIControlEventTouchUpInside];

        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_camera"];
        img.image = [UIImage imageNamed:[[SimplyData sharedInstance] m_propertyMessage]];
        //: [_cameraBtn addSubview:img];
        [_cameraBtn addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.textColor = [UIColor colorWithHexString:@"#000000"];
        lab.textColor = [UIColor min:[[SimplyData sharedInstance] dreamMeatFormat]];
        //: lab.text = [WatchLanguageManager getTextWithKey:@"message_send_camera"];
        lab.text = [PaintedNaturalLanguageTo exhibit:[[SimplyData sharedInstance] dreamRiotFormat]];
        //: lab.textAlignment = NSTextAlignmentCenter;
        lab.textAlignment = NSTextAlignmentCenter;
        //: [_cameraBtn addSubview:lab];
        [_cameraBtn addSubview:lab];
//        _cameraBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_cameraBtn setTitleColor:RGB_COLOR_String(@"#000000") forState:UIControlStateNormal];
//        [_cameraBtn setTitle:@"Camera" forState:UIControlStateNormal];
//        [_cameraBtn setImage:[UIImage imageNamed:@"ic_camera"] forState:UIControlStateNormal];
//        [_cameraBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
//        _cameraBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
//        [_cameraBtn setTitleEdgeInsets:UIEdgeInsetsMake(36, -36, 0, 0)];
//        [_cameraBtn setImageEdgeInsets:UIEdgeInsetsMake(-20, 0, 0, -[self calculateWidthWithFont:14 Text:LangKey(@"message_send_album")])];
    }
    //: return _cameraBtn;
    return _cameraBtn;
}

//: - (UIButton *)albumBtn {
- (UIButton *)albumBtn {
    //: if (!_albumBtn) {
    if (!_albumBtn) {
        //: _albumBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _albumBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: _albumBtn.backgroundColor = [UIColor colorWithHexString:@"#CCECFC"];
        _albumBtn.backgroundColor = [UIColor min:[[SimplyData sharedInstance] user_intimateValueFormat]];
        //: _albumBtn.layer.cornerRadius = 12;
        _albumBtn.layer.cornerRadius = 12;
        //: [_albumBtn addTarget:self action:@selector(clickTheBtn:) forControlEvents:UIControlEventTouchUpInside];
        [_albumBtn addTarget:self action:@selector(medicinalDrugItem:) forControlEvents:UIControlEventTouchUpInside];
        //: _albumBtn.tag = 102;
        _albumBtn.tag = 102;
        //: CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        CGFloat width = ([[UIScreen mainScreen] bounds].size.width-90)/2;
        //: UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        UIImageView *img = [[UIImageView alloc]initWithFrame:CGRectMake((width-32)/2, 24, 32, 32)];
        //: img.image = [UIImage imageNamed:@"ic_album"];
        img.image = [UIImage imageNamed:[[SimplyData sharedInstance] main_freedName]];
        //: [_albumBtn addSubview:img];
        [_albumBtn addSubview:img];

        //: UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        UILabel *lab = [[UILabel alloc]initWithFrame:CGRectMake(0, img.bottom+10, width, 20)];
        //: lab.font = [UIFont systemFontOfSize:14];
        lab.font = [UIFont systemFontOfSize:14];
        //: lab.textColor = [UIColor colorWithHexString:@"#000000"];
        lab.textColor = [UIColor min:[[SimplyData sharedInstance] dreamMeatFormat]];
        //: lab.text = [WatchLanguageManager getTextWithKey:@"message_send_album"];
        lab.text = [PaintedNaturalLanguageTo exhibit:[[SimplyData sharedInstance] appCenterMayIdent]];
        //: lab.textAlignment = NSTextAlignmentCenter;
        lab.textAlignment = NSTextAlignmentCenter;
        //: [_albumBtn addSubview:lab];
        [_albumBtn addSubview:lab];

//        _albumBtn.titleLabel.font = [UIFont systemFontOfSize:14];
//        [_albumBtn setTitleColor:RGB_COLOR_String(@"#000000") forState:UIControlStateNormal];
//        [_albumBtn setTitle:LangKey(@"message_send_album") forState:UIControlStateNormal];
//        [_albumBtn setImage:[UIImage imageNamed:@"ic_album"] forState:UIControlStateNormal];
////        [_albumBtn layoutButtonWithEdgeInsetsStyle:(MKButtonEdgeInsetsStyleTop) imageTitleSpace:10];
//        _albumBtn.tag = 102;
//        _albumBtn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
//        [_albumBtn setTitleEdgeInsets:UIEdgeInsetsMake(36, -36, 0, 0)];
//        [_albumBtn setImageEdgeInsets:UIEdgeInsetsMake(-24, 0, 0, -[self calculateWidthWithFont:14 Text:LangKey(@"message_send_album")])];
    }
    //: return _albumBtn;
    return _albumBtn;
}

//: - (UIButton *)cancelBtn {
- (UIButton *)cancelBtn {
    //: if (!_cancelBtn) {
    if (!_cancelBtn) {
        //: _cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        _cancelBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_cancelBtn addTarget:self action:@selector(animationClose) forControlEvents:UIControlEventTouchUpInside];
        [_cancelBtn addTarget:self action:@selector(impendentImage) forControlEvents:UIControlEventTouchUpInside];
        //: _cancelBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        _cancelBtn.titleLabel.font = [UIFont systemFontOfSize:14];
        //: [_cancelBtn setTitleColor:[UIColor colorWithHexString:@"#5D5F66"] forState:UIControlStateNormal];
        [_cancelBtn setTitleColor:[UIColor min:[[SimplyData sharedInstance] app_attendanceName]] forState:UIControlStateNormal];
        //: [_cancelBtn setTitle:[WatchLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] forState:UIControlStateNormal];
        [_cancelBtn setTitle:[PaintedNaturalLanguageTo exhibit:[[SimplyData sharedInstance] noti_infoStr]] forState:UIControlStateNormal];
        //: _cancelBtn.backgroundColor = [UIColor colorWithHexString:@"#fffWatch"];
        _cancelBtn.backgroundColor = [UIColor min:[[SimplyData sharedInstance] m_pointName]];
        //: _cancelBtn.layer.cornerRadius = 22;
        _cancelBtn.layer.cornerRadius = 22;
        //: _cancelBtn.layer.masksToBounds = YES;
        _cancelBtn.layer.masksToBounds = YES;
        //: _cancelBtn.layer.borderWidth = 1;
        _cancelBtn.layer.borderWidth = 1;
        //: _cancelBtn.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
        _cancelBtn.layer.borderColor = [UIColor colorWithRed:238/255.0 green:238/255.0 blue:238/255.0 alpha:1].CGColor;
    }
    //: return _cancelBtn;
    return _cancelBtn;
}

//: - (void)animationClose
- (void)impendentImage
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)table
{
    //: self.hidden = NO;
    self.hidden = NO;
}


//: @end
@end
