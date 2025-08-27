
#import <Foundation/Foundation.h>

typedef struct {
    Byte approximately;
    Byte *engine;
    unsigned int hinduCalendarMonth;
	int chondrite;
	int cabinPhotograph;
} StructEngagementData;

@interface EngagementData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation EngagementData

+ (instancetype)sharedInstance {
    static EngagementData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)EngagementDataToByte:(StructEngagementData *)data {
    for (int i = 0; i < data->hinduCalendarMonth; i++) {
        data->engine[i] ^= data->approximately;
    }
    data->engine[data->hinduCalendarMonth] = 0;
	if (data->hinduCalendarMonth >= 2) {
		data->chondrite = data->engine[0];
		data->cabinPhotograph = data->engine[1];
	}
    return data->engine;
}

- (NSString *)StringFromEngagementData:(StructEngagementData *)data {
    return [NSString stringWithUTF8String:(char *)[self EngagementDataToByte:data]];
}

//: invalid item selector!
- (NSString *)k_originClusterId {
    /* static */ NSString *k_originClusterId = nil;
    if (!k_originClusterId) {
        StructEngagementData value = (StructEngagementData){170, (Byte []){195, 196, 220, 203, 198, 195, 206, 138, 195, 222, 207, 199, 138, 217, 207, 198, 207, 201, 222, 197, 216, 139, 62}, 22, 163, 140};
        k_originClusterId = [self StringFromEngagementData:&value];
    }
    return k_originClusterId;
}

//: #612CF9
- (NSString *)app_sueFormat {
    /* static */ NSString *app_sueFormat = nil;
    if (!app_sueFormat) {
        StructEngagementData value = (StructEngagementData){250, (Byte []){217, 204, 203, 200, 185, 188, 195, 38}, 7, 244, 245};
        app_sueFormat = [self StringFromEngagementData:&value];
    }
    return app_sueFormat;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESInputMoreContainerView.m
//  NIMDemo
//
//  Created by chris.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "WatchInputMoreContainerView.h"
#import "EdgePositionView.h"
//: #import "WatchPageView.h"
#import "EndUserView.h"
//: #import "WatchMediaItem.h"
#import "InfoMakeBar.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"

//: NSInteger NIMMaxItemCountInPage = 8;
NSInteger showMenuName = 8;
//: NSInteger NIMButtonItemWidth = 75;
NSInteger dreamStyleById = 75;
//: NSInteger NIMButtonItemHeight = 85;
NSInteger showIntervalMessage = 85;
//: NSInteger NIMPageRowCount = 2;
NSInteger main_currentTitle = 2;
//: NSInteger NIMPageColumnCount = 4;
NSInteger noti_controlFormat = 4;
//: NSInteger NIMButtonBegintLeftX = 11;
NSInteger dream_handleTitle = 11;




//: @interface WatchInputMoreContainerView() <WatchPageViewDataSource,WatchPageViewDelegate,CustomMediaPickerViewDelegate>
@interface EdgePositionView() <ObjectCell,MaxDelegate,NameCell>
{
    //: NSArray *_mediaButtons;
    NSArray *_mediaButtons;
    //: NSArray *_mediaItems;
    NSArray *_mediaItems;
}


//: @property (nonatomic, strong) WatchPageView *pageView;
@property (nonatomic, strong) EndUserView *pageView;

//: @end
@end

//: @implementation WatchInputMoreContainerView
@implementation EdgePositionView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
//        _pageView = [[EndUserView alloc] initWithFrame:CGRectZero];
//        _pageView.dataSource = self;
//        [self addSubview:_pageView];

        //: self.layer.cornerRadius = 12;
        self.layer.cornerRadius = 12;
        //: self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        self.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
        //: self.layer.shadowOffset = CGSizeMake(0,-4);
        self.layer.shadowOffset = CGSizeMake(0,-4);
        //: self.layer.shadowOpacity = 1;
        self.layer.shadowOpacity = 1;
        //: self.layer.shadowRadius = 16;
        self.layer.shadowRadius = 16;

        //: [self setup];
        [self name];
    }
    //: return self;
    return self;
}

//: - (void)setConfig:(id<WatchSessionConfig>)config
- (void)setConfig:(id<MessagePinImage>)config
{
    //: _config = config;
    _config = config;
//    [self genMediaButtons];
//    [self.pageView reloadData];
}


//: - (CGSize)sizeThatFits:(CGSize)size
- (CGSize)sizeThatFits:(CGSize)size
{
    //: return CGSizeMake(size.width, 400.f);
    return CGSizeMake(size.width, 400.f);
}

