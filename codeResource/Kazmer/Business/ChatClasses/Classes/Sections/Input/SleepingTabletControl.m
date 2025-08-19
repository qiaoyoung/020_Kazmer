
#import <Foundation/Foundation.h>

@interface HugeData : NSObject

@end

@implementation HugeData

+ (Byte *)HugeDataToCache:(Byte *)data {
    int cueQuire = data[0];
    Byte imagePot = data[1];
    int potViewShirt = data[2];
    for (int i = potViewShirt; i < potViewShirt + cueQuire; i++) {
        int value = data[i] - imagePot;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[potViewShirt + cueQuire] = 0;
    return data + potViewShirt;
}

+ (NSString *)StringFromHugeData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self HugeDataToCache:data]];
}

//: emoji_delete
+ (NSString *)showImmediateMsg {
    /* static */ NSString *showImmediateMsg = nil;
    if (!showImmediateMsg) {
        Byte value[] = {12, 5, 6, 65, 38, 1, 106, 114, 116, 111, 110, 100, 105, 106, 113, 106, 121, 106, 184};
        showImmediateMsg = [self StringFromHugeData:value];
    }
    return showImmediateMsg;
}

//: emoji_bar_bg
+ (NSString *)appSpecializeUrl {
    /* static */ NSString *appSpecializeUrl = nil;
    if (!appSpecializeUrl) {
        Byte value[] = {12, 51, 7, 150, 40, 147, 215, 152, 160, 162, 157, 156, 146, 149, 148, 165, 146, 149, 154, 191};
        appSpecializeUrl = [self StringFromHugeData:value];
    }
    return appSpecializeUrl;
}

//: #4B43DE
+ (NSString *)k_shouldPropertyName {
    /* static */ NSString *k_shouldPropertyName = nil;
    if (!k_shouldPropertyName) {
        Byte value[] = {7, 78, 8, 119, 204, 52, 172, 192, 113, 130, 144, 130, 129, 146, 147, 244};
        k_shouldPropertyName = [self StringFromHugeData:value];
    }
    return k_shouldPropertyName;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SleepingTabletControl.m
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFInputEmoticonTabView.h"
#import "SleepingTabletControl.h"
//: #import "FFFInputEmoticonManager.h"
#import "TitleToManager.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"

//: const NSInteger FFFInputEmoticonTabViewHeight = 44;
const NSInteger m_rowStr = 44;
//: const NSInteger NIMInputEmoticonSendButtonWidth = 56;
const NSInteger app_indexColorMessage = 56;

//: const CGFloat NIMInputLineBoarder = .5f;
const CGFloat kCropFormat = .5f;

//: @interface FFFInputEmoticonTabView()
@interface SleepingTabletControl()

//: @property (nonatomic,strong) NSMutableArray * tabs;
@property (nonatomic,strong) NSMutableArray * tabs;

//: @property (nonatomic,strong) NSMutableArray * seps;
@property (nonatomic,strong) NSMutableArray * seps;

//: @end
@end



//: @implementation FFFInputEmoticonTabView
@implementation SleepingTabletControl

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:CGRectMake(0, 0, frame.size.width, FFFInputEmoticonTabViewHeight)];
    self = [super initWithFrame:CGRectMake(0, 0, frame.size.width, m_rowStr)];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
//        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"emoji_bar_bg"]];
        //: UIImageView *bg = [[UIImageView alloc]initWithFrame: self.bounds];
        UIImageView *bg = [[UIImageView alloc]initWithFrame: self.bounds];
        //: bg.image = [UIImage imageNamed:@"emoji_bar_bg"];
        bg.image = [UIImage imageNamed:[HugeData appSpecializeUrl]];
        //: [self addSubview:bg];
        [self addSubview:bg];


        //: _tabs = [[NSMutableArray alloc] init];
        _tabs = [[NSMutableArray alloc] init];
        //: _seps = [[NSMutableArray alloc] init];
        _seps = [[NSMutableArray alloc] init];

        //: _sendButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _sendButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sendButton setImage:[UIImage imageNamed:@"emoji_delete"] forState:UIControlStateNormal];
        [_sendButton setImage:[UIImage imageNamed:[HugeData showImmediateMsg]] forState:UIControlStateNormal];
//        [_sendButton setTitle:@"发送".nim_localized forState:UIControlStateNormal];
//        _sendButton.titleLabel.font = [UIFont systemFontOfSize:13.f];
//        [_sendButton setBackgroundColor:NEEKIT_UIColorFromRGB(0x0079FF)];

//        _sendButton.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
//        _sendButton.layer.cornerRadius = 10;
//        _sendButton.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
//        _sendButton.layer.shadowOffset = CGSizeMake(0,1);
//        _sendButton.layer.shadowOpacity = 1;
//        _sendButton.layer.shadowRadius = 8;
//        
        //: _sendButton.nim_height = FFFInputEmoticonTabViewHeight;
        _sendButton.nim_height = m_rowStr;
        //: _sendButton.nim_width = NIMInputEmoticonSendButtonWidth;
        _sendButton.nim_width = app_indexColorMessage;
        //: [self addSubview:_sendButton];
        [self addSubview:_sendButton];

//        self.layer.borderColor = sepColor.CGColor;
//        self.layer.borderWidth = NIMInputLineBoarder;

    }
    //: return self;
    return self;
}


