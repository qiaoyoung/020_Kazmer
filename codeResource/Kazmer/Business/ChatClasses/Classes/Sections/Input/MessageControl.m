
#import <Foundation/Foundation.h>

@interface EcosystemStagData : NSObject

@end

@implementation EcosystemStagData

+ (NSData *)EcosystemStagDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)EcosystemStagDataToCache:(Byte *)data {
    int preciousStone = data[0];
    Byte fileHopping = data[1];
    int response = data[2];
    for (int i = response; i < response + preciousStone; i++) {
        int value = data[i] + fileHopping;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[response + preciousStone] = 0;
    return data + response;
}

+ (NSString *)StringFromEcosystemStagData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self EcosystemStagDataToCache:data]];
}

//: emoji_delete
+ (NSString *)kNameInkSunlightData {
    /* static */ NSString *kNameInkSunlightData = nil;
    if (!kNameInkSunlightData) {
		NSArray<NSNumber *> *origin = @[@12, @14, @3, @87, @95, @97, @92, @91, @81, @86, @87, @94, @87, @102, @87, @8];
		NSData *data = [EcosystemStagData EcosystemStagDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameInkSunlightData = [self StringFromEcosystemStagData:value];
    }
    return kNameInkSunlightData;
}

//: emoji_bar_bg
+ (NSString *)kTitleTideValue {
    /* static */ NSString *kTitleTideValue = nil;
    if (!kTitleTideValue) {
		NSArray<NSNumber *> *origin = @[@12, @13, @12, @119, @35, @173, @62, @218, @75, @216, @67, @206, @88, @96, @98, @93, @92, @82, @85, @84, @101, @82, @85, @90, @203];
		NSData *data = [EcosystemStagData EcosystemStagDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleTideValue = [self StringFromEcosystemStagData:value];
    }
    return kTitleTideValue;
}

//: #4B43DE
+ (NSString *)kText_airplaneValue {
    /* static */ NSString *kText_airplaneValue = nil;
    if (!kText_airplaneValue) {
		NSArray<NSNumber *> *origin = @[@7, @57, @12, @41, @246, @83, @107, @247, @82, @227, @193, @211, @234, @251, @9, @251, @250, @11, @12, @145];
		NSData *data = [EcosystemStagData EcosystemStagDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_airplaneValue = [self StringFromEcosystemStagData:value];
    }
    return kText_airplaneValue;
}

@end       

// __DEBUG__
// __CLOSE_PRINT__
//
//  MessageControl.m
// Mortification
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayInputEmoticonTabView.h"
#import "MessageControl.h"
//: #import "DisplayInputEmoticonManager.h"
#import "IndexManager.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import "NSString+Mortification.h"
#import "NSString+Mortification.h"

//: const NSInteger DisplayInputEmoticonTabViewHeight = 44;
const NSInteger mBubbleStr = 44;
//: const NSInteger NIMInputEmoticonSendButtonWidth = 56;
const NSInteger userPageKey = 56;

//: const CGFloat NIMInputLineBoarder = .5f;
const CGFloat mBeTitle = .5f;

//: @interface DisplayInputEmoticonTabView()
@interface MessageControl()

//: @property (nonatomic,strong) NSMutableArray * tabs;
@property (nonatomic,strong) NSMutableArray * tabs;

//: @property (nonatomic,strong) NSMutableArray * seps;
@property (nonatomic,strong) NSMutableArray * seps;

//: @end
@end



//: @implementation DisplayInputEmoticonTabView
@implementation MessageControl

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:CGRectMake(0, 0, frame.size.width, DisplayInputEmoticonTabViewHeight)];
    self = [super initWithFrame:CGRectMake(0, 0, frame.size.width, mBubbleStr)];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];
//        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"emoji_bar_bg"]];
        //: UIImageView *bg = [[UIImageView alloc]initWithFrame: self.bounds];
        UIImageView *bg = [[UIImageView alloc]initWithFrame: self.bounds];
        //: bg.image = [UIImage imageNamed:@"emoji_bar_bg"];
        bg.image = [UIImage imageNamed:[EcosystemStagData kTitleTideValue]];
        //: [self addSubview:bg];
        [self addSubview:bg];


        //: _tabs = [[NSMutableArray alloc] init];
        _tabs = [[NSMutableArray alloc] init];
        //: _seps = [[NSMutableArray alloc] init];
        _seps = [[NSMutableArray alloc] init];

        //: _sendButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _sendButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: [_sendButton setImage:[UIImage imageNamed:@"emoji_delete"] forState:UIControlStateNormal];
        [_sendButton setImage:[UIImage imageNamed:[EcosystemStagData kNameInkSunlightData]] forState:UIControlStateNormal];
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
        //: _sendButton.device_height = DisplayInputEmoticonTabViewHeight;
        _sendButton.device_height = mBubbleStr;
        //: _sendButton.device_width = NIMInputEmoticonSendButtonWidth;
        _sendButton.device_width = userPageKey;
        //: [self addSubview:_sendButton];
        [self addSubview:_sendButton];

//        self.layer.borderColor = sepColor.CGColor;
//        self.layer.borderWidth = NIMInputLineBoarder;

    }
    //: return self;
    return self;
}


