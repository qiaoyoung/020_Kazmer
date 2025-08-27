
#import <Foundation/Foundation.h>

NSString *StringFromUrnData(Byte *data);


//: emoji_del_pressed
Byte main_flowStr[] = {21, 17, 6, 89, 54, 102, 100, 101, 115, 115, 101, 114, 112, 95, 108, 101, 100, 95, 105, 106, 111, 109, 101, 134};

//: gif
Byte main_titleKey[] = {76, 3, 7, 28, 46, 179, 115, 102, 105, 103, 13};

//: default
Byte user_upName[] = {96, 7, 7, 86, 176, 200, 3, 116, 108, 117, 97, 102, 101, 100, 36};

//: emoji_del_normal
Byte k_expressionStr[] = {16, 16, 6, 188, 213, 228, 108, 97, 109, 114, 111, 110, 95, 108, 101, 100, 95, 105, 106, 111, 109, 101, 239};

//: #F6F7FA
Byte main_capitalMessage[] = {79, 7, 12, 210, 25, 36, 163, 92, 145, 221, 44, 137, 65, 70, 55, 70, 54, 70, 35, 213};

// __DEBUG__
// __CLOSE_PRINT__
//
//  SpecsView.m
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchInputEmoticonContainerView.h"
#import "SpecsView.h"
//: #import "WatchPageView.h"
#import "EndUserView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "WatchInputEmoticonButton.h"
#import "OldButton.h"
//: #import "WatchInputEmoticonManager.h"
#import "TitleToManager.h"
//: #import "WatchInputEmoticonTabView.h"
#import "SleepingTabletControl.h"
//:  
 
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "WatchMessageMaker.h"
#import "ImpendentMaker.h"

//: NSInteger NIMCustomPageControlHeight = 36;
NSInteger show_outputSessionMsg = 36;
//: NSInteger NIMCustomPageViewHeight = 159;
NSInteger k_quickMessage = 159;

//: @interface WatchInputEmoticonContainerView()<NIMEmoticonButtonTouchDelegate,NIMInputEmoticonTabDelegate>
@interface SpecsView()<OnDelegate,BackgroundButtonDelegate>

//: @property (nonatomic,strong) NSMutableArray *pageData;
@property (nonatomic,strong) NSMutableArray *pageData;

//: @property (nonatomic,strong) WatchInputEmoticonButton* deleteIcon;
@property (nonatomic,strong) OldButton* deleteIcon;

//: @end
@end


//: @implementation WatchInputEmoticonContainerView
@implementation SpecsView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: if (self = [super initWithFrame:frame]) {
    if (self = [super initWithFrame:frame]) {
        //: [self loadConfig];
        [self user];
    }
    //: return self;
    return self;
}

//: - (void)loadConfig{
- (void)user{
//    self.backgroundColor = [UIColor clearColor];
    //: self.backgroundColor = [UIColor colorWithHexString:@"#F6F7FA"];
    self.backgroundColor = [UIColor min:StringFromUrnData(main_capitalMessage)];
}

//: - (void)setConfig:(id<WatchSessionConfig>)config{
- (void)setConfig:(id<MessagePinImage>)config{
    //: _config = config;
    _config = config;
    //: [self loadUIComponents];
    [self title];
    //: [self reloadData];
    [self from];
}

//: - (CGSize)sizeThatFits:(CGSize)size
- (CGSize)sizeThatFits:(CGSize)size
{
    //: return CGSizeMake(size.width, 216.f);
    return CGSizeMake(size.width, 216.f);
}