//: - (void)setup {
- (void)name {
    //: self.backgroundColor = [UIColor whiteColor];
    self.backgroundColor = [UIColor whiteColor];

    // 创建相册选择器视图
    //: _albumPickerView = [[CustomAlbumPickerView alloc] initWithFrame:CGRectMake(20, 10, [[UIScreen mainScreen] bounds].size.width-40, 380)];
    _albumPickerView = [[FindEdgeView alloc] initWithFrame:CGRectMake(20, 10, [[UIScreen mainScreen] bounds].size.width-40, 380)];
    //: _albumPickerView.delegate = self;
    _albumPickerView.delegate = self;
    //: _albumPickerView.maxSelectionCount = 5; 
    _albumPickerView.maxSelectionCount = 5; // 设置最大选择数量
    //: _albumPickerView.delegate = self;
    _albumPickerView.delegate = self;
    //: _albumPickerView.allowCamera = YES; 
    _albumPickerView.allowCamera = YES; // 显示拍照按钮
    //: [self addSubview:_albumPickerView];
    [self addSubview:_albumPickerView];

//    // 添加边框
//    _albumPickerView.layer.borderWidth = 1.0;
//    _albumPickerView.layer.borderColor = [UIColor darkGrayColor].CGColor;
//    _albumPickerView.layer.cornerRadius = 8.0;
//    _albumPickerView.clipsToBounds = YES;
}

//: #pragma mark - CustomAlbumPickerViewDelegate
#pragma mark - CustomAlbumPickerViewDelegate
//: - (void)mediaPickerDidSelectAssets:(NSArray<PHAsset *> *)assets
- (void)inputColor:(NSArray<PHAsset *> *)assets
{
    //: NSLog(@"选择了 %lu 张图片", (unsigned long)assets.count);

        //: if ([self.delegate respondsToSelector:@selector(PickerDidSelectAssets:)]) {
        if ([self.delegate respondsToSelector:@selector(stacked:)]) {
            //: [self.delegate PickerDidSelectAssets:assets];
            [self.delegate stacked:assets];
        }

    // 在这里处理选择的图片

    // 可以选择自动隐藏相册选择器
//     [self.albumPickerView removeFromSuperview];

//    if ([self.actionDelegate respondsToSelector:@selector(onTapAlbunArray:)]) {
//        [self.actionDelegate onTapAlbunArray:assets];
//    }
}

//: - (void)mediaPickerDidTapCamera {
- (void)cameraHigh {
    //: NSLog(@"用户点击了拍照按钮");
    // 如果需要特殊处理拍照后的逻辑，可以在这里实现
    //: if ([self.actionDelegate respondsToSelector:@selector(onTapCameraBtn:)]) {
    if ([self.actionDelegate respondsToSelector:@selector(alonged:)]) {
        //: [self.actionDelegate onTapCameraBtn:nil];
        [self.actionDelegate alonged:nil];
    }
}

//: - (void)genMediaButtons
- (void)can
{
    //: NSMutableArray *mediaButtons = [NSMutableArray array];
    NSMutableArray *mediaButtons = [NSMutableArray array];
    //: NSMutableArray *mediaItems = [NSMutableArray array];
    NSMutableArray *mediaItems = [NSMutableArray array];
    //: NSArray *items;
    NSArray *items;
    //: if (!self.config)
    if (!self.config)
    {
        //: items = [MyUserKit sharedKit].config.defaultMediaItems;
        items = [ButtonKit sheerOption].config.emptyItems;
    }
    //: else if([self.config respondsToSelector:@selector(mediaItems)])
    else if([self.config respondsToSelector:@selector(compartmentState)])
    {
        //: items = [self.config mediaItems];
        items = [self.config compartmentState];
    }
    //: [items enumerateObjectsUsingBlock:^(WatchMediaItem *item, NSUInteger idx, BOOL *stop) {
    [items enumerateObjectsUsingBlock:^(InfoMakeBar *item, NSUInteger idx, BOOL *stop) {
        //: [mediaItems addObject:item];
        [mediaItems addObject:item];

        //: UIButton *btn = [[UIButton alloc] init];
        UIButton *btn = [[UIButton alloc] init];
        //: btn.tag = idx;
        btn.tag = idx;
        //: [btn setImage:item.normalImage forState:UIControlStateNormal];
        [btn setImage:item.normalImage forState:UIControlStateNormal];
        //: [btn setImage:item.selectedImage forState:UIControlStateHighlighted];
        [btn setImage:item.selectedImage forState:UIControlStateHighlighted];
        //: [btn setTitle:item.title forState:UIControlStateNormal];
        [btn setTitle:item.title forState:UIControlStateNormal];
        //: [btn setTitleColor:[UIColor colorWithHexString:@"#612CF9"] forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor min:[[EngagementData sharedInstance] app_sueFormat]] forState:UIControlStateNormal];
        //: btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        btn.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
//        [btn setTitleEdgeInsets:UIEdgeInsetsMake(76, -75, 0, 0)];
        //: [btn setTitleEdgeInsets:UIEdgeInsetsMake(44, -44, 0, 0)];
        [btn setTitleEdgeInsets:UIEdgeInsetsMake(44, -44, 0, 0)];
        //: [btn setImageEdgeInsets:UIEdgeInsetsMake(-16, 0, 0, -[self calculateWidthWithFont:14 Text:item.title])];
        [btn setImageEdgeInsets:UIEdgeInsetsMake(-16, 0, 0, -[self state:14 context:item.title])];

        //: [btn.titleLabel setFont:[UIFont systemFontOfSize:14.0]];
        [btn.titleLabel setFont:[UIFont systemFontOfSize:14.0]];
        //: btn.titleLabel.textAlignment = NSTextAlignmentCenter;
        btn.titleLabel.textAlignment = NSTextAlignmentCenter;
        //: [mediaButtons addObject:btn];
        [mediaButtons addObject:btn];

    //: }];
    }];
    //: _mediaButtons = mediaButtons;
    _mediaButtons = mediaButtons;
    //: _mediaItems = mediaItems;
    _mediaItems = mediaItems;
}