//: - (void)loadCatalogs:(NSArray*)emoticonCatalogs
- (void)item:(NSArray*)emoticonCatalogs
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
    for (TitleDisplayCatalog * catelog in emoticonCatalogs) {
        //: UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
        //: button.frame = CGRectMake(0, 0, 48, 40);
        button.frame = CGRectMake(0, 0, 48, 40);
        //: [button setImage:[UIImage nim_emoticonInKit:catelog.icon] forState:UIControlStateNormal];
        [button setImage:[UIImage kitDirectionInward:catelog.icon] forState:UIControlStateNormal];
        //: [button setImage:[UIImage nim_emoticonInKit:catelog.iconPressed] forState:UIControlStateHighlighted];
        [button setImage:[UIImage kitDirectionInward:catelog.iconPressed] forState:UIControlStateHighlighted];
        //: [button setImage:[UIImage nim_emoticonInKit:catelog.iconPressed] forState:UIControlStateSelected];
        [button setImage:[UIImage kitDirectionInward:catelog.iconPressed] forState:UIControlStateSelected];
        //: [button addTarget:self action:@selector(onTouchTab:) forControlEvents:UIControlEventTouchUpInside];
        [button addTarget:self action:@selector(withTab:) forControlEvents:UIControlEventTouchUpInside];
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

//        UIView *sep = [[UIView alloc] initWithFrame:CGRectMake(0, 0, NIMInputLineBoarder, DisplayInputEmoticonTabViewHeight)];
////        sep.backgroundColor = sepColor;
//        sep.backgroundColor = [UIColor whiteColor];
//        [_seps addObject:sep];
//        [self addSubview:sep];
    }
    //: [self selectTabIndex:0];
    [self recordingSession:0];
}

//: - (void)onTouchTab:(id)sender{
- (void)withTab:(id)sender{
    //: NSInteger index = [self.tabs indexOfObject:sender];
    NSInteger index = [self.tabs indexOfObject:sender];
    //: [self selectTabIndex:index];
    [self recordingSession:index];
    //: if ([self.delegate respondsToSelector:@selector(tabView:didSelectTabIndex:)]) {
    if ([self.delegate respondsToSelector:@selector(stem:app:)]) {
        //: [self.delegate tabView:self didSelectTabIndex:index];
        [self.delegate stem:self app:index];
    }
}


//: - (void)selectTabIndex:(NSInteger)index{
- (void)recordingSession:(NSInteger)index{
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
            btn.layer.borderColor = [UIColor cell:[EcosystemStagData kText_airplaneValue]].CGColor;
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
        //: button.device_width = NIMInputEmoticonSendButtonWidth;
        button.device_width = userPageKey;
        //: button.device_height = DisplayInputEmoticonTabViewHeight;
        button.device_height = mBubbleStr;
        //: button.nim_left = left;
        button.nim_left = left;
        //: button.device_centerY = self.device_height * .5f;
        button.device_centerY = self.device_height * .5f;

        //: left = (int)(button.device_right + spacing);
        left = (int)(button.device_right + spacing);

//        UIView *sep = self.seps[index];
//        sep.nim_left = (int)(button.device_right + spacing);
//        left = (int)(sep.device_right + spacing);
    }
    //: _sendButton.device_right = (int)self.device_width;
    _sendButton.device_right = (int)self.device_width;
}


//: @end
@end