//: - (void)loadUIComponents
- (void)title
{
//    _emoticonPageView                  = [[EndUserView alloc] initWithFrame:self.bounds];
//    _emoticonPageView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
//    _emoticonPageView.nim_height       = NIMCustomPageViewHeight;
//    _emoticonPageView.backgroundColor  = [UIColor clearColor];
//    _emoticonPageView.dataSource       = self;
//    _emoticonPageView.pageViewDelegate = self;
//    [self addSubview:_emoticonPageView];
//
//    _emotPageController = [[UIPageControl alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, NIMCustomPageControlHeight)];
//    _emotPageController.autoresizingMask = UIViewAutoresizingFlexibleWidth;
//    _emotPageController.pageIndicatorTintColor = [UIColor lightGrayColor];
//    _emotPageController.currentPageIndicatorTintColor = [UIColor grayColor];
//    [self addSubview:_emotPageController];
//    [_emotPageController setUserInteractionEnabled:NO];

    //: [self addSubview:self.scrollView];
    [self addSubview:self.scrollView];
    //: self.scrollView.frame = CGRectMake(0, 0, self.nim_width, self.nim_height);
    self.scrollView.frame = CGRectMake(0, 0, self.nim_width, self.nim_height);
    //: CGFloat heght = (self.currentCatalogData.emoticons.count/self.currentCatalogData.layout.columes +1)*46.0 +NIMCustomPageControlHeight;
    CGFloat heght = (self.currentCatalogData.emoticons.count/self.currentCatalogData.layout.columes +1)*46.0 +show_outputSessionMsg;
    //: [self.scrollView setContentSize:CGSizeMake(self.nim_width, heght )];
    [self.scrollView setContentSize:CGSizeMake(self.nim_width, heght )];
//
//    _deleteIcon = [[OldButton alloc] init];
//    _deleteIcon.delegate = self;
//    _deleteIcon.userInteractionEnabled = YES;
//    _deleteIcon.exclusiveTouch = YES;
//    _deleteIcon.contentMode = UIViewContentModeCenter;
////    UIImage *imageNormal  = [UIImage nim_emoticonInKit:@"emoji_del_normal"];
////    UIImage *imagePressed = [UIImage nim_emoticonInKit:@"emoji_del_pressed"];
////
//    UIImage *imageNormal  = [UIImage imageNamed:@"icon_chat_reset"];
//    UIImage *imagePressed  = [UIImage imageNamed:@"icon_chat_reset"];
//
//    [_deleteIcon setImage:imageNormal forState:UIControlStateNormal];
//    [_deleteIcon setImage:imagePressed forState:UIControlStateHighlighted];
//    [_deleteIcon addTarget:_deleteIcon action:@selector(onIconSelected:) forControlEvents:UIControlEventTouchUpInside];
//
//
//    CGRect deleteIconRect = CGRectMake(self.nim_width-NEEKIT_DeleteIconWidth, self.nim_height-NEEKIT_DeleteIconHeight, NEEKIT_DeleteIconWidth, NEEKIT_DeleteIconHeight);
//
//    [_deleteIcon setFrame:deleteIconRect];
//    [self addSubview:_deleteIcon];
}

//: - (void)setFrame:(CGRect)frame{
- (void)setFrame:(CGRect)frame{
    //: CGFloat originalWidth = self.frame.size.width;
    CGFloat originalWidth = self.frame.size.width;
    //: [super setFrame:frame];
    [super setFrame:frame];
    //: if (originalWidth != frame.size.width) {
    if (originalWidth != frame.size.width) {
        //: [self reloadData];
        [self from];
    }
}

//: - (void)reloadData{
- (void)from{
    //: NSArray *data = [self loadCatalogAndChartlet];
    NSArray *data = [self media];
    //: self.totalCatalogData = data;
    self.totalCatalogData = data;
    //: self.currentCatalogData = data.firstObject;
    self.currentCatalogData = data.firstObject;

    //: [self layoutEmoticonPageView];
    [self threadView];
}

//: - (NSArray *)loadCatalogAndChartlet
- (NSArray *)media
{
    //: NIMInputEmoticonCatalog *defaultCatalog = [self loadDefaultCatalog];
    BottomCatalog *defaultCatalog = [self line];
//    NSArray *charlets = [self loadChartlet];
//    NSArray *catalogs = defaultCatalog? [@[defaultCatalog] arrayByAddingObjectsFromArray:charlets] : charlets;
        //: NIMInputEmoticonCatalog *gifCatalog = [self loadGifCatalog];
        BottomCatalog *gifCatalog = [self packSharedProspectus];
    //: NSArray *catalogs = [@[defaultCatalog] arrayByAddingObject:gifCatalog];
    NSArray *catalogs = [@[defaultCatalog] arrayByAddingObject:gifCatalog];
    //: return catalogs;
    return catalogs;
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: self.emotPageController.nim_top = self.emoticonPageView.nim_bottom - 10;
    self.emotPageController.nim_top = self.emoticonPageView.nim_bottom - 10;
    //: self.tabView.nim_bottom = self.nim_height;
    self.tabView.nim_bottom = self.nim_height;
    //: [self bringSubviewToFront:self.tabView];
    [self bringSubviewToFront:self.tabView];
}