//: - (void)loadCatalogs:(NSArray*)emoticonCatalogs
- (void)loadDownOrigin:(NSArray*)emoticonCatalogs
{
    //: for (UIView *subView in [_tabs arrayByAddingObjectsFromArray:_seps]) {
    for (UIView *subView in [_tabs arrayByAddingObjectsFromArray:_seps]) {
        //: [subView removeFromSuperview];
        [subView removeFromSuperview];
    }
    //: [_tabs removeAllObjects];
    [_tabs removeAllObjects];
    //: [_seps removeAllObjects];
    [_seps removeAllObjects];
    //: for (NIMInputEmoticonCatalog * catelog in emoticonCatalogs) {
    for (BottomCatalog * catelog in emoticonCatalogs) {
        //: UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        //: button.frame = CGRectMake(0, 0, 48, 40);
        button.frame = CGRectMake(0, 0, 48, 40);
        //: [button setImage:[UIImage nim_emoticonInKit:catelog.icon] forState:UIControlStateNormal];
        [button setImage:[UIImage cut:catelog.icon] forState:UIControlStateNormal];
        //: [button setImage:[UIImage nim_emoticonInKit:catelog.iconPressed] forState:UIControlStateHighlighted];
        [button setImage:[UIImage cut:catelog.iconPressed] forState:UIControlStateHighlighted];
        //: [button setImage:[UIImage nim_emoticonInKit:catelog.iconPressed] forState:UIControlStateSelected];
        [button setImage:[UIImage cut:catelog.iconPressed] forState:UIControlStateSelected];
        //: [button addTarget:self action:@selector(onTouchTab:) forControlEvents:UIControlEventTouchUpInside];
        [button addTarget:self action:@selector(oldTab:) forControlEvents:UIControlEventTouchUpInside];
        //: [button sizeToFit];
        [button sizeToFit];
        //: [self addSubview:button];
        [self addSubview:button];
        //: button.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        button.backgroundColor = [UIColor colorWithRed:255/255.0 green:255/255.0 blue:255/255.0 alpha:1];
        //: button.layer.cornerRadius = 10;
        button.layer.cornerRadius = 10;
        //: button.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        button.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        //: button.layer.shadowOffset = CGSizeMake(0,1);
        button.layer.shadowOffset = CGSizeMake(0,1);
        //: button.layer.shadowOpacity = 1;
        button.layer.shadowOpacity = 1;
        //: button.layer.shadowRadius = 8;
        button.layer.shadowRadius = 8;


        //: [_tabs addObject:button];
        [_tabs addObject:button];

//        UIView *sep = [[UIView alloc] initWithFrame:CGRectMake(0, 0, NIMInputLineBoarder, FFFInputEmoticonTabViewHeight)];
////        sep.backgroundColor = sepColor;
//        sep.backgroundColor = [UIColor whiteColor];
//        [_seps addObject:sep];
//        [self addSubview:sep];
    }
    //: [self selectTabIndex:0];
    [self queryInsideIndex:0];
}

//: - (void)onTouchTab:(id)sender{
- (void)oldTab:(id)sender{
    //: NSInteger index = [self.tabs indexOfObject:sender];
    NSInteger index = [self.tabs indexOfObject:sender];
    //: [self selectTabIndex:index];
    [self queryInsideIndex:index];
    //: if ([self.delegate respondsToSelector:@selector(tabView:didSelectTabIndex:)]) {
    if ([self.delegate respondsToSelector:@selector(bolusWithColumnIndex:buttonFollow:)]) {
        //: [self.delegate tabView:self didSelectTabIndex:index];
        [self.delegate bolusWithColumnIndex:self buttonFollow:index];
    }
}


//: - (void)selectTabIndex:(NSInteger)index{
- (void)queryInsideIndex:(NSInteger)index{
    //: for (NSInteger i = 0; i < self.tabs.count ; i++) {
    for (NSInteger i = 0; i < self.tabs.count ; i++) {
        //: UIButton *btn = self.tabs[i];
        UIButton *btn = self.tabs[i];
        //: btn.layer.borderWidth = 0;
        btn.layer.borderWidth = 0;
        //: btn.selected = i == index;
        btn.selected = i == index;
        //: if(btn.selected){
        if(btn.selected){
            //: btn.layer.borderWidth = 1.5;
            btn.layer.borderWidth = 1.5;
            //: btn.layer.borderColor = [UIColor colorWithHexString:@"#4B43DE"].CGColor;
            btn.layer.borderColor = [UIColor min:[HugeData k_shouldPropertyName]].CGColor;
        }
    }
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat spacing = 10;
    CGFloat spacing = 10;
    //: CGFloat left = spacing;
    CGFloat left = spacing;
    //: for (NSInteger index = 0; index < self.tabs.count ; index++) {
    for (NSInteger index = 0; index < self.tabs.count ; index++) {
        //: UIButton *button = self.tabs[index];
        UIButton *button = self.tabs[index];
        //: button.nim_width = NIMInputEmoticonSendButtonWidth;
        button.nim_width = app_indexColorMessage;
        //: button.nim_height = FFFInputEmoticonTabViewHeight;
        button.nim_height = m_rowStr;
        //: button.nim_left = left;
        button.nim_left = left;
        //: button.nim_centerY = self.nim_height * .5f;
        button.nim_centerY = self.nim_height * .5f;

        //: left = (int)(button.nim_right + spacing);
        left = (int)(button.nim_right + spacing);

//        UIView *sep = self.seps[index];
//        sep.nim_left = (int)(button.nim_right + spacing);
//        left = (int)(sep.nim_right + spacing);
    }
    //: _sendButton.nim_right = (int)self.nim_width;
    _sendButton.nim_right = (int)self.nim_width;
}


//: @end
@end