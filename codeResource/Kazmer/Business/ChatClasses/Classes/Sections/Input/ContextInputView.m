
#import <Foundation/Foundation.h>

@interface DespiteData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation DespiteData

+ (instancetype)sharedInstance {
    static DespiteData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)DespiteDataToCache:(Byte *)data {
    int troubledTwist = data[0];
    Byte preliminary = data[1];
    int bear = data[2];
    for (int i = bear; i < bear + troubledTwist; i++) {
        int value = data[i] + preliminary;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[bear + troubledTwist] = 0;
    return data + bear;
}

- (NSString *)StringFromDespiteData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self DespiteDataToCache:data]];
}

//: contact_tag_fragment_cancel
- (NSString *)kContentDoingString {
    /* static */ NSString *kContentDoingString = nil;
    if (!kContentDoingString) {
        Byte value[] = {27, 27, 11, 44, 170, 217, 251, 227, 34, 155, 77, 72, 84, 83, 89, 70, 72, 89, 68, 89, 70, 76, 68, 75, 87, 70, 76, 82, 74, 83, 89, 68, 72, 70, 83, 72, 74, 81, 46};
        kContentDoingString = [self StringFromDespiteData:value];
    }
    return kContentDoingString;
}

//: message_please_enter_content
- (NSString *)kContent_hamBeginValue {
    /* static */ NSString *kContent_hamBeginValue = nil;
    if (!kContent_hamBeginValue) {
        Byte value[] = {28, 3, 13, 235, 82, 7, 110, 173, 92, 59, 249, 74, 115, 106, 98, 112, 112, 94, 100, 98, 92, 109, 105, 98, 94, 112, 98, 92, 98, 107, 113, 98, 111, 92, 96, 108, 107, 113, 98, 107, 113, 144};
        kContent_hamBeginValue = [self StringFromDespiteData:value];
    }
    return kContent_hamBeginValue;
}

//: tag_activity_set
- (NSString *)kText_tonightName {
    /* static */ NSString *kText_tonightName = nil;
    if (!kText_tonightName) {
        Byte value[] = {16, 17, 13, 222, 9, 228, 2, 103, 19, 86, 189, 52, 241, 99, 80, 86, 78, 80, 82, 99, 88, 101, 88, 99, 104, 78, 98, 84, 99, 209};
        kText_tonightName = [self StringFromDespiteData:value];
    }
    return kText_tonightName;
}

//: warm_prompt
- (NSString *)kContent_keyData {
    /* static */ NSString *kContent_keyData = nil;
    if (!kContent_keyData) {
        Byte value[] = {11, 25, 13, 177, 141, 146, 16, 163, 97, 125, 63, 139, 246, 94, 72, 89, 84, 70, 87, 89, 86, 84, 87, 91, 65};
        kContent_keyData = [self StringFromDespiteData:value];
    }
    return kContent_keyData;
}

//: setting_privacy
- (NSString *)kTitle_colaWithString {
    /* static */ NSString *kTitle_colaWithString = nil;
    if (!kTitle_colaWithString) {
        Byte value[] = {15, 11, 11, 84, 72, 135, 87, 165, 208, 83, 236, 104, 90, 105, 105, 94, 99, 92, 84, 101, 103, 94, 107, 86, 88, 110, 3};
        kTitle_colaWithString = [self StringFromDespiteData:value];
    }
    return kTitle_colaWithString;
}

//: #fffDisplay
- (NSString *)kTitleItemValue {
    /* static */ NSString *kTitleItemValue = nil;
    if (!kTitleItemValue) {
        Byte value[] = {7, 74, 5, 219, 203, 217, 28, 28, 28, 28, 28, 28, 233};
        kTitleItemValue = [self StringFromDespiteData:value];
    }
    return kTitleItemValue;
}

//: default
- (NSString *)kContent_defineItemString {
    /* static */ NSString *kContent_defineItemString = nil;
    if (!kContent_defineItemString) {
        Byte value[] = {7, 58, 4, 239, 42, 43, 44, 39, 59, 50, 58, 135};
        kContent_defineItemString = [self StringFromDespiteData:value];
    }
    return kContent_defineItemString;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ContextInputView.m
// Mortification
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayInputView.h"
#import "ContextInputView.h"
//: #import <AVFoundation/AVFoundation.h>
#import <AVFoundation/AVFoundation.h>
//: #import "DisplayInputMoreContainerView.h"
#import "MaxAtView.h"
//: #import "DisplayInputEmoticonContainerView.h"
#import "MakeNameView.h"
//: #import "UIViewDeviceKit.h"
#import "UIViewDeviceKit.h"
//: #import "DisplayInputEmoticonDefine.h"
#import "DisplayInputEmoticonDefine.h"
//: #import "DisplayInputEmoticonManager.h"
#import "IndexManager.h"
//: #import "DisplayInputToolBar.h"
#import "ResultCommentView.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+Mortification.h"
//: #import "NSString+Mortification.h"
#import "NSString+Mortification.h"
//: #import "DisplayContactSelectViewController.h"
#import "RecordTitleViewController.h"
//: #import "MyUserKit.h"
#import "Mortification.h"
//: #import "DisplayKitInfoFetchOption.h"
#import "CellClean.h"
//: #import "DisplayKitKeyboardInfo.h"
#import "RedInfo.h"
//: #import "NSString+MyUserKit.h"
#import "NSString+Mortification.h"
//: #import "DisplayReplyContentView.h"
#import "BookView.h"
//: #import "M80AttributedLabel+MyUserKit.h"
#import "LabelNameScrollView+Mortification.h"
//: #import <YYText.h>
#import <YYText.h>
//: #import "DisplayTextHighlight.h"
#import "SpectralColorTitleHighlight.h"
//: #import "PhotoContainerView.h"
#import "LyricView.h"

//: @interface DisplayInputView()<DisplayInputToolBarDelegate,NIMInputEmoticonProtocol,NIMContactSelectDelegate,DisplayReplyContentViewDelegate,moreCustomPickerViewDelegate>
@interface ContextInputView()<TeamSize,LabelControl,LengthDelegate,RepayShouldComment,moreCustomPickerViewDelegate>
{
    //: UIView *_emoticonView;
    UIView *_emoticonView;
}


//: @property (nonatomic, assign) NIMAudioRecordPhase recordPhase;
@property (nonatomic, assign) NIMAudioRecordPhase recordPhase;
//: @property (nonatomic, strong) NSArray *selectedPhoto;
@property (nonatomic, strong) NSArray *selectedPhoto;
//: @property (nonatomic, assign) CGFloat keyBoardFrameTop; 
@property (nonatomic, assign) CGFloat keyBoardFrameTop;//键盘的frame的top值，屏幕高度 - 键盘高度，由于有旋转的可能，这个值只有当 键盘弹出时才有意义。
//: @property (nonatomic, weak) id<NIMInputDelegate> inputDelegate;
@property (nonatomic, weak) id<PathFlip> inputDelegate;

//: @property (nonatomic, weak) id<NIMInputActionDelegate> actionDelegate;
@property (nonatomic, weak) id<PullDelegate> actionDelegate;

//: @property (nonatomic, weak) id<DisplaySessionConfig> inputConfig;
@property (nonatomic, weak) id<ColorConfig> inputConfig;


//: @end
@end


//: @implementation DisplayInputView
@implementation ContextInputView

//: @synthesize emoticonContainer = _emoticonContainer;
@synthesize emoticonContainer = _emoticonContainer;
//: @synthesize moreContainer = _moreContainer;
@synthesize moreContainer = _moreContainer;

//: - (CGSize)sizeThatFits:(CGSize)size
- (CGSize)sizeThatFits:(CGSize)size
{
    //这里不做.语法 get 操作，会提前初始化组件导致卡顿
    //: CGFloat replyedContentHeight = _replyedContent.hidden ? 0 : _replyedContent.device_height;
    CGFloat replyedContentHeight = _replyedContent.hidden ? 0 : _replyedContent.device_height;
    //: CGFloat toolBarHeight = _toolBar.device_height;
    CGFloat toolBarHeight = _toolBar.device_height;
    //: CGFloat containerHeight = 0;
    CGFloat containerHeight = 0;
    //: switch (self.status)
    switch (self.status)
    {
        //: case NIMInputStatusEmoticon:
        case NIMInputStatusEmoticon:
        {
            //: containerHeight = _emoticonContainer.device_height;
            containerHeight = _emoticonContainer.device_height;
            //: break;
            break;
        }
        //: case NIMInputStatusMore:
        case NIMInputStatusMore:
        {
            //: containerHeight = _moreContainer.device_height;
            containerHeight = _moreContainer.device_height;
            //: break;
            break;
        }
        //: default:
        default:
        {
            //: UIEdgeInsets safeArea = self.superview.safeAreaInsets;
            UIEdgeInsets safeArea = self.superview.safeAreaInsets;
            //键盘是从最底下弹起的，需要减去安全区域底部的高度
            //: CGFloat keyboardDelta = [DisplayKitKeyboardInfo instance].keyboardHeight - safeArea.bottom;
            CGFloat keyboardDelta = [RedInfo parent].keyboardHeight - safeArea.bottom;

            //如果键盘还没有安全区域高，容器的初始值为0；否则则为键盘和安全区域的高度差值，这样可以保证 toolBar 始终在键盘上面
            //: containerHeight = keyboardDelta>0 ? keyboardDelta : 0;
            containerHeight = keyboardDelta>0 ? keyboardDelta : 0;

        }
            //: break;
            break;
    }
    //: CGFloat height = replyedContentHeight + toolBarHeight + containerHeight + (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom);
    CGFloat height = replyedContentHeight + toolBarHeight + containerHeight + (({UIEdgeInsets i; if(@available(iOS 11.0, *)) {i = [[[UIApplication sharedApplication] delegate] window].safeAreaInsets;} else {i = UIEdgeInsetsZero;} i;}).bottom);
    //: CGFloat width = self.superview? self.superview.device_width : self.device_width;
    CGFloat width = self.superview? self.superview.device_width : self.device_width;
    //: return CGSizeMake(width, height);
    return CGSizeMake(width, height);
}

//: #pragma mark - NIMContactSelectDelegate
#pragma mark - LengthDelegate
//: - (void)didFinishedSelect:(NSArray *)selectedContacts
- (void)emptySkimEnable:(NSArray *)selectedContacts
{
    //: NSMutableString *str = [[NSMutableString alloc] initWithString:@""];
    NSMutableString *str = [[NSMutableString alloc] initWithString:@""];
    //: [self addContacts:selectedContacts prefix:str];
    [self prefix:selectedContacts frame:str];
}

//: - (void)checkAt:(NSString *)text
- (void)need:(NSString *)text
{
    //: if ([text isEqualToString:@"@"]) {
    if ([text isEqualToString:@"@"]) {
        //: switch (self.session.sessionType)
        switch (self.session.sessionType)
        {
            //: case NIMSessionTypeTeam:
            case NIMSessionTypeTeam:
            {
                //: NIMContactTeamMemberSelectConfig *config = [[NIMContactTeamMemberSelectConfig alloc] init];
                MessageConfig *config = [[MessageConfig alloc] init];
                //: config.teamType = NIMKitTeamTypeNomal;
                config.teamType = NIMKitTeamTypeNomal;
                //: config.needMutiSelected = NO;
                config.needMutiSelected = NO;
                //: config.teamId = self.session.sessionId;
                config.teamId = self.session.sessionId;
                //: config.session = self.session;
                config.session = self.session;
                //: config.filterIds = @[[NIMSDK sharedSDK].loginManager.currentAccount];
                config.filterIds = @[[NIMSDK sharedSDK].loginManager.currentAccount];
                //: DisplayContactSelectViewController *vc = [[DisplayContactSelectViewController alloc] initWithConfig:config];
                RecordTitleViewController *vc = [[RecordTitleViewController alloc] initWithSightConfig:config];
                //: vc.delegate = self;
                vc.delegate = self;
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [vc show];
                    [vc recent];
                //: });
                });
            }
                //: break;
                break;
            //: case NIMSessionTypeSuperTeam:
            case NIMSessionTypeSuperTeam:
            {
                //: NIMContactTeamMemberSelectConfig *config = [[NIMContactTeamMemberSelectConfig alloc] init];
                MessageConfig *config = [[MessageConfig alloc] init];
                //: config.teamType = NIMKitTeamTypeSuper;
                config.teamType = NIMKitTeamTypeSuper;
                //: config.needMutiSelected = NO;
                config.needMutiSelected = NO;
                //: config.teamId = self.session.sessionId;
                config.teamId = self.session.sessionId;
                //: config.session = self.session;
                config.session = self.session;
                //: config.filterIds = @[[NIMSDK sharedSDK].loginManager.currentAccount];
                config.filterIds = @[[NIMSDK sharedSDK].loginManager.currentAccount];
                //: DisplayContactSelectViewController *vc = [[DisplayContactSelectViewController alloc] initWithConfig:config];
                RecordTitleViewController *vc = [[RecordTitleViewController alloc] initWithSightConfig:config];
                //: vc.delegate = self;
                vc.delegate = self;
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [vc show];
                    [vc recent];
                //: });
                });
            }
                //: break;
                break;
            //: case NIMSessionTypeP2P:
            case NIMSessionTypeP2P:
                //: break;
                break;
            //: case NIMSessionTypeChatroom:
            case NIMSessionTypeChatroom:
                //: break;
                break;
            //: default:
            default:
                //: break;
                break;
        }
    }
}


//: - (void)reset
- (void)nameAll
{
    //: self.device_width = self.superview.device_width;
    self.device_width = self.superview.device_width;
    //: [self refreshStatus:NIMInputStatusText];
    [self canStatus:NIMInputStatusText];
    //: [self sizeToFit];
    [self sizeToFit];
}

//: - (void)setup
- (void)searchedSetup
{
    //: if (!_toolBar)
    if (!_toolBar)
    {
        //: _toolBar = [[DisplayInputToolBar alloc] initWithFrame:CGRectMake(0, 0, self.device_width, 0)];
        _toolBar = [[ResultCommentView alloc] initWithFrame:CGRectMake(0, 0, self.device_width, 0)];
    }
    //: [self addSubview:_toolBar];
    [self addSubview:_toolBar];
    //设置placeholder
//        NSString *placeholder = [Mortification sharedKit].config.placeholder;
//        [_toolBar setPlaceHolder:placeholder];
    //: [_toolBar setPlaceHolder:[DisplayLanguageManager getTextWithKey:@"message_please_enter_content"]];
    [_toolBar setSetAndThole:[MakeManager cell:[[DespiteData sharedInstance] kContent_hamBeginValue]]];
    //设置input bar 上的按钮
    //: if ([_inputConfig respondsToSelector:@selector(inputBarItemTypes)]) {
    if ([_inputConfig respondsToSelector:@selector(positionShow)]) {
        //: NSArray *types = [_inputConfig inputBarItemTypes];
        NSArray *types = [_inputConfig positionShow];
        //: [_toolBar setInputBarItemTypes:types];
        [_toolBar setInputBarItemTypes:types];
    }

    //: _toolBar.delegate = self;
    _toolBar.delegate = self;
    //: [_toolBar.emoticonBtn addTarget:self action:@selector(onTouchEmoticonBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_toolBar.emoticonBtn addTarget:self action:@selector(rowBubble:) forControlEvents:UIControlEventTouchUpInside];
//    [_toolBar.emoticonBtn2 addTarget:self action:@selector(onTouchEmoticonBtn:) forControlEvents:UIControlEventTouchUpInside];
    //: [_toolBar.albunBtn addTarget:self action:@selector(requestAuthorizationForPhotoLibrary) forControlEvents:UIControlEventTouchUpInside];
    [_toolBar.albunBtn addTarget:self action:@selector(managerMember) forControlEvents:UIControlEventTouchUpInside];
//    [_toolBar.cameraBtn addTarget:self action:@selector(onTouchCameraBtn:) forControlEvents:UIControlEventTouchUpInside];
    //    [_toolBar.moreMediaBtn addTarget:self action:@selector(onTouchMoreBtn:) forControlEvents:UIControlEventTouchUpInside];
    //: [_toolBar.voiceButton addTarget:self action:@selector(onTouchVoiceBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_toolBar.voiceButton addTarget:self action:@selector(arguments:) forControlEvents:UIControlEventTouchUpInside];
    //: [_toolBar.sendButton addTarget:self action:@selector(onTouchSendBtn:) forControlEvents:UIControlEventTouchUpInside];
    [_toolBar.sendButton addTarget:self action:@selector(viewTable:) forControlEvents:UIControlEventTouchUpInside];
    //    [_toolBar.recordButton addTarget:self action:@selector(onTouchRecordBtnDown:) forControlEvents:UIControlEventTouchDown];
    //    [_toolBar.recordButton addTarget:self action:@selector(onTouchRecordBtnDragInside:) forControlEvents:UIControlEventTouchDragInside];
    //    [_toolBar.recordButton addTarget:self action:@selector(onTouchRecordBtnDragOutside:) forControlEvents:UIControlEventTouchDragOutside];
    //    [_toolBar.recordButton addTarget:self action:@selector(onTouchRecordBtnUpInside:) forControlEvents:UIControlEventTouchUpInside];
    //    [_toolBar.recordButton addTarget:self action:@selector(onTouchRecordBtnUpOutside:) forControlEvents:UIControlEventTouchUpOutside];
    //: _toolBar.device_size = [_toolBar sizeThatFits:CGSizeMake(self.device_width, 1.7976931348623157e+308)];
    _toolBar.device_size = [_toolBar sizeThatFits:CGSizeMake(self.device_width, 1.7976931348623157e+308)];
    //: _toolBar.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    _toolBar.autoresizingMask = UIViewAutoresizingFlexibleWidth;
    //    [_toolBar.recordButton setTitle:@"按住说话".nim_localized forState:UIControlStateNormal];
    //    [_toolBar.recordButton setHidden:YES];

    //设置最大输入字数
    //: NSInteger textInputLength = [MyUserKit sharedKit].config.inputMaxLength;
    NSInteger textInputLength = [Mortification text].config.inputMaxLength;
    //: self.maxTextLength = textInputLength;
    self.maxTextLength = textInputLength;

    //: [self refreshStatus:NIMInputStatusText];
    [self canStatus:NIMInputStatusText];
    //: [self sizeToFit];
    [self sizeToFit];
}

//: - (BOOL)isTextValid:(NSString *)text {
- (BOOL)deviceValid:(NSString *)text {
    //: NSString *trimmedText = [text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSString *trimmedText = [text stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //: if ([trimmedText length] == 0) {
    if ([trimmedText length] == 0) {
        //: return NO;
        return NO;
    }

    // 检查是否只包含空白字符
    //: NSCharacterSet *invalidChars = [[NSCharacterSet whitespaceAndNewlineCharacterSet] invertedSet];
    NSCharacterSet *invalidChars = [[NSCharacterSet whitespaceAndNewlineCharacterSet] invertedSet];
    //: NSRange range = [text rangeOfCharacterFromSet:invalidChars];
    NSRange range = [text rangeOfCharacterFromSet:invalidChars];
    //: return range.location != NSNotFound;
    return range.location != NSNotFound;
}

//: - (void)onTouchMoreBtn {
- (void)messageBtn {
    //: if (self.status != NIMInputStatusMore)
    if (self.status != NIMInputStatusMore)
    {
//        if ([self.actionDelegate respondsToSelector:@selector(onTapMoreBtn:)]) {
//            [self.actionDelegate onTapMoreBtn:sender];
//        }
        //: [self checkMoreContainer];
        [self purse];
        //: [self bringSubviewToFront:self.moreContainer];
        [self bringSubviewToFront:self.moreContainer];
        //: [self.moreContainer.albumPickerView reloadMediaData];
        [self.moreContainer.albumPickerView text];
        //: [self.moreContainer.albumPickerView.selectedAssets removeAllObjects];
        [self.moreContainer.albumPickerView.selectedAssets removeAllObjects];
        //: [self.moreContainer.albumPickerView.collectionView reloadData];
        [self.moreContainer.albumPickerView.collectionView reloadData];
        //: [self.moreContainer setHidden:NO];
        [self.moreContainer setHidden:NO];
        //: [self.emoticonContainer setHidden:YES];
        [self.emoticonContainer setHidden:YES];
        //: [self refreshStatus:NIMInputStatusMore];
        [self canStatus:NIMInputStatusMore];
        //: [self sizeToFit];
        [self sizeToFit];

        //: if (self.toolBar.showsKeyboard)
        if (self.toolBar.showsKeyboard)
        {
            //: self.toolBar.showsKeyboard = NO;
            self.toolBar.showsKeyboard = NO;
        }
    }
    //: else
    else
    {
        //: [self refreshStatus:NIMInputStatusText];
        [self canStatus:NIMInputStatusText];
        //: self.toolBar.showsKeyboard = YES;
        self.toolBar.showsKeyboard = YES;
    }
}

//: - (void)callDidChangeHeight
- (void)rename
{
    //: if (_inputDelegate && [_inputDelegate respondsToSelector:@selector(didChangeInputHeight:)])
    if (_inputDelegate && [_inputDelegate respondsToSelector:@selector(shoulded:)])
    {
        //: if (self.status == NIMInputStatusMore || self.status == NIMInputStatusEmoticon || self.status == NIMInputStatusAudio)
        if (self.status == NIMInputStatusMore || self.status == NIMInputStatusEmoticon || self.status == NIMInputStatusAudio)
        {
            //这个时候需要一个动画来模拟键盘
            //: [UIView animateWithDuration:0.25 delay:0 options:7 animations:^{
            [UIView animateWithDuration:0.25 delay:0 options:7 animations:^{
                //: [_inputDelegate didChangeInputHeight:self.device_height];
                [_inputDelegate shoulded:self.device_height];
            //: } completion:nil];
            } completion:nil];
        }
        //: else
        else
        {
            //: [_inputDelegate didChangeInputHeight:self.device_height];
            [_inputDelegate shoulded:self.device_height];

        }
    }
}

//: #pragma mark - button actions
#pragma mark - button actions
//: - (void)onTouchAlbunBtn:(id)sender {
- (void)fastText:(id)sender {

    //: if ([self.actionDelegate respondsToSelector:@selector(onTapAlbunBtn:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(alonged:)]) {
        //: [self.actionDelegate onTapAlbunBtn:sender];
        [self.actionDelegate alonged:sender];
    }
}

//: - (IBAction)onTouchRecordBtnUpOutside:(id)sender {
- (IBAction)taped:(id)sender {
    // cancel Recording
    //: self.recordPhase = AudioRecordPhaseEnd;
    self.recordPhase = AudioRecordPhaseEnd;
}

//: - (void)setInputDelegate:(id<NIMInputDelegate>)delegate
- (void)setInputDelegate:(id<PathFlip>)delegate
{
    //: _inputDelegate = delegate;
    _inputDelegate = delegate;
}

//: - (void)refreshStatus:(NIMInputStatus)status
- (void)canStatus:(NIMInputStatus)status
{
    //: self.status = status;
    self.status = status;
    //: [self.toolBar update:status];
    [self.toolBar custom:status];
    //: dispatch_after(dispatch_time((0ull), (int64_t)(0.2 * 1000000000ull)), dispatch_get_main_queue(), ^{
    dispatch_after(dispatch_time((0ull), (int64_t)(0.2 * 1000000000ull)), dispatch_get_main_queue(), ^{
        //: self.moreContainer.hidden = status != NIMInputStatusMore;
        self.moreContainer.hidden = status != NIMInputStatusMore;
        //: self.emoticonContainer.hidden = status != NIMInputStatusEmoticon;
        self.emoticonContainer.hidden = status != NIMInputStatusEmoticon;
    //: });
    });
}

//: #pragma mark - private methods
#pragma mark - private methods

//: - (void)setFrame:(CGRect)frame
- (void)setFrame:(CGRect)frame
{
    //: CGFloat height = self.frame.size.height;
    CGFloat height = self.frame.size.height;
    //: [super setFrame:frame];
    [super setFrame:frame];
    //: if (frame.size.height != height)
    if (frame.size.height != height)
    {
        //: [self callDidChangeHeight];
        [self rename];
    }
}

//: - (void)dismissReplyedContent
- (void)text
{
    //: self.replyedContent.label.text = nil;
    self.replyedContent.label.text = nil;
    //: self.replyedContent.hidden = YES;
    self.replyedContent.hidden = YES;
    //: [self setNeedsLayout];
    [self setNeedsLayout];
}

//: - (DisplayReplyContentView *)replyedContent
- (BookView *)replyedContent
{
    //: if (!_replyedContent)
    if (!_replyedContent)
    {
        //: _replyedContent = [[DisplayReplyContentView alloc] initWithFrame:CGRectMake(0, 0, self.device_width, 50)];
        _replyedContent = [[BookView alloc] initWithFrame:CGRectMake(0, 0, self.device_width, 50)];
        //: _replyedContent.hidden = YES;
        _replyedContent.hidden = YES;
        //: _replyedContent.delegate = self;
        _replyedContent.delegate = self;
        //: [self addSubview:_replyedContent];
        [self addSubview:_replyedContent];
    }
    //: return _replyedContent;
    return _replyedContent;
}


//: - (NSRange)rangeForPrefix:(NSString *)prefix suffix:(NSString *)suffix
- (NSRange)content:(NSString *)prefix complete:(NSString *)suffix
{
    //: NSString *text = self.toolBar.contentText;
    NSString *text = self.toolBar.contentText;
    //: NSRange range = [self.toolBar selectedRange];
    NSRange range = [self.toolBar mediaUp];
    //: NSString *selectedText = range.length ? [text substringWithRange:range] : text;
    NSString *selectedText = range.length ? [text substringWithRange:range] : text;
    //: NSInteger endLocation = range.location;
    NSInteger endLocation = range.location;
    //: if (endLocation <= 0)
    if (endLocation <= 0)
    {
        //: return NSMakeRange(NSNotFound, 0);
        return NSMakeRange(NSNotFound, 0);
    }
    //: NSInteger index = -1;
    NSInteger index = -1;
    //: if ([selectedText hasSuffix:suffix]) {
    if ([selectedText hasSuffix:suffix]) {
        //往前搜最多20个字符，一般来讲是够了...
        //: NSInteger p = 20;
        NSInteger p = 20;
        //: for (NSInteger i = endLocation; i >= endLocation - p && i-1 >= 0 ; i--)
        for (NSInteger i = endLocation; i >= endLocation - p && i-1 >= 0 ; i--)
        {
            //: NSRange subRange = NSMakeRange(i - 1, 1);
            NSRange subRange = NSMakeRange(i - 1, 1);
            //: NSString *subString = [text substringWithRange:subRange];
            NSString *subString = [text substringWithRange:subRange];
            //: if ([subString compare:prefix] == NSOrderedSame)
            if ([subString compare:prefix] == NSOrderedSame)
            {
                //: index = i - 1;
                index = i - 1;
                //: break;
                break;
            }
        }
    }
    //: return index == -1? NSMakeRange(endLocation - 1, 1) : NSMakeRange(index, endLocation - index);
    return index == -1? NSMakeRange(endLocation - 1, 1) : NSMakeRange(index, endLocation - index);
}

//: - (void)textViewDidChange
- (void)progressMessage
{
    //: if (self.actionDelegate && [self.actionDelegate respondsToSelector:@selector(onTextChanged:)])
    if (self.actionDelegate && [self.actionDelegate respondsToSelector:@selector(oning:)])
    {
        //: [self.actionDelegate onTextChanged:self];
        [self.actionDelegate oning:self];
    }
}

//: - (BOOL)shouldCheckAt
- (BOOL)pastAt
{
    //: BOOL disable = NO;
    BOOL disable = NO;
    //: if ([self.inputConfig respondsToSelector:@selector(disableAt)])
    if ([self.inputConfig respondsToSelector:@selector(labelAt)])
    {
        //: disable = [self.inputConfig disableAt];
        disable = [self.inputConfig labelAt];
    }
    //: return !disable;
    return !disable;
}

//: - (void)refreshReplyedContent:(NIMMessage *)message
- (void)pageName:(NIMMessage *)message
{
    //: NSString *text = [NSString stringWithFormat:@"%@", [[MyUserKit sharedKit] replyedContentWithMessage:message]];
    NSString *text = [NSString stringWithFormat:@"%@", [[Mortification text] cells:message]];

    //: DisplayKitInfoFetchOption *option = [[DisplayKitInfoFetchOption alloc] init];
    CellClean *option = [[CellClean alloc] init];
    //: option.message = message;
    option.message = message;
    //: DisplayKitInfo *info = [[MyUserKit sharedKit] infoByUser:message.from option:option];
    CancelTeamCorner *info = [[Mortification text] tingVoice:message.from keepingOption:option];
    //: self.replyedContent.fromUser.text = [NSString stringWithFormat:@"%@%@",[DisplayLanguageManager getTextWithKey:@"回复"],info.showName];
    self.replyedContent.fromUser.text = [NSString stringWithFormat:@"%@%@",[MakeManager cell:@"回复"],info.showName];
    //: self.replyedContent.label.text = text;
    self.replyedContent.label.text = text;
//    [self.replyedContent.label nim_setText:text];
    //: self.replyedContent.replymessage = message;
    self.replyedContent.replymessage = message;

    //: if(message.messageType == NIMMessageTypeImage){
    if(message.messageType == NIMMessageTypeImage){

        //: NIMImageObject *imageObject = (NIMImageObject*)message.messageObject;
        NIMImageObject *imageObject = (NIMImageObject*)message.messageObject;
        //: NSString *url = [imageObject.url?:@"" stringByReplacingOccurrencesOfString:@" " withString:@""];
        NSString *url = [imageObject.url?:@"" stringByReplacingOccurrencesOfString:@" " withString:@""];

        //: self.replyedContent.picView.hidden = NO;
        self.replyedContent.picView.hidden = NO;
        //: [self.replyedContent.picView sd_setImageWithURL:[NSURL URLWithString:url]];
        [self.replyedContent.picView sd_setImageWithURL:[NSURL URLWithString:url]];
        //: self.replyedContent.fromUser.left = self.replyedContent.picView.right+10;
        self.replyedContent.fromUser.left = self.replyedContent.picView.right+10;
        //: self.replyedContent.label.left = self.replyedContent.picView.right+10;
        self.replyedContent.label.left = self.replyedContent.picView.right+10;
    //: }else{
    }else{
        //: self.replyedContent.picView.hidden = YES;
        self.replyedContent.picView.hidden = YES;
        //: self.replyedContent.fromUser.left = 15;
        self.replyedContent.fromUser.left = 15;
        //: self.replyedContent.label.left = 15;
        self.replyedContent.label.left = 15;
    }

    //: self.replyedContent.hidden = NO;
    self.replyedContent.hidden = NO;
    //: [self.replyedContent setNeedsLayout];
    [self.replyedContent setNeedsLayout];
}

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithTing:(CGRect)frame
                       //: config:(id<DisplaySessionConfig>)config
                       play:(id<ColorConfig>)config
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self)
    if (self)
    {
        //: _recording = NO;
        _recording = NO;
        //: _recordPhase = AudioRecordPhaseEnd;
        _recordPhase = AudioRecordPhaseEnd;
        //: _atCache = [[DisplayInputAtCache alloc] init];
        _atCache = [[LabelSizeImage alloc] init];
        //: _inputConfig = config;
        _inputConfig = config;
        //: self.backgroundColor = [UIColor colorWithHexString:@"#fffDisplay"];
        self.backgroundColor = [UIColor cell:[[DespiteData sharedInstance] kTitleItemValue]];
        //: self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        //: self.layer.shadowOffset = CGSizeMake(0,-4);
        self.layer.shadowOffset = CGSizeMake(0,-4);
        //: self.layer.shadowOpacity = 1;
        self.layer.shadowOpacity = 1;
        //: self.layer.shadowRadius = 16;
        self.layer.shadowRadius = 16;
    }
    //: return self;
    return self;
}

//- (void)setRecording:(BOOL)recording
//{
//    if(recording)
//    {
//        self.audioRecordIndicator.center = self.superview.center;
//        [self.superview addSubview:self.audioRecordIndicator];
//        self.recordPhase = AudioRecordPhaseRecording;
//    }
//    else
//    {
//        [self.audioRecordIndicator removeFromSuperview];
//        self.recordPhase = AudioRecordPhaseEnd;
//    }
//    _recording = recording;
//}

//: #pragma mark - 外部接口
#pragma mark - 外部接口
//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder
- (void)setLocationApp:(NSString*)placeHolder
{
    //: [_toolBar setPlaceHolder:placeHolder];
    [_toolBar setSetAndThole:placeHolder];
}

//: - (void)didMoveToWindow
- (void)didMoveToWindow
{
    //: [self setup];
    [self searchedSetup];
}

//: - (void)didPressDelete:(id)sender
- (void)lifestyled:(id)sender
{
    //: self.toolBar.sendButton.hidden = YES;
    self.toolBar.sendButton.hidden = YES;
//    self.toolBar.emoticonBtn2.hidden = YES;
    //: [self.toolBar setPlaceHolder:[DisplayLanguageManager getTextWithKey:@"message_please_enter_content"]];
    [self.toolBar setSetAndThole:[MakeManager cell:[[DespiteData sharedInstance] kContent_hamBeginValue]]];
    //: [self doButtonDeleteText];
    [self psychologicalFeature];

}

//: - (void)didPressSend:(id)sender
- (void)recentInProvider:(id)sender
{

    //: if ([self.actionDelegate respondsToSelector:@selector(onSendText:atUsers:)] && [self.toolBar.contentText length] > 0 && [self isTextValid:self.toolBar.contentText]) {
    if ([self.actionDelegate respondsToSelector:@selector(start:comment_strong:)] && [self.toolBar.contentText length] > 0 && [self deviceValid:self.toolBar.contentText]) {
//        NSString *sendText = self.toolBar.contentText;
//        [self.actionDelegate onSendText:sendText atUsers:[self.atCache allAtUid:sendText]];
//        [self.atCache clean];
//        self.toolBar.contentText = @"";
//        [self.toolBar layoutIfNeeded];

        //: NSMutableAttributedString *attM = [[NSMutableAttributedString alloc] initWithAttributedString:self.toolBar.inputTextView.attributedText];
        NSMutableAttributedString *attM = [[NSMutableAttributedString alloc] initWithAttributedString:self.toolBar.inputTextView.attributedText];
        //: NSString *sendText = [[self transformEmojiImageToEmojiDes:attM].string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
        NSString *sendText = [[self child:attM].string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];

        //: if(self.replyedContent.replymessage){
        if(self.replyedContent.replymessage){
            //: [self.actionDelegate onSendText:sendText atUsers:[self.atCache allAtUid:sendText] replymessage:self.replyedContent.replymessage];
            [self.actionDelegate content:sendText can:[self.atCache impression:sendText] video:self.replyedContent.replymessage];
        //: }else{
        }else{
            //: [self.actionDelegate onSendText:sendText atUsers:[self.atCache allAtUid:sendText]];
            [self.actionDelegate start:sendText comment_strong:[self.atCache impression:sendText]];
        }
//        [self.actionDelegate onSendText:sendText atUsers:[self.atCache allAtUid:sendText]];

        //: [self.atCache clean];
        [self.atCache superviseClean];
        //: self.toolBar.contentText = @"";
        self.toolBar.contentText = @"";
//        self.toolBar.sendButton.hidden = YES;
//        self.toolBar.emoticonBtn2.hidden = YES;
        //: [self.toolBar setPlaceHolder:[DisplayLanguageManager getTextWithKey:@"message_please_enter_content"]];
        [self.toolBar setSetAndThole:[MakeManager cell:[[DespiteData sharedInstance] kContent_hamBeginValue]]];
        //: [self.toolBar layoutIfNeeded];
        [self.toolBar layoutIfNeeded];

//        [self endEditing:YES];

    //: }else{
    }else{
        //: [self refreshStatus:NIMInputStatusText];
        [self canStatus:NIMInputStatusText];
        //: [self sizeToFit];
        [self sizeToFit];

//        _moreContainer.albumPickerView.selectedAssets = nil;

            //: if ([self.actionDelegate respondsToSelector:@selector(onTapAlbunArray:)]) {
            if ([self.actionDelegate respondsToSelector:@selector(contenting:)]) {
                //: [self.actionDelegate onTapAlbunArray:self.selectedPhoto];
                [self.actionDelegate contenting:self.selectedPhoto];
            }
    }
}

//: - (void)addContacts:(NSArray *)selectedContacts prefix:(NSMutableString *)str
- (void)prefix:(NSArray *)selectedContacts frame:(NSMutableString *)str
{
    //: DisplayKitInfoFetchOption *option = [[DisplayKitInfoFetchOption alloc] init];
    CellClean *option = [[CellClean alloc] init];
    //: option.session = self.session;
    option.session = self.session;
    //: option.forbidaAlias = YES;
    option.forbidaAlias = YES;
    //: for (NSString *uid in selectedContacts) {
    for (NSString *uid in selectedContacts) {
        //: NSString *nick = [[MyUserKit sharedKit].provider infoByUser:uid option:option].showName;
        NSString *nick = [[Mortification text].provider tingVoice:uid keepingOption:option].showName;
        //: [str appendString:nick];
        [str appendString:nick];
        //: [str appendString:@"\u2004"];
        [str appendString:@"\u2004"];
        //: if (![selectedContacts.lastObject isEqualToString:uid]) {
        if (![selectedContacts.lastObject isEqualToString:uid]) {
            //: [str appendString:@"@"];
            [str appendString:@"@"];
        }
        //: NIMInputAtItem *item = [[NIMInputAtItem alloc] init];
        FlipRed *item = [[FlipRed alloc] init];
        //: item.uid = uid;
        item.uid = uid;
        //: item.name = nick;
        item.name = nick;
        //: [self.atCache addAtItem:item];
        [self.atCache quick:item];
    }
    //: [self.toolBar insertText:str];
    [self.toolBar distanceLanguage:str];
}

//: - (NIMInputAtItem *)delRangeForAt
- (FlipRed *)parent
{
    //: NSString *text = self.toolBar.contentText;
    NSString *text = self.toolBar.contentText;
    //: NSRange range = [self rangeForPrefix:@"@" suffix:@"\u2004"];
    NSRange range = [self content:@"@" complete:@"\u2004"];
    //: NSRange selectedRange = [self.toolBar selectedRange];
    NSRange selectedRange = [self.toolBar mediaUp];
    //: NIMInputAtItem *item = nil;
    FlipRed *item = nil;
    //: if (range.length > 1)
    if (range.length > 1)
    {
        //: NSString *name = [text substringWithRange:range];
        NSString *name = [text substringWithRange:range];
        //: NSString *set = [@"@" stringByAppendingString:@"\u2004"];
        NSString *set = [@"@" stringByAppendingString:@"\u2004"];
        //: name = [name stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:set]];
        name = [name stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:set]];
        //: item = [self.atCache item:name];
        item = [self.atCache anyPoint:name];
        //: range = item? range : NSMakeRange(selectedRange.location - 1, 1);
        range = item? range : NSMakeRange(selectedRange.location - 1, 1);
    }
    //: item.range = range;
    item.range = range;
    //: return item;
    return item;
}


//: - (void)onTouchVoiceBtn:(id)sender {
- (void)arguments:(id)sender {

    //: if ([self.actionDelegate respondsToSelector:@selector(onTapAudioBtn:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(verticals:)]) {
        //: [self.actionDelegate onTapAudioBtn:sender];
        [self.actionDelegate verticals:sender];
    }
}
//: #pragma mark - DisplayReplyContentViewDelegate
#pragma mark - RepayShouldComment

//: - (void)onClearReplyContent:(id)sender
- (void)vanguards:(id)sender
{
    //: [self setNeedsLayout];
    [self setNeedsLayout];
    //: self.toolBar.inputTextView.text = nil;
    self.toolBar.inputTextView.text = nil;
    //: self.toolBar.inputTextView.attributedText = nil;
    self.toolBar.inputTextView.attributedText = nil;

    //: NSString *placeholder = [MyUserKit sharedKit].config.placeholder;
    NSString *placeholder = [Mortification text].config.placeholder;
    //: [_toolBar setPlaceHolder:placeholder];
    [_toolBar setSetAndThole:placeholder];

    //: if ([self.actionDelegate respondsToSelector:@selector(didReplyCancelled)])
    if ([self.actionDelegate respondsToSelector:@selector(menuMessage)])
    {
        //: [self.actionDelegate didReplyCancelled];
        [self.actionDelegate menuMessage];
    }
}

//: - (void)toolBarDidChangeHeight:(CGFloat)height
- (void)tabled:(CGFloat)height
{
    //: [self sizeToFit];
    [self sizeToFit];
}

//: - (void)setMoreContainer:(UIView *)moreContainer
- (void)setMoreContainer:(UIView *)moreContainer
{
//    _moreContainer = moreContainer;
    //: [self sizeToFit];
    [self sizeToFit];
}
//: - (IBAction)onTouchRecordBtnUpInside:(id)sender {
- (IBAction)withs:(id)sender {
    // finish Recording
    //: self.recordPhase = AudioRecordPhaseEnd;
    self.recordPhase = AudioRecordPhaseEnd;
}
//: #pragma mark - DisplayInputToolBarDelegate
#pragma mark - TeamSize

//: - (BOOL)textViewShouldBeginEditing
- (BOOL)powerVoice
{
    //: [self refreshStatus:NIMInputStatusText];
    [self canStatus:NIMInputStatusText];
    //: return YES;
    return YES;
}

//: - (BOOL)onTextDelete
- (BOOL)image
{
    //: NSRange range = [self delRangeForEmoticon];
    NSRange range = [self remote];
    //: if (range.length == 1)
    if (range.length == 1)
    {
        //删的不是表情，可能是@
        //: NIMInputAtItem *item = [self delRangeForAt];
        FlipRed *item = [self parent];
        //: if (item) {
        if (item) {
            //: range = item.range;
            range = item.range;
        }
    }
    //: if (range.length == 1) {
    if (range.length == 1) {
        //自动删除
        //: return YES;
        return YES;
    }
    //: [self.toolBar deleteText:range];
    [self.toolBar sendText:range];
    //: return NO;
    return NO;
}
//: - (void)updateAudioRecordTime:(NSTimeInterval)time {
- (void)voice:(NSTimeInterval)time {

}


//: - (void)onTouchSendBtn:(id)sender{
- (void)viewTable:(id)sender{
    //: [self didPressSend:nil];
    [self recentInProvider:nil];
}

//: - (void)setInputTextPlaceHolder:(NSString*)placeHolder color:(UIColor *)placeholderColor
- (void)soap:(NSString*)placeHolder titleDisableBefore:(UIColor *)placeholderColor
{
    //: [_toolBar setPlaceHolder:placeHolder color:placeholderColor];
    [_toolBar shootCell:placeHolder color:placeholderColor];
}

//: - (IBAction)onTouchRecordBtnDragOutside:(id)sender {
- (IBAction)immobilized:(id)sender {
    // "松开手指，取消发送"
    //: self.recordPhase = AudioRecordPhaseCancelling;
    self.recordPhase = AudioRecordPhaseCancelling;
}

/// 把富文本里的表情图片转换成文字 '[哈哈]'
/// @param attrM 富文本
//: - (NSMutableAttributedString *)transformEmojiImageToEmojiDes:(NSMutableAttributedString *)attrM {
- (NSMutableAttributedString *)child:(NSMutableAttributedString *)attrM {
    //: [attrM enumerateAttribute:YYTextHighlightAttributeName inRange:NSMakeRange(0, attrM.length) options:NSAttributedStringEnumerationReverse usingBlock:^(id _Nullable value, NSRange range, BOOL * _Nonnull stop) {
    [attrM enumerateAttribute:YYTextHighlightAttributeName inRange:NSMakeRange(0, attrM.length) options:NSAttributedStringEnumerationReverse usingBlock:^(id _Nullable value, NSRange range, BOOL * _Nonnull stop) {
        //: if (value && [value isKindOfClass:[DisplayTextHighlight class]]) {
        if (value && [value isKindOfClass:[SpectralColorTitleHighlight class]]) {
            //: DisplayTextHighlight *textHighlight = value;
            SpectralColorTitleHighlight *textHighlight = value;
            //: if (textHighlight.type == DisplayTextHighlightTypeEmoji) {
            if (textHighlight.type == DisplayTextHighlightTypeEmoji) {
                //: [attrM replaceCharactersInRange:range withString:textHighlight.text];
                [attrM replaceCharactersInRange:range withString:textHighlight.text];
            }
        }
    //: }];
    }];
    //: return attrM;
    return attrM;
}

//: - (void)checkEmoticonContainer
- (void)windowBox
{
    //: if (!_emoticonContainer) {
    if (!_emoticonContainer) {
        //: DisplayInputEmoticonContainerView *emoticonContainer = [[DisplayInputEmoticonContainerView alloc] initWithFrame:CGRectZero];
        MakeNameView *emoticonContainer = [[MakeNameView alloc] initWithFrame:CGRectZero];

        //: emoticonContainer.device_size = [emoticonContainer sizeThatFits:CGSizeMake(self.device_width, 1.7976931348623157e+308)];
        emoticonContainer.device_size = [emoticonContainer sizeThatFits:CGSizeMake(self.device_width, 1.7976931348623157e+308)];
        //: emoticonContainer.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        emoticonContainer.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: emoticonContainer.delegate = self;
        emoticonContainer.delegate = self;
        //: emoticonContainer.hidden = YES;
        emoticonContainer.hidden = YES;
        //: emoticonContainer.config = _inputConfig;
        emoticonContainer.config = _inputConfig;

        //: _emoticonContainer = emoticonContainer;
        _emoticonContainer = emoticonContainer;
    }

    //可能是外部主动设置进来的，统一放在这里添加 subview
    //: if (!_emoticonContainer.superview)
    if (!_emoticonContainer.superview)
    {
        //: [self addSubview:_emoticonContainer];
        [self addSubview:_emoticonContainer];
    }
}


//: - (IBAction)onTouchRecordBtnDragInside:(id)sender {
- (IBAction)alongForInside:(id)sender {
    // "手指上滑，取消发送"
    //: self.recordPhase = AudioRecordPhaseRecording;
    self.recordPhase = AudioRecordPhaseRecording;
}

//: - (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //: [self endEditing:YES];
    [self endEditing:YES];
}

//: - (void)PickerDidSelectAssets:(NSArray<PHAsset *> *)assets
- (void)users:(NSArray<PHAsset *> *)assets
{
    //: self.selectedPhoto = assets;
    self.selectedPhoto = assets;
    //: if (self.selectedPhoto.count > 0) {
    if (self.selectedPhoto.count > 0) {
        //: self.toolBar.sendButton.hidden = NO;
        self.toolBar.sendButton.hidden = NO;
//        self.toolBar.emoticonBtn.hidden = YES;
        //: self.toolBar.albunBtn.hidden = YES;
        self.toolBar.albunBtn.hidden = YES;
    //: }else{
    }else{
        //: self.toolBar.sendButton.hidden = YES;
        self.toolBar.sendButton.hidden = YES;
//        self.toolBar.emoticonBtn.hidden = NO;
        //: self.toolBar.albunBtn.hidden = NO;
        self.toolBar.albunBtn.hidden = NO;
    }
}

/**
 *  请求相册
 */
//: - (void)requestAuthorizationForPhotoLibrary
- (void)managerMember
{
    //: if (self.toolBar.showsKeyboard)
    if (self.toolBar.showsKeyboard)
    {
        //: self.toolBar.showsKeyboard = NO;
        self.toolBar.showsKeyboard = NO;
    }

    @
     //: autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
     autoreleasepool{} __weak __typeof__(self) __weak_self__ = self;
                  ;
    //: PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
    //: if (PHAuthorizationStatusNotDetermined == authStatus) {
    if (PHAuthorizationStatusNotDetermined == authStatus) {
        //: [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            //: if (PHAuthorizationStatusAuthorized == status) {
            if (PHAuthorizationStatusAuthorized == status) {
                @
                 //: try{} @finally{} __typeof__(self) self = __weak_self__;
                 try{} @finally{} __typeof__(self) self = __weak_self__;
                                ;
                //: dispatch_async(dispatch_get_main_queue(), ^{
                dispatch_async(dispatch_get_main_queue(), ^{
                    //: [self onTouchCameraBtn];
                    [self data];
                //: });
                });
            }
        //: }];
        }];
        //: return;
        return;
    //: } else if (PHAuthorizationStatusAuthorized == authStatus){
    } else if (PHAuthorizationStatusAuthorized == authStatus){
        //: [self onTouchCameraBtn];
        [self data];
    //: }else{
    }else{
        //: UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[DisplayLanguageManager getTextWithKey:@"warm_prompt"] message:[DisplayLanguageManager getTextWithKey:@"setting_privacy"] preferredStyle:UIAlertControllerStyleAlert];
        UIAlertController *alertControl = [UIAlertController alertControllerWithTitle:[MakeManager cell:[[DespiteData sharedInstance] kContent_keyData]] message:[MakeManager cell:[[DespiteData sharedInstance] kTitle_colaWithString]] preferredStyle:UIAlertControllerStyleAlert];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[DisplayLanguageManager getTextWithKey:@"contact_tag_fragment_cancel"] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[MakeManager cell:[[DespiteData sharedInstance] kContentDoingString]] style:UIAlertActionStyleCancel handler:^(UIAlertAction * _Nonnull action) {
        //: }])];
        }])];
        //: [alertControl addAction:([UIAlertAction actionWithTitle:[DisplayLanguageManager getTextWithKey:@"tag_activity_set"] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alertControl addAction:([UIAlertAction actionWithTitle:[MakeManager cell:[[DespiteData sharedInstance] kText_tonightName]] style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
            //: NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            NSURL *url = [[NSURL alloc] initWithString:UIApplicationOpenSettingsURLString];
            //: if( [[UIApplication sharedApplication] canOpenURL:url]) {
            if( [[UIApplication sharedApplication] canOpenURL:url]) {
                //: [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
                [[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
            }
        //: }])];
        }])];