//: - (void)layoutEmoticonPageView
- (void)threadView
{
    //: [self.scrollView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];
    [self.scrollView.subviews makeObjectsPerformSelector:@selector(removeFromSuperview)];

    //: if(self.currentCatalogData.emoticons.count>0){
    if(self.currentCatalogData.emoticons.count>0){

        //: NSInteger iconHeight = self.currentCatalogData.layout.imageHeight;
        NSInteger iconHeight = self.currentCatalogData.layout.imageHeight;
        //: NSInteger iconWidth = self.currentCatalogData.layout.imageWidth;
        NSInteger iconWidth = self.currentCatalogData.layout.imageWidth;
        //: CGFloat startX = (self.currentCatalogData.layout.cellWidth - iconWidth) / 2 + 15;
        CGFloat startX = (self.currentCatalogData.layout.cellWidth - iconWidth) / 2 + 15;
        //: CGFloat startY = (self.currentCatalogData.layout.cellHeight- iconHeight) / 2 + 10;
        CGFloat startY = (self.currentCatalogData.layout.cellHeight- iconHeight) / 2 + 10;
        //: int32_t coloumnIndex = 0;
        int32_t coloumnIndex = 0;
        //: int32_t rowIndex = 0;
        int32_t rowIndex = 0;
        //: int32_t indexInPage = 0;
        int32_t indexInPage = 0;
        //: for (NSInteger index = 0; index < self.currentCatalogData.emoticons.count; index ++)
        for (NSInteger index = 0; index < self.currentCatalogData.emoticons.count; index ++)
        {
            //: NIMInputEmoticon *data = [self.currentCatalogData.emoticons objectAtIndex:index];
            ButtonTableEmoticon *data = [self.currentCatalogData.emoticons objectAtIndex:index];

            //: WatchInputEmoticonButton *button = [WatchInputEmoticonButton iconButtonWithData:data catalogID:self.currentCatalogData.catalogID delegate:self];
            OldButton *button = [OldButton conference:data delegateBe:self.currentCatalogData.catalogID glitter:self];
            //计算表情位置
            //: rowIndex = indexInPage / self.currentCatalogData.layout.columes;
            rowIndex = indexInPage / self.currentCatalogData.layout.columes;
            //: coloumnIndex= indexInPage % self.currentCatalogData.layout.columes;
            coloumnIndex= indexInPage % self.currentCatalogData.layout.columes;
            //: CGFloat x = coloumnIndex * self.currentCatalogData.layout.cellWidth + startX;
            CGFloat x = coloumnIndex * self.currentCatalogData.layout.cellWidth + startX;
            //: CGFloat y = rowIndex * self.currentCatalogData.layout.cellHeight + startY;
            CGFloat y = rowIndex * self.currentCatalogData.layout.cellHeight + startY;
            //: CGRect iconRect = CGRectMake(x, y, iconWidth, iconHeight);
            CGRect iconRect = CGRectMake(x, y, iconWidth, iconHeight);
            //: [button setFrame:iconRect];
            [button setFrame:iconRect];
            //: [self.scrollView addSubview:button];
            [self.scrollView addSubview:button];
            //: indexInPage ++;
            indexInPage ++;
        }

    }
}

//: #pragma mark -  config data
#pragma mark -  config data

//: - (NSInteger)sumPages
- (NSInteger)ting
{
    //: __block NSInteger pagesCount = 0;
    __block NSInteger pagesCount = 0;
    //: [self.totalCatalogData enumerateObjectsUsingBlock:^(NIMInputEmoticonCatalog* data, NSUInteger idx, BOOL *stop) {
    [self.totalCatalogData enumerateObjectsUsingBlock:^(BottomCatalog* data, NSUInteger idx, BOOL *stop) {
        //: pagesCount += data.pagesCount;
        pagesCount += data.pagesCount;
    //: }];
    }];
    //: return pagesCount;
    return pagesCount;
}


//: - (UIView*)emojPageView:(WatchPageView*)pageView inEmoticonCatalog:(NIMInputEmoticonCatalog *)emoticon page:(NSInteger)page
- (UIView*)inward:(EndUserView*)pageView inside:(BottomCatalog *)emoticon textPage:(NSInteger)page
{
    //: UIView *subView = [[UIView alloc] init];
    UIView *subView = [[UIView alloc] init];
    //: NSInteger iconHeight = emoticon.layout.imageHeight;
    NSInteger iconHeight = emoticon.layout.imageHeight;
    //: NSInteger iconWidth = emoticon.layout.imageWidth;
    NSInteger iconWidth = emoticon.layout.imageWidth;
    //: CGFloat startX = (emoticon.layout.cellWidth - iconWidth) / 2 + 15;
    CGFloat startX = (emoticon.layout.cellWidth - iconWidth) / 2 + 15;
    //: CGFloat startY = (emoticon.layout.cellHeight- iconHeight) / 2 + 10;
    CGFloat startY = (emoticon.layout.cellHeight- iconHeight) / 2 + 10;
    //: int32_t coloumnIndex = 0;
    int32_t coloumnIndex = 0;
    //: int32_t rowIndex = 0;
    int32_t rowIndex = 0;
    //: int32_t indexInPage = 0;
    int32_t indexInPage = 0;
    //: NSInteger begin = page * emoticon.layout.itemCountInPage;
    NSInteger begin = page * emoticon.layout.itemCountInPage;
    //: NSInteger end = begin + emoticon.layout.itemCountInPage;
    NSInteger end = begin + emoticon.layout.itemCountInPage;
    //: end = end > emoticon.emoticons.count ? (emoticon.emoticons.count) : end;
    end = end > emoticon.emoticons.count ? (emoticon.emoticons.count) : end;
    //: for (NSInteger index = begin; index < end; index ++)
    for (NSInteger index = begin; index < end; index ++)
    {
        //: NIMInputEmoticon *data = [emoticon.emoticons objectAtIndex:index];
        ButtonTableEmoticon *data = [emoticon.emoticons objectAtIndex:index];

        //: WatchInputEmoticonButton *button = [WatchInputEmoticonButton iconButtonWithData:data catalogID:emoticon.catalogID delegate:self];
        OldButton *button = [OldButton conference:data delegateBe:emoticon.catalogID glitter:self];
        //计算表情位置
        //: rowIndex = indexInPage / emoticon.layout.columes;
        rowIndex = indexInPage / emoticon.layout.columes;
        //: coloumnIndex= indexInPage % emoticon.layout.columes;
        coloumnIndex= indexInPage % emoticon.layout.columes;
        //: CGFloat x = coloumnIndex * emoticon.layout.cellWidth + startX;
        CGFloat x = coloumnIndex * emoticon.layout.cellWidth + startX;
        //: CGFloat y = rowIndex * emoticon.layout.cellHeight + startY;
        CGFloat y = rowIndex * emoticon.layout.cellHeight + startY;
        //: CGRect iconRect = CGRectMake(x, y, iconWidth, iconHeight);
        CGRect iconRect = CGRectMake(x, y, iconWidth, iconHeight);
        //: [button setFrame:iconRect];
        [button setFrame:iconRect];
        //: [subView addSubview:button];
        [subView addSubview:button];
        //: indexInPage ++;
        indexInPage ++;
    }
    //: if (coloumnIndex == emoticon.layout.columes -1)
    if (coloumnIndex == emoticon.layout.columes -1)
    {
        //: rowIndex = rowIndex +1;
        rowIndex = rowIndex +1;
        //: coloumnIndex = -1; 
        coloumnIndex = -1; //设置成-1是因为显示在第0位，有加1
    }
//    if ([emoticon.catalogID isEqualToString:NEEKIT_EmojiCatalog]) {
//        [self addDeleteEmotButtonToView:subView  ColumnIndex:coloumnIndex RowIndex:rowIndex StartX:startX StartY:startY IconWidth:iconWidth IconHeight:iconHeight inEmoticonCatalog:emoticon];
//    }
    //: return subView;
    return subView;
}