//: -(CGFloat)calculateWidthWithFont:(NSInteger)Font Text:(NSString *)text{
-(CGFloat)state:(NSInteger)Font context:(NSString *)text{
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



//: - (void)setFrame:(CGRect)frame{
- (void)setFrame:(CGRect)frame{
    //: CGFloat originalWidth = self.frame.size.width;
    CGFloat originalWidth = self.frame.size.width;
    //: [super setFrame:frame];
    [super setFrame:frame];
    //: if (originalWidth != frame.size.width)
    if (originalWidth != frame.size.width)
    {
        //: self.pageView.frame = self.bounds;
        self.pageView.frame = self.bounds;
        //: [self.pageView reloadData];
        [self.pageView noDomainData];
    }
}

//: - (void)dealloc
- (void)dealloc
{
    //: _pageView.dataSource = nil;
    _pageView.dataSource = nil;
}


//: #pragma mark PageViewDataSource
#pragma mark PageViewDataSource
//: - (NSInteger)numberOfPages: (WatchPageView *)pageView
- (NSInteger)mImage: (EndUserView *)pageView
{
    //: NSInteger count = [_mediaButtons count] / NIMMaxItemCountInPage;
    NSInteger count = [_mediaButtons count] / showMenuName;
    //: count = ([_mediaButtons count] % NIMMaxItemCountInPage == 0) ? count: count + 1;
    count = ([_mediaButtons count] % showMenuName == 0) ? count: count + 1;
    //: return ((count) > (1) ? (count) : (1));
    return ((count) > (1) ? (count) : (1));
}

//: - (UIView*)mediaPageView:(WatchPageView*)pageView beginItem:(NSInteger)begin endItem:(NSInteger)end
- (UIView*)travelByDown:(EndUserView*)pageView input:(NSInteger)begin position:(NSInteger)end
{
    //: UIView *subView = [[UIView alloc] init];
    UIView *subView = [[UIView alloc] init];
    //: NSInteger span = (self.nim_width - NIMPageColumnCount * NIMButtonItemWidth) / (NIMPageColumnCount +1);
    NSInteger span = (self.nim_width - noti_controlFormat * dreamStyleById) / (noti_controlFormat +1);
    //: CGFloat startY = NIMButtonBegintLeftX;
    CGFloat startY = dream_handleTitle;
    //: NSInteger coloumnIndex = 0;
    NSInteger coloumnIndex = 0;
    //: NSInteger rowIndex = 0;
    NSInteger rowIndex = 0;
    //: NSInteger indexInPage = 0;
    NSInteger indexInPage = 0;
    //: for (NSInteger index = begin; index < end; index ++)
    for (NSInteger index = begin; index < end; index ++)
    {
        //: UIButton *button = [_mediaButtons objectAtIndex:index];
        UIButton *button = [_mediaButtons objectAtIndex:index];
        //: [button addTarget:self action:@selector(onTouchButton:) forControlEvents:UIControlEventTouchUpInside];
        [button addTarget:self action:@selector(alongClearHoldfast:) forControlEvents:UIControlEventTouchUpInside];
        //计算位置
        //: rowIndex = indexInPage / NIMPageColumnCount;
        rowIndex = indexInPage / noti_controlFormat;
        //: coloumnIndex= indexInPage % NIMPageColumnCount;
        coloumnIndex= indexInPage % noti_controlFormat;
        //: CGFloat x = span + (NIMButtonItemWidth + span) * coloumnIndex;
        CGFloat x = span + (dreamStyleById + span) * coloumnIndex;
        //: CGFloat y = 0.0;
        CGFloat y = 0.0;
        //: if (rowIndex > 0)
        if (rowIndex > 0)
        {
            //: y = rowIndex * NIMButtonItemHeight + startY + 15;
            y = rowIndex * showIntervalMessage + startY + 15;
        }
        //: else
        else
        {
            //: y = rowIndex * NIMButtonItemHeight + startY;
            y = rowIndex * showIntervalMessage + startY;
        }
        //: [button setFrame:CGRectMake(x, y, NIMButtonItemWidth, NIMButtonItemHeight)];
        [button setFrame:CGRectMake(x, y, dreamStyleById, showIntervalMessage)];
        //: [subView addSubview:button];
        [subView addSubview:button];
        //: indexInPage ++;
        indexInPage ++;
    }
    //: return subView;
    return subView;
}

//: - (UIView*)oneLineMediaInPageView:(WatchPageView *)pageView
- (UIView*)comment:(EndUserView *)pageView
                       //: viewInPage: (NSInteger)index
                       touch: (NSInteger)index
                            //: count:(NSInteger)count
                            to:(NSInteger)count
{
    //: UIView *subView = [[UIView alloc] init];
    UIView *subView = [[UIView alloc] init];
    //: NSInteger span = (self.nim_width - count * NIMButtonItemWidth) / (count +1);
    NSInteger span = (self.nim_width - count * dreamStyleById) / (count +1);

    //: for (NSInteger btnIndex = 0; btnIndex < count; btnIndex ++)
    for (NSInteger btnIndex = 0; btnIndex < count; btnIndex ++)
    {
        //: UIButton *button = [_mediaButtons objectAtIndex:btnIndex];
        UIButton *button = [_mediaButtons objectAtIndex:btnIndex];
        //: [button addTarget:self action:@selector(onTouchButton:) forControlEvents:UIControlEventTouchUpInside];
        [button addTarget:self action:@selector(alongClearHoldfast:) forControlEvents:UIControlEventTouchUpInside];
        //: CGRect iconRect = CGRectMake(span + (NIMButtonItemWidth + span) * btnIndex, 0, NIMButtonItemWidth, NIMButtonItemHeight);
        CGRect iconRect = CGRectMake(span + (dreamStyleById + span) * btnIndex, 0, dreamStyleById, showIntervalMessage);
        //: [button setFrame:iconRect];
        [button setFrame:iconRect];
        //: [subView addSubview:button];
        [subView addSubview:button];
    }
    //: return subView;
    return subView;
}

//: - (UIView *)pageView: (WatchPageView *)pageView viewInPage: (NSInteger)index
- (UIView *)colorPage: (EndUserView *)pageView bubble: (NSInteger)index
{
    //: if ([_mediaButtons count] == 2 || [_mediaButtons count] == 3) 
    if ([_mediaButtons count] == 2 || [_mediaButtons count] == 3) //一行显示2个或者3个
    {
        //: return [self oneLineMediaInPageView:pageView viewInPage:index count:[_mediaButtons count]];
        return [self comment:pageView touch:index to:[_mediaButtons count]];
    }

    //: if (index < 0)
    if (index < 0)
    {
        //: assert(0);
        assert(0);
        //: index = 0;
        index = 0;
    }
    //: NSInteger begin = index * NIMMaxItemCountInPage;
    NSInteger begin = index * showMenuName;
    //: NSInteger end = (index + 1) * NIMMaxItemCountInPage;
    NSInteger end = (index + 1) * showMenuName;
    //: if (end > [_mediaButtons count])
    if (end > [_mediaButtons count])
    {
        //: end = [_mediaButtons count];
        end = [_mediaButtons count];
    }
    //: return [self mediaPageView:pageView beginItem:begin endItem:end];
    return [self travelByDown:pageView input:begin position:end];
}

//: #pragma mark - button actions
#pragma mark - button actions
//: - (void)onTouchButton:(id)sender
- (void)alongClearHoldfast:(id)sender
{
    //: NSInteger index = [(UIButton *)sender tag];
    NSInteger index = [(UIButton *)sender tag];
    //: WatchMediaItem *item = _mediaItems[index];
    InfoMakeBar *item = _mediaItems[index];
    //: if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(onTapMediaItem:)]) {
    if (_actionDelegate && [_actionDelegate respondsToSelector:@selector(colorBlueItem:)]) {
        //: BOOL handled = [_actionDelegate onTapMediaItem:item];
        BOOL handled = [_actionDelegate colorBlueItem:item];
        //: if (!handled) {
        if (!handled) {
            //: NSAssert(0, @"invalid item selector!");
            NSAssert(0, [[EngagementData sharedInstance] k_originClusterId]);
        }
    }

}

//: @end
@end