//        [self presentViewController:alertControl animated:YES completion:nil];
        //: UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
        UIViewController *rootViewController = [UIApplication sharedApplication].keyWindow.rootViewController;
        //: UIViewController *topViewController = rootViewController;
        UIViewController *topViewController = rootViewController;
           //: while (topViewController.presentedViewController) {
           while (topViewController.presentedViewController) {
               //: topViewController = topViewController.presentedViewController;
               topViewController = topViewController.presentedViewController;
           }
           //: [topViewController presentViewController:alertControl animated:YES completion:nil];
           [topViewController presentViewController:alertControl animated:YES completion:nil];
    }
}


//: - (void)checkMoreContainer
- (void)purse
{
    //: if (!_moreContainer) {
    if (!_moreContainer) {
        //: _moreContainer = [[DisplayInputMoreContainerView alloc] initWithFrame:CGRectZero];
        _moreContainer = [[MaxAtView alloc] initWithFrame:CGRectZero];
        //: _moreContainer.device_size = [_moreContainer sizeThatFits:CGSizeMake(self.device_width, 1.7976931348623157e+308)];
        _moreContainer.device_size = [_moreContainer sizeThatFits:CGSizeMake(self.device_width, 1.7976931348623157e+308)];
        //: _moreContainer.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        _moreContainer.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: _moreContainer.hidden = YES;
        _moreContainer.hidden = YES;
        //: _moreContainer.config = _inputConfig;
        _moreContainer.config = _inputConfig;
        //: _moreContainer.actionDelegate = self.actionDelegate;
        _moreContainer.actionDelegate = self.actionDelegate;
        //: _moreContainer.delegate = self;
        _moreContainer.delegate = self;
//        _moreContainer = moreContainer;
    }

    //可能是外部主动设置进来的，统一放在这里添加 subview
    //: if (!_moreContainer.superview)
    if (!_moreContainer.superview)
    {
        //: [self addSubview:_moreContainer];
        [self addSubview:_moreContainer];
    }
}


//: - (BOOL)doButtonDeleteText
- (BOOL)psychologicalFeature
{
    //: NSRange range = [self delRangeForLastComponent];
    NSRange range = [self flipComponent];
    //: if (range.length == 1)
    if (range.length == 1)
    {
        //删的不是表情，可能是@
        //: NIMInputAtItem *item = [self delRangeForAt];
        FlipRed *item = [self parent];
        //: if (item) {
        if (item) {
            //: range = item.range;
            range = item.range;
        }
    }

    //: [self.toolBar deleteText:range];
    [self.toolBar sendText:range];
    //: return NO;
    return NO;
}

//: - (void)onTouchEmoticonBtn:(id)sender
- (void)rowBubble:(id)sender
{
    //: if (self.status != NIMInputStatusEmoticon) {
    if (self.status != NIMInputStatusEmoticon) {
        //: if ([self.actionDelegate respondsToSelector:@selector(onTapEmoticonBtn:)]) {
        if ([self.actionDelegate respondsToSelector:@selector(arrowShow:)]) {
            //: [self.actionDelegate onTapEmoticonBtn:sender];
            [self.actionDelegate arrowShow:sender];
        }
        //: [self checkEmoticonContainer];
        [self windowBox];
        //: [self bringSubviewToFront:self.emoticonContainer];
        [self bringSubviewToFront:self.emoticonContainer];
        //: [self.emoticonContainer setHidden:NO];
        [self.emoticonContainer setHidden:NO];
        //: [self.moreContainer setHidden:YES];
        [self.moreContainer setHidden:YES];
        //: [self refreshStatus:NIMInputStatusEmoticon];
        [self canStatus:NIMInputStatusEmoticon];
        //: [self sizeToFit];
        [self sizeToFit];

        //: if (self.toolBar.showsKeyboard)
        if (self.toolBar.showsKeyboard)
        {
            //: self.toolBar.showsKeyboard = NO;
            self.toolBar.showsKeyboard = NO;
        }

    }
    //: else
    else
    {
        //: [self refreshStatus:NIMInputStatusText];
        [self canStatus:NIMInputStatusText];
        //: self.toolBar.showsKeyboard = YES;
        self.toolBar.showsKeyboard = YES;
    }
}

//: - (void)checkPhotoContainer
- (void)state
{

}

//: - (void)layoutSubviews
- (void)layoutSubviews
{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //这里不做.语法 get 操作，会提前初始化组件导致卡顿
    //: if (!_replyedContent.hidden)
    if (!_replyedContent.hidden)
    {
        //: self.toolBar.device_top = _replyedContent.device_bottom;
        self.toolBar.device_top = _replyedContent.device_bottom;
    }
    //: else
    else
    {
        //: self.toolBar.device_top = 0.f;
        self.toolBar.device_top = 0.f;
    }

    //: if (self.status == NIMInputStatusMore) {
    if (self.status == NIMInputStatusMore) {
        //: _moreContainer.device_top = 0.f;
        _moreContainer.device_top = 0.f;
        //: self.toolBar.device_top = self.moreContainer.device_bottom;
        self.toolBar.device_top = self.moreContainer.device_bottom;
        //: _emoticonContainer.device_top = self.toolBar.device_bottom;
        _emoticonContainer.device_top = self.toolBar.device_bottom;
    //: }else{
    }else{
        //: _moreContainer.device_top = self.toolBar.device_bottom;
        _moreContainer.device_top = self.toolBar.device_bottom;
        //: _emoticonContainer.device_top = self.toolBar.device_bottom;
        _emoticonContainer.device_top = self.toolBar.device_bottom;
    }
//    _moreContainer.device_top     = self.toolBar.device_bottom;
//    _emoticonContainer.device_top = self.toolBar.device_bottom;
}

//: - (void)setStatus:(NIMInputStatus)status
- (void)setStatus:(NIMInputStatus)status
{
    //: if (_status != status)
    if (_status != status)
    {
        //: _status = status;
        _status = status;
        //: switch (_status) {
        switch (_status) {
            //: case NIMInputStatusEmoticon:
            case NIMInputStatusEmoticon:
                //: [self checkEmoticonContainer];
                [self windowBox];
                //: break;
                break;
            //: case NIMInputStatusMore:
            case NIMInputStatusMore:
                //: [self checkMoreContainer];
                [self purse];
            //: default:
            default:
                //: break;
                break;
        }
    }
}

//: - (void)setInputActionDelegate:(id<NIMInputActionDelegate>)actionDelegate
- (void)setValue:(id<PullDelegate>)actionDelegate
{
    //: _actionDelegate = actionDelegate;
    _actionDelegate = actionDelegate;
}

//: - (NSRange)delRangeForEmoticon
- (NSRange)remote
{
    //: NSString *text = self.toolBar.contentText;
    NSString *text = self.toolBar.contentText;
    //: NSRange selectedRange = [self.toolBar selectedRange];
    NSRange selectedRange = [self.toolBar mediaUp];
    //: BOOL isEmoji = NO;
    BOOL isEmoji = NO;
    //: if (selectedRange.location >= 2) {
    if (selectedRange.location >= 2) {
        //: NSString *subStr = [text substringWithRange:NSMakeRange(selectedRange.location - 2, 2)];
        NSString *subStr = [text substringWithRange:NSMakeRange(selectedRange.location - 2, 2)];
        //: isEmoji = [subStr nim_containsEmoji];
        isEmoji = [subStr manager];
    }

    //: NSRange range = NSMakeRange(selectedRange.location - 1, 1);
    NSRange range = NSMakeRange(selectedRange.location - 1, 1);
    //: if (isEmoji) {
    if (isEmoji) {
        //: range = NSMakeRange(selectedRange.location-2, 2);
        range = NSMakeRange(selectedRange.location-2, 2);
    //: } else {
    } else {
        //: NSRange subRange = [self rangeForPrefix:@"[" suffix:@"]"];
        NSRange subRange = [self content:@"[" complete:@"]"];
        //: if (subRange.length > 1)
        if (subRange.length > 1)
        {
            //: NSString *name = [text substringWithRange:subRange];
            NSString *name = [text substringWithRange:subRange];
            //: NIMInputEmoticon *icon = [[DisplayInputEmoticonManager sharedManager] emoticonByTag:name];
            BubbleNameReload *icon = [[IndexManager item] disable:name];
            //: range = icon? subRange : NSMakeRange(selectedRange.location - 1, 1);
            range = icon? subRange : NSMakeRange(selectedRange.location - 1, 1);
        }
    }

    //: return range;
    return range;
}