//: - (void)addDeleteEmotButtonToView:(UIView *)view
- (void)view:(UIView *)view
                      //: ColumnIndex:(NSInteger)coloumnIndex
                      sitting:(NSInteger)coloumnIndex
                         //: RowIndex:(NSInteger)rowIndex
                         content:(NSInteger)rowIndex
                           //: StartX:(CGFloat)startX
                           maxColor:(CGFloat)startX
                           //: StartY:(CGFloat)startY
                           sheetContentUp:(CGFloat)startY
                        //: IconWidth:(CGFloat)iconWidth
                        pictureOf:(CGFloat)iconWidth
                       //: IconHeight:(CGFloat)iconHeight
                       custom:(CGFloat)iconHeight
                //: inEmoticonCatalog:(NIMInputEmoticonCatalog *)emoticon
                be:(BottomCatalog *)emoticon
{
    //: WatchInputEmoticonButton* deleteIcon = [[WatchInputEmoticonButton alloc] init];
    OldButton* deleteIcon = [[OldButton alloc] init];
    //: deleteIcon.delegate = self;
    deleteIcon.delegate = self;
    //: deleteIcon.userInteractionEnabled = YES;
    deleteIcon.userInteractionEnabled = YES;
    //: deleteIcon.exclusiveTouch = YES;
    deleteIcon.exclusiveTouch = YES;
    //: deleteIcon.contentMode = UIViewContentModeCenter;
    deleteIcon.contentMode = UIViewContentModeCenter;
    //: UIImage *imageNormal = [UIImage nim_emoticonInKit:@"emoji_del_normal"];
    UIImage *imageNormal = [UIImage cut:StringFromUrnData(k_expressionStr)];
    //: UIImage *imagePressed = [UIImage nim_emoticonInKit:@"emoji_del_pressed"];
    UIImage *imagePressed = [UIImage cut:StringFromUrnData(main_flowStr)];

    //: [deleteIcon setImage:imageNormal forState:UIControlStateNormal];
    [deleteIcon setImage:imageNormal forState:UIControlStateNormal];
    //: [deleteIcon setImage:imagePressed forState:UIControlStateHighlighted];
    [deleteIcon setImage:imagePressed forState:UIControlStateHighlighted];
    //: [deleteIcon addTarget:deleteIcon action:@selector(onIconSelected:) forControlEvents:UIControlEventTouchUpInside];
    [deleteIcon addTarget:deleteIcon action:@selector(lipograming:) forControlEvents:UIControlEventTouchUpInside];

    //: CGFloat newX = (coloumnIndex +1) * emoticon.layout.cellWidth + startX;
    CGFloat newX = (coloumnIndex +1) * emoticon.layout.cellWidth + startX;
    //: CGFloat newY = rowIndex * emoticon.layout.cellHeight + startY;
    CGFloat newY = rowIndex * emoticon.layout.cellHeight + startY;
    //: CGRect deleteIconRect = CGRectMake(newX, newY, 43.0, 43.0);
    CGRect deleteIconRect = CGRectMake(newX, newY, 43.0, 43.0);

    //: [deleteIcon setFrame:deleteIconRect];
    [deleteIcon setFrame:deleteIconRect];
    //: [view addSubview:deleteIcon];
    [view addSubview:deleteIcon];
}


//: #pragma mark - pageviewDelegate
#pragma mark - pageviewDelegate
//: - (NSInteger)numberOfPages: (WatchPageView *)pageView
- (NSInteger)mImage: (EndUserView *)pageView
{
    //: return [self sumPages];
    return [self ting];
}

//: - (UIView *)pageView:(WatchPageView *)pageView viewInPage:(NSInteger)index
- (UIView *)colorPage:(EndUserView *)pageView bubble:(NSInteger)index
{
    //: NSInteger page = 0;
    NSInteger page = 0;
    //: NIMInputEmoticonCatalog *emoticon;
    BottomCatalog *emoticon;
    //: for (emoticon in self.totalCatalogData) {
    for (emoticon in self.totalCatalogData) {
        //: NSInteger newPage = page + emoticon.pagesCount;
        NSInteger newPage = page + emoticon.pagesCount;
        //: if (newPage > index) {
        if (newPage > index) {
            //: break;
            break;
        }
        //: page = newPage;
        page = newPage;
    }
    //: return [self emojPageView:pageView inEmoticonCatalog:emoticon page:index - page];
    return [self inward:pageView inside:emoticon textPage:index - page];
}


//: - (NIMInputEmoticonCatalog*)loadDefaultCatalog
- (BottomCatalog*)line
{
    //: NIMInputEmoticonCatalog *emoticonCatalog = [[WatchInputEmoticonManager sharedManager] emoticonCatalog:@"default"];
    BottomCatalog *emoticonCatalog = [[TitleToManager draw] assemble:StringFromUrnData(user_upName)];
    //: if (emoticonCatalog) {
    if (emoticonCatalog) {
        //: NIMInputEmoticonLayout *layout = [[NIMInputEmoticonLayout alloc] initEmojiLayout:self.nim_width];
        UserValue *layout = [[UserValue alloc] initEmojiDisable:self.nim_width];
        //: emoticonCatalog.layout = layout;
        emoticonCatalog.layout = layout;
        //: emoticonCatalog.pagesCount = [self numberOfPagesWithEmoticon:emoticonCatalog];
        emoticonCatalog.pagesCount = [self shouldEmoticon:emoticonCatalog];
    }
    //: return emoticonCatalog;
    return emoticonCatalog;
}

//: - (NIMInputEmoticonCatalog*)loadGifCatalog
- (BottomCatalog*)packSharedProspectus
{
    //: NIMInputEmoticonCatalog *emoticonCatalog = [[WatchInputEmoticonManager sharedManager] emoticonCatalog:@"gif"];
    BottomCatalog *emoticonCatalog = [[TitleToManager draw] assemble:StringFromUrnData(main_titleKey)];
    //: if (emoticonCatalog) {
    if (emoticonCatalog) {
        //: NIMInputEmoticonLayout *layout = [[NIMInputEmoticonLayout alloc] initEmojiLayout:self.nim_width];
        UserValue *layout = [[UserValue alloc] initEmojiDisable:self.nim_width];
        //: emoticonCatalog.layout = layout;
        emoticonCatalog.layout = layout;
        //: emoticonCatalog.pagesCount = [self numberOfPagesWithEmoticon:emoticonCatalog];
        emoticonCatalog.pagesCount = [self shouldEmoticon:emoticonCatalog];
    }
    //: return emoticonCatalog;
    return emoticonCatalog;
}

//: - (NSArray *)loadChartlet{
- (NSArray *)albumChartlet{
    //: NSArray *chatlets = nil;
    NSArray *chatlets = nil;
    //: if ([self.config respondsToSelector:@selector(charlets)])
    if ([self.config respondsToSelector:@selector(labelCharlets)])
    {
        //: chatlets = [self.config charlets];
        chatlets = [self.config labelCharlets];
        //: for (NIMInputEmoticonCatalog *item in chatlets) {
        for (BottomCatalog *item in chatlets) {
            //: NIMInputEmoticonLayout *layout = [[NIMInputEmoticonLayout alloc] initCharletLayout:self.nim_width];
            UserValue *layout = [[UserValue alloc] initPhysicalObject:self.nim_width];
            //: item.layout = layout;
            item.layout = layout;
            //: item.pagesCount = [self numberOfPagesWithEmoticon:item];
            item.pagesCount = [self shouldEmoticon:item];
        }
    }
    //: return chatlets;
    return chatlets;
}


//找到某组表情的起始位置
//: - (NSInteger)pageIndexWithEmoticon:(NIMInputEmoticonCatalog *)emoticonCatalog{
- (NSInteger)keyBy:(BottomCatalog *)emoticonCatalog{
    //: NSInteger pageIndex = 0;
    NSInteger pageIndex = 0;
    //: for (NIMInputEmoticonCatalog *emoticon in self.totalCatalogData) {
    for (BottomCatalog *emoticon in self.totalCatalogData) {
        //: if (emoticon == emoticonCatalog) {
        if (emoticon == emoticonCatalog) {
            //: break;
            break;
        }
        //: pageIndex += emoticon.pagesCount;
        pageIndex += emoticon.pagesCount;
    }
    //: return pageIndex;
    return pageIndex;
}

//: - (NSInteger)pageIndexWithTotalIndex:(NSInteger)index{
- (NSInteger)title:(NSInteger)index{
    //: NIMInputEmoticonCatalog *catelog = [self emoticonWithIndex:index];
    BottomCatalog *catelog = [self show:index];
    //: NSInteger begin = [self pageIndexWithEmoticon:catelog];
    NSInteger begin = [self keyBy:catelog];
    //: return index - begin;
    return index - begin;
}

//: - (NIMInputEmoticonCatalog *)emoticonWithIndex:(NSInteger)index {
- (BottomCatalog *)show:(NSInteger)index {
    //: NSInteger page = 0;
    NSInteger page = 0;
    //: NIMInputEmoticonCatalog *emoticon;
    BottomCatalog *emoticon;
    //: for (emoticon in self.totalCatalogData) {
    for (emoticon in self.totalCatalogData) {
        //: NSInteger newPage = page + emoticon.pagesCount;
        NSInteger newPage = page + emoticon.pagesCount;
        //: if (newPage > index) {
        if (newPage > index) {
            //: break;
            break;
        }
        //: page = newPage;
        page = newPage;
    }
    //: return emoticon;
    return emoticon;
}

//: - (NSInteger)numberOfPagesWithEmoticon:(NIMInputEmoticonCatalog *)emoticonCatalog
- (NSInteger)shouldEmoticon:(BottomCatalog *)emoticonCatalog
{
    //: if(emoticonCatalog.emoticons.count % emoticonCatalog.layout.itemCountInPage == 0)
    if(emoticonCatalog.emoticons.count % emoticonCatalog.layout.itemCountInPage == 0)
    {
        //: return emoticonCatalog.emoticons.count / emoticonCatalog.layout.itemCountInPage;
        return emoticonCatalog.emoticons.count / emoticonCatalog.layout.itemCountInPage;
    }
    //: else
    else
    {
        //: return emoticonCatalog.emoticons.count / emoticonCatalog.layout.itemCountInPage + 1;
        return emoticonCatalog.emoticons.count / emoticonCatalog.layout.itemCountInPage + 1;
    }
}

//: - (void)pageViewScrollEnd: (WatchPageView *)pageView
- (void)clean: (EndUserView *)pageView
             //: currentIndex: (NSInteger)index
             endWith: (NSInteger)index
               //: totolPages: (NSInteger)pages{
               end: (NSInteger)pages{
    //: NIMInputEmoticonCatalog *emticon = [self emoticonWithIndex:index];
    BottomCatalog *emticon = [self show:index];
    //: self.emotPageController.numberOfPages = [emticon pagesCount];
    self.emotPageController.numberOfPages = [emticon pagesCount];
    //: self.emotPageController.currentPage = [self pageIndexWithTotalIndex:index];
    self.emotPageController.currentPage = [self title:index];

    //: NSInteger selectTabIndex = [self.totalCatalogData indexOfObject:emticon];
    NSInteger selectTabIndex = [self.totalCatalogData indexOfObject:emticon];
    //: [self.tabView selectTabIndex:selectTabIndex];
    [self.tabView queryInsideIndex:selectTabIndex];
}


//: #pragma mark - EmoticonButtonTouchDelegate
#pragma mark - EmoticonButtonTouchDelegate
//: - (void)selectedEmoticon:(NIMInputEmoticon*)emoticon catalogID:(NSString*)catalogID{
- (void)startProspectus:(ButtonTableEmoticon*)emoticon disable:(NSString*)catalogID{
    //: if ([self.delegate respondsToSelector:@selector(selectedEmoticon:catalog:description:)]) {
    if ([self.delegate respondsToSelector:@selector(consumer:successDescription:description_strong:)]) {


        //: if(emoticon.gif.length>0){
        if(emoticon.gif.length>0){
            //: [self.delegate selectedGifEmoticon: emoticon.filename];
            [self.delegate filter: emoticon.filename];
        //: }else{
        }else{
//            [self.delegate selectedEmoticon:emoticon.emoticonID catalog:catalogID description:emoticon.tag];

                    //: if (emoticon.type == NIMEmoticonTypeUnicode) {
                    if (emoticon.type == NIMEmoticonTypeUnicode) {
                        //: [self.delegate selectedEmoticon:emoticon.emoticonID catalog:catalogID description:emoticon.unicode];
                        [self.delegate consumer:emoticon.emoticonID successDescription:catalogID description_strong:emoticon.unicode];
                    //: } else {
                    } else {
                        //: [self.delegate selectedEmoticon:emoticon.emoticonID catalog:catalogID description:emoticon.tag];
                        [self.delegate consumer:emoticon.emoticonID successDescription:catalogID description_strong:emoticon.tag];
                    }
        }


    }
}

//: - (void)didPressSend:(id)sender{
- (void)objectSend:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(didPressSend:)]) {
    if ([self.delegate respondsToSelector:@selector(objectSend:)]) {
        //: [self.delegate didPressSend:sender];
        [self.delegate objectSend:sender];
    }
}

//: - (void)didPressDelete:(id)sender{
- (void)omitted:(id)sender{
    //: if ([self.delegate respondsToSelector:@selector(didPressDelete:)]) {
    if ([self.delegate respondsToSelector:@selector(omitted:)]) {
        //: [self.delegate didPressDelete:sender];
        [self.delegate omitted:sender];
    }
}


//: #pragma mark - InputEmoticonTabDelegate
#pragma mark - InputEmoticonTabDelegate
//: - (void)tabView:(WatchInputEmoticonTabView *)tabView didSelectTabIndex:(NSInteger) index{
- (void)bolusWithColumnIndex:(SleepingTabletControl *)tabView buttonFollow:(NSInteger) index{
    //: self.currentCatalogData = self.totalCatalogData[index];
    self.currentCatalogData = self.totalCatalogData[index];
    //: [self layoutEmoticonPageView];
    [self threadView];
}

//: #pragma mark - Private
#pragma mark - Private

//: - (void)setCurrentCatalogData:(NIMInputEmoticonCatalog *)currentCatalogData{
- (void)setCurrentCatalogData:(BottomCatalog *)currentCatalogData{
    //: _currentCatalogData = currentCatalogData;
    _currentCatalogData = currentCatalogData;
    //: [self.emoticonPageView scrollToPage:[self pageIndexWithEmoticon:_currentCatalogData]];
    [self.emoticonPageView user:[self keyBy:_currentCatalogData]];
}

//: - (void)setTotalCatalogData:(NSArray *)totalCatalogData
- (void)setTotalCatalogData:(NSArray *)totalCatalogData
{
    //: _totalCatalogData = totalCatalogData;
    _totalCatalogData = totalCatalogData;
//    [self.tabView loadCatalogs:totalCatalogData];
}

//: - (NSArray *)allEmoticons{
- (NSArray *)allEmoticons{
    //: NSMutableArray *array = [[NSMutableArray alloc] init];
    NSMutableArray *array = [[NSMutableArray alloc] init];
    //: for (NIMInputEmoticonCatalog *catalog in self.totalCatalogData) {
    for (BottomCatalog *catalog in self.totalCatalogData) {
        //: [array addObjectsFromArray:catalog.emoticons];
        [array addObjectsFromArray:catalog.emoticons];
    }
    //: return array;
    return array;
}


//: #pragma mark - Get
#pragma mark - Get
//: - (WatchInputEmoticonTabView *)tabView
- (SleepingTabletControl *)tabView
{
    //: if (!_tabView) {
    if (!_tabView) {
        //: _tabView = [[WatchInputEmoticonTabView alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, 0)];
        _tabView = [[SleepingTabletControl alloc] initWithFrame:CGRectMake(0, 0, self.nim_width, 0)];
        //: _tabView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        _tabView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        //: _tabView.delegate = self;
        _tabView.delegate = self;
//        [_tabView.sendButton addTarget:self action:@selector(didPressSend:) forControlEvents:UIControlEventTouchUpInside];
        //: [_tabView.sendButton addTarget:self action:@selector(didPressDelete:) forControlEvents:UIControlEventTouchUpInside];
        [_tabView.sendButton addTarget:self action:@selector(omitted:) forControlEvents:UIControlEventTouchUpInside];

        //: [self addSubview:_tabView];
        [self addSubview:_tabView];

        //: if (_currentCatalogData.pagesCount > 0) {
        if (_currentCatalogData.pagesCount > 0) {
            //: _emotPageController.numberOfPages = [_currentCatalogData pagesCount];
            _emotPageController.numberOfPages = [_currentCatalogData pagesCount];
            //: _emotPageController.currentPage = 0;
            _emotPageController.currentPage = 0;
        }
    }
    //: return _tabView;
    return _tabView;
}

//: - (UIScrollView *)scrollView
- (UIScrollView *)scrollView
{
    //: if (!_scrollView)
    if (!_scrollView)
    {
        //: _scrollView = [[UIScrollView alloc]init];
        _scrollView = [[UIScrollView alloc]init];
        //: _scrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
        _scrollView.autoresizingMask = UIViewAutoresizingFlexibleWidth;
//        _scrollView.pagingEnabled = YES;
        //: _scrollView.showsVerticalScrollIndicator = NO;
        _scrollView.showsVerticalScrollIndicator = NO;
        //: _scrollView.showsHorizontalScrollIndicator = NO;
        _scrollView.showsHorizontalScrollIndicator = NO;
        //: _scrollView.scrollsToTop = NO;
        _scrollView.scrollsToTop = NO;
    }
    //: return _scrollView;
    return _scrollView;
}

//: @end
@end

Byte * UrnDataToCache(Byte *data) {
    int everythingBarTowards = data[0];
    int peaShooter = data[1];
    int amendmentPrimary = data[2];
    if (!everythingBarTowards) return data + amendmentPrimary;
    for (int i = 0; i < peaShooter / 2; i++) {
        int begin = amendmentPrimary + i;
        int end = amendmentPrimary + peaShooter - i - 1;
        Byte temp = data[begin];
        data[begin] = data[end];
        data[end] = temp;
    }
    data[0] = 0;
    data[amendmentPrimary + peaShooter] = 0;
    return data + amendmentPrimary;
}

NSString *StringFromUrnData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)UrnDataToCache(data)];
}  