//: #pragma mark - InputEmoticonProtocol
#pragma mark - InputEmoticonProtocol
//: - (void)selectedEmoticon:(NSString*)emoticonID catalog:(NSString*)emotCatalogID description:(NSString *)description{
- (void)pressDescription:(NSString*)emoticonID writtenMatter:(NSString*)emotCatalogID cellOn:(NSString *)description{
    //: if (!emotCatalogID) { 
    if (!emotCatalogID) { //删除键
        //: [self doButtonDeleteText];
        [self psychologicalFeature];
    //: }else{
    }else{
        //: if ([emotCatalogID isEqualToString:@"default"]) {
        if ([emotCatalogID isEqualToString:[[DespiteData sharedInstance] kContent_defineItemString]]) {
            //: [self.toolBar insertAttributedText:description withEmoji:YES];
            [self.toolBar content:description replyEmoji:YES];
        //: }else{
        }else{
            //发送贴图消息
            //: if ([self.actionDelegate respondsToSelector:@selector(onSelectChartlet:catalog:)]) {
            if ([self.actionDelegate respondsToSelector:@selector(successTing:dedication:)]) {
                //: [self.actionDelegate onSelectChartlet:emoticonID catalog:emotCatalogID];
                [self.actionDelegate successTing:emoticonID dedication:emotCatalogID];
            }
        }
    }
}

//: - (void)onTouchCameraBtn {
- (void)data {

    //: if ([self.actionDelegate respondsToSelector:@selector(onTapCameraBtn:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(valueDisable:)]) {
        //: [self.actionDelegate onTapCameraBtn:nil];
        [self.actionDelegate valueDisable:nil];
    }

}

//: - (BOOL)endEditing:(BOOL)force
- (BOOL)endEditing:(BOOL)force
{
    //: BOOL endEditing = [super endEditing:force];
    BOOL endEditing = [super endEditing:force];
    //: if (!self.toolBar.showsKeyboard) {
    if (!self.toolBar.showsKeyboard) {
        //: UIViewAnimationCurve curve = UIViewAnimationCurveEaseInOut;
        UIViewAnimationCurve curve = UIViewAnimationCurveEaseInOut;

        //: __weak typeof(self) weakSelf = self;
        __weak typeof(self) weakSelf = self;
        //: void(^animations)(void) = ^{
        void(^animations)(void) = ^{
            //: [weakSelf refreshStatus:NIMInputStatusText];
            [weakSelf canStatus:NIMInputStatusText];
            //: [weakSelf sizeToFit];
            [weakSelf sizeToFit];
            //: if (weakSelf.inputDelegate && [weakSelf.inputDelegate respondsToSelector:@selector(didChangeInputHeight:)]) {
            if (weakSelf.inputDelegate && [weakSelf.inputDelegate respondsToSelector:@selector(shoulded:)]) {
                //: [weakSelf.inputDelegate didChangeInputHeight:weakSelf.device_height];
                [weakSelf.inputDelegate shoulded:weakSelf.device_height];
            }
        //: };
        };
        //: NSTimeInterval duration = 0.25;
        NSTimeInterval duration = 0.25;
        //: [UIView animateWithDuration:duration delay:0.0f options:(curve << 16 | UIViewAnimationOptionBeginFromCurrentState) animations:animations completion:nil];
        [UIView animateWithDuration:duration delay:0.0f options:(curve << 16 | UIViewAnimationOptionBeginFromCurrentState) animations:animations completion:nil];
    }
    //: return endEditing;
    return endEditing;
}



//: - (void)selectedGifEmoticon:(NSString*)gif
- (void)from:(NSString*)gif
{
    //: [self.toolBar setPlaceHolder:[DisplayLanguageManager getTextWithKey:@"message_please_enter_content"]];
    [self.toolBar setSetAndThole:[MakeManager cell:[[DespiteData sharedInstance] kContent_hamBeginValue]]];
    //发送贴图消息
    //: if ([self.actionDelegate respondsToSelector:@selector(onSelectChartlet:catalog:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(successTing:dedication:)]) {
        //: [self.actionDelegate onSelectChartlet:gif catalog:gif];
        [self.actionDelegate successTing:gif dedication:gif];
    }


}

//: - (void)updateVoicePower:(float)power {
- (void)power:(float)power {

}


//: - (BOOL)shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
- (BOOL)sub:(NSRange)range can:(NSString *)text
{
    //: if ([text isEqualToString:@"\n"])
    if ([text isEqualToString:@"\n"])
    {
        //: [self didPressSend:nil];
        [self recentInProvider:nil];
        //: return NO;
        return NO;
    }
    //: if ([text isEqualToString:@""] && range.length == 1 )
    if ([text isEqualToString:@""] && range.length == 1 )
    {
        //非选择删除
        //: return [self onTextDelete];
        return [self image];
    }
    //: if ([self shouldCheckAt])
    if ([self pastAt])
    {
        // @ 功能
        //: [self checkAt:text];
        [self need:text];
    }
    //: NSString *str = [self.toolBar.contentText stringByAppendingString:text];
    NSString *str = [self.toolBar.contentText stringByAppendingString:text];
    //: if (str.length > self.maxTextLength)
    if (str.length > self.maxTextLength)
    {
        //: return NO;
        return NO;
    }
    //: return YES;
    return YES;
}

//: - (void)addAtItems:(NSArray *)selectedContacts
- (void)showItems:(NSArray *)selectedContacts
{
    //: NSMutableString *str = [[NSMutableString alloc] initWithString:@"@"];
    NSMutableString *str = [[NSMutableString alloc] initWithString:@"@"];
    //: [self addContacts:selectedContacts prefix:str];
    [self prefix:selectedContacts frame:str];
}


//: - (IBAction)onTouchRecordBtnDown:(id)sender {
- (IBAction)globaling:(id)sender {
    //: self.recordPhase = AudioRecordPhaseStart;
    self.recordPhase = AudioRecordPhaseStart;
}


//: - (NSRange)delRangeForLastComponent
- (NSRange)flipComponent
{
    //: NSString *text = self.toolBar.contentText;
    NSString *text = self.toolBar.contentText;
    //: NSRange selectedRange = [self.toolBar selectedRange];
    NSRange selectedRange = [self.toolBar mediaUp];
    //: if (selectedRange.location == 0)
    if (selectedRange.location == 0)
    {
        //: return NSMakeRange(0, 0) ;
        return NSMakeRange(0, 0) ;
    }

    //: NSRange range;
    NSRange range;
    //: NSRange subRange = [self rangeForPrefix:@"[" suffix:@"]"];
    NSRange subRange = [self content:@"[" complete:@"]"];

    //: if (text.length > 0 &&
    if (text.length > 0 &&
        //: [[text substringFromIndex:text.length - 1] isEqualToString:@"]"] &&
        [[text substringFromIndex:text.length - 1] isEqualToString:@"]"] &&
        //: subRange.length > 1)
        subRange.length > 1)
    {
        //: NSString *name = [text substringWithRange:subRange];
        NSString *name = [text substringWithRange:subRange];
        //: NIMInputEmoticon *icon = [[DisplayInputEmoticonManager sharedManager] emoticonByTag:name];
        BubbleNameReload *icon = [[IndexManager item] disable:name];
        //: range = icon? subRange : NSMakeRange(selectedRange.location - 1, 1);
        range = icon? subRange : NSMakeRange(selectedRange.location - 1, 1);
    }
    //: else
    else
    {
        //: range = [text nim_rangeOfLastUnicode];
        range = [text atItem];
    }

    //: return range;
    return range;
}

//: - (void)setEmoticonContainer:(UIView *)emoticonContainer
- (void)setEmoticonContainer:(UIView *)emoticonContainer
{
    //: _emoticonContainer = emoticonContainer;
    _emoticonContainer = emoticonContainer;
    //: [self sizeToFit];
    [self sizeToFit];
}

//: @end
@end
