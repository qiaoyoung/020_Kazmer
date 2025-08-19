
#import <Foundation/Foundation.h>

typedef struct {
    Byte sexyUndertake;
    Byte *suggestText;
    unsigned int amplePorted;
	int bidBubble;
} StructEveryBitData;

@interface EveryBitData : NSObject

@end

@implementation EveryBitData

+ (Byte *)EveryBitDataToByte:(StructEveryBitData *)data {
    for (int i = 0; i < data->amplePorted; i++) {
        data->suggestText[i] ^= data->sexyUndertake;
    }
    data->suggestText[data->amplePorted] = 0;
	if (data->amplePorted >= 1) {
		data->bidBubble = data->suggestText[0];
	}
    return data->suggestText;
}

+ (NSString *)StringFromEveryBitData:(StructEveryBitData *)data {
    return [NSString stringWithUTF8String:(char *)[self EveryBitDataToByte:data]];
}

//: #8A8E98
+ (NSString *)notiSegmentPath {
    /* static */ NSString *notiSegmentPath = nil;
    if (!notiSegmentPath) {
        StructEveryBitData value = (StructEveryBitData){248, (Byte []){219, 192, 185, 192, 189, 193, 192, 125}, 7, 123};
        notiSegmentPath = [self StringFromEveryBitData:&value];
    }
    return notiSegmentPath;
}

//: user_profile_avtivity_send
+ (NSString *)notiCompanyContent {
    /* static */ NSString *notiCompanyContent = nil;
    if (!notiCompanyContent) {
        StructEveryBitData value = (StructEveryBitData){57, (Byte []){76, 74, 92, 75, 102, 73, 75, 86, 95, 80, 85, 92, 102, 88, 79, 77, 80, 79, 80, 77, 64, 102, 74, 92, 87, 93, 109}, 26, 173};
        notiCompanyContent = [self StringFromEveryBitData:&value];
    }
    return notiCompanyContent;
}

//: #4B43DE
+ (NSString *)mNecessaryIdent {
    /* static */ NSString *mNecessaryIdent = nil;
    if (!mNecessaryIdent) {
        StructEveryBitData value = (StructEveryBitData){33, (Byte []){2, 21, 99, 21, 18, 101, 100, 18}, 7, 173};
        mNecessaryIdent = [self StringFromEveryBitData:&value];
    }
    return mNecessaryIdent;
}

//: #ffffff
+ (NSString *)kTransformationText {
    /* static */ NSString *kTransformationText = nil;
    if (!kTransformationText) {
        StructEveryBitData value = (StructEveryBitData){60, (Byte []){31, 90, 90, 90, 90, 90, 90, 86}, 7, 171};
        kTransformationText = [self StringFromEveryBitData:&value];
    }
    return kTransformationText;
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  CuttingEdgeRadiogramTroughView.m
//  Riverla
//
//  Created by mac on 2025/4/22.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PhotoContainerView.h"
#import "CuttingEdgeRadiogramTroughView.h"

//: @interface PhotoContainerView ()<CustomMediaPickerViewDelegate,UIGestureRecognizerDelegate>
@interface CuttingEdgeRadiogramTroughView ()<NameCell,UIGestureRecognizerDelegate>


//: @property (nonatomic, strong) UIPanGestureRecognizer *panGesture;
@property (nonatomic, strong) UIPanGestureRecognizer *panGesture;
//: @property (nonatomic, assign) CGFloat initialHeight;
@property (nonatomic, assign) CGFloat initialHeight;
//: @property (nonatomic, assign) BOOL isScrollViewAtTop;
@property (nonatomic, assign) BOOL isScrollViewAtTop;

//: @property (nonatomic, assign) CGFloat minHeight; 
@property (nonatomic, assign) CGFloat minHeight; // 最小高度
//: @property (nonatomic, assign) CGFloat maxHeight; 
@property (nonatomic, assign) CGFloat maxHeight; // 最大高度

//: @end
@end

//: @implementation PhotoContainerView
@implementation CuttingEdgeRadiogramTroughView

//: - (instancetype)initWithFrame:(CGRect)frame
- (instancetype)initWithFrame:(CGRect)frame
{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {

        //: self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];
        self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.5];

//        UITapGestureRecognizer *singleTapclose = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(animationClose)];
////        singleTapclose.delegate = self;
//        singleTapclose.cancelsTouchesInView = NO; // 允许触摸事件继续传递
//        [self addGestureRecognizer:singleTapclose];
        // 添加拖拽手势


        //: _minHeight = 480;
        _minHeight = 480;
        //: _maxHeight = 720;
        _maxHeight = 720;

        //: [self initUI];
        [self initRemember];

    }
    //: return self;
    return self;
}

//- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch {
//    CGPoint touchLocation = [touch locationInView:self];
//    
//    // 检查触摸点是否在子视图上
//    if (CGRectContainsPoint(self.albumPickerView.frame, touchLocation)) {
//        return NO; // 不接收这个触摸事件
//    }
//    
//    return YES; // 接收这个触摸事件
//}

//: #pragma mark - 手势处理
#pragma mark - 手势处理
//: - (void)handlePanGesture:(UIPanGestureRecognizer *)gesture
- (void)paning:(UIPanGestureRecognizer *)gesture
{
    //: CGPoint velocity = [gesture velocityInView:self];
    CGPoint velocity = [gesture velocityInView:self];

           // 根据滑动速度决定是展开还是收起
           //: if (velocity.y < 0) {
           if (velocity.y < 0) {
               // 向上快速滑动 - 展开
               //: [self expandWithAnimation];
               [self aboveTop];
           //: } else if (velocity.y > 0) {
           } else if (velocity.y > 0) {
               // 向下快速滑动 - 收起
               //: [self collapseWithAnimation];
               [self streetSmartAnimationCrumple];
           //: } else {
           } else {
               // 根据当前位置决定
               //: CGFloat currentHeight = self.frame.size.height;
               CGFloat currentHeight = self.frame.size.height;
               //: if (currentHeight > (self.maxHeight + self.minHeight) / 2) {
               if (currentHeight > (self.maxHeight + self.minHeight) / 2) {
                   //: [self expandWithAnimation];
                   [self aboveTop];
               //: } else {
               } else {
                   //: [self collapseWithAnimation];
                   [self streetSmartAnimationCrumple];
               }
           }




}



//: #pragma mark - 展开/收起动画
#pragma mark - 展开/收起动画
//: - (void)expandWithAnimation{
- (void)aboveTop{

        //: self.viewBg.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-_maxHeight, [[UIScreen mainScreen] bounds].size.width, _maxHeight);
        self.viewBg.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-_maxHeight, [[UIScreen mainScreen] bounds].size.width, _maxHeight);
        //: self.line.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-40)/2, 12, 40, 4);
        self.line.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-40)/2, 12, 40, 4);
        //: self.albumPickerView.frame = CGRectMake(20, 30, [[UIScreen mainScreen] bounds].size.width-40, _maxHeight-120);
        self.albumPickerView.frame = CGRectMake(20, 30, [[UIScreen mainScreen] bounds].size.width-40, _maxHeight-120);
        //: self.albumPickerView.collectionView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-40, _maxHeight-120);
        self.albumPickerView.collectionView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-40, _maxHeight-120);
        //: self.confirmButton.frame = CGRectMake(20, _maxHeight-70, [[UIScreen mainScreen] bounds].size.width-40, 48);
        self.confirmButton.frame = CGRectMake(20, _maxHeight-70, [[UIScreen mainScreen] bounds].size.width-40, 48);

}

//: - (void)collapseWithAnimation {
- (void)streetSmartAnimationCrumple {

        //: self.viewBg.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-_minHeight, [[UIScreen mainScreen] bounds].size.width, _minHeight);
        self.viewBg.frame = CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-_minHeight, [[UIScreen mainScreen] bounds].size.width, _minHeight);
        //: self.line.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-40)/2, 12, 40, 4);
        self.line.frame = CGRectMake(([[UIScreen mainScreen] bounds].size.width-40)/2, 12, 40, 4);
        //: self.albumPickerView.frame = CGRectMake(20, 30, [[UIScreen mainScreen] bounds].size.width-40, _minHeight-120);
        self.albumPickerView.frame = CGRectMake(20, 30, [[UIScreen mainScreen] bounds].size.width-40, _minHeight-120);
        //: self.albumPickerView.collectionView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-40, _minHeight-120);
        self.albumPickerView.collectionView.frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width-40, _minHeight-120);
        //: self.confirmButton.frame = CGRectMake(20, _minHeight-70, [[UIScreen mainScreen] bounds].size.width-40, 48);
        self.confirmButton.frame = CGRectMake(20, _minHeight-70, [[UIScreen mainScreen] bounds].size.width-40, 48);

}

//: - (void)initUI {
- (void)initRemember {

    //: _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-_minHeight, [[UIScreen mainScreen] bounds].size.width, _minHeight)];
    _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-_minHeight, [[UIScreen mainScreen] bounds].size.width, _minHeight)];
    //: _viewBg.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
    _viewBg.backgroundColor = [UIColor min:[EveryBitData kTransformationText]];
    //: _viewBg.layer.masksToBounds = YES;
    _viewBg.layer.masksToBounds = YES;
    //: _viewBg.layer.cornerRadius = 12;
    _viewBg.layer.cornerRadius = 12;
    //: _viewBg.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner;
    _viewBg.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner;
    //: [self addSubview:_viewBg];
    [self addSubview:_viewBg];
    //: _viewBg.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    _viewBg.layer.shadowColor = [UIColor colorWithRed:0/255.0 green:0/255.0 blue:0/255.0 alpha:0.0800].CGColor;
    //: _viewBg.layer.shadowOffset = CGSizeMake(0,-4);
    _viewBg.layer.shadowOffset = CGSizeMake(0,-4);
    //: _viewBg.layer.shadowOpacity = 1;
    _viewBg.layer.shadowOpacity = 1;
    //: _viewBg.layer.shadowRadius = 16;
    _viewBg.layer.shadowRadius = 16;
    //: _panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePanGesture:)];
    _panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(paning:)];
    //: _panGesture.delegate = self;
    _panGesture.delegate = self;
    //: [_viewBg addGestureRecognizer:_panGesture];
    [_viewBg addGestureRecognizer:_panGesture];

    //: _line = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-40)/2, 12, 40, 4)];
    _line = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-40)/2, 12, 40, 4)];
    //: _line.backgroundColor = [UIColor colorWithHexString:@"#8A8E98"];
    _line.backgroundColor = [UIColor min:[EveryBitData notiSegmentPath]];
    //: _line.layer.cornerRadius = 2;
    _line.layer.cornerRadius = 2;
    //: [_viewBg addSubview:_line];
    [_viewBg addSubview:_line];

    // 创建相册选择器视图
    //: _albumPickerView = [[CustomAlbumPickerView alloc] initWithFrame:CGRectMake(20, 30, [[UIScreen mainScreen] bounds].size.width-40, _minHeight-120)];
    _albumPickerView = [[FindEdgeView alloc] initWithFrame:CGRectMake(20, 30, [[UIScreen mainScreen] bounds].size.width-40, _minHeight-120)];
    //: _albumPickerView.delegate = self;
    _albumPickerView.delegate = self;
    //: _albumPickerView.allowCamera = YES; 
    _albumPickerView.allowCamera = YES; // 显示拍照按钮
//    _albumPickerView.exclusiveTouch = YES;
    //: [_viewBg addSubview:_albumPickerView];
    [_viewBg addSubview:_albumPickerView];

    //: [_viewBg addSubview:self.confirmButton];
    [_viewBg addSubview:self.confirmButton];
    //: self.confirmButton.frame = CGRectMake(20, _minHeight-70, [[UIScreen mainScreen] bounds].size.width-40, 48);
    self.confirmButton.frame = CGRectMake(20, _minHeight-70, [[UIScreen mainScreen] bounds].size.width-40, 48);

}

//: - (UIButton *)confirmButton
- (UIButton *)confirmButton
{
    //: if (!_confirmButton) {
    if (!_confirmButton) {
        //: _confirmButton = [UIButton buttonWithType:UIButtonTypeSystem];
        _confirmButton = [UIButton buttonWithType:UIButtonTypeSystem];
        //: _confirmButton.layer.cornerRadius = 24;
        _confirmButton.layer.cornerRadius = 24;
        //: [_confirmButton setTitle:[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_send"] forState:UIControlStateNormal];
        [_confirmButton setTitle:[PaintedNaturalLanguageTo exhibit:[EveryBitData notiCompanyContent]] forState:UIControlStateNormal];
        //: [_confirmButton addTarget:self action:@selector(confirmButtonTapped) forControlEvents:UIControlEventTouchUpInside];
        [_confirmButton addTarget:self action:@selector(modifyShow) forControlEvents:UIControlEventTouchUpInside];
        //: _confirmButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _confirmButton.backgroundColor = [UIColor min:[EveryBitData mNecessaryIdent]];
        //: [_confirmButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [_confirmButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        //: _confirmButton.titleLabel.font = [UIFont systemFontOfSize:16];
        _confirmButton.titleLabel.font = [UIFont systemFontOfSize:16];
    }
    //: return _confirmButton;
    return _confirmButton;
}


//: #pragma mark - CustomAlbumPickerViewDelegate
#pragma mark - CustomAlbumPickerViewDelegate
//: - (void)mediaPickerDidSelectAssets:(NSArray<PHAsset *> *)assets
- (void)inputColor:(NSArray<PHAsset *> *)assets
{
    //: NSLog(@"选择了 %lu 张图片", (unsigned long)assets.count);
    //: self.selectedPhoto = assets;
    self.selectedPhoto = assets;
    //: [self.confirmButton setTitle:[NSString stringWithFormat:@"%@(%lu)",[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_send"],(unsigned long)self.selectedPhoto.count] forState:UIControlStateNormal];
    [self.confirmButton setTitle:[NSString stringWithFormat:@"%@(%lu)",[PaintedNaturalLanguageTo exhibit:[EveryBitData notiCompanyContent]],(unsigned long)self.selectedPhoto.count] forState:UIControlStateNormal];
}

//: - (void)mediaPickerDidTapCamera {
- (void)cameraHigh {
    //: NSLog(@"用户点击了拍照按钮");
    // 如果需要特殊处理拍照后的逻辑，可以在这里实现
    //: if ([self.delegate respondsToSelector:@selector(CustomPickerDidSelectCamera)]) {
    if ([self.delegate respondsToSelector:@selector(trailheadValue)]) {
        //: [self.delegate CustomPickerDidSelectCamera];
        [self.delegate trailheadValue];
    }
}

//: - (void)confirmButtonTapped {
- (void)modifyShow {
    //: [self animationClose];
    [self impendentImage];
    //: if ([self.delegate respondsToSelector:@selector(CustomPickerDidSelectAssets:)]) {
    if ([self.delegate respondsToSelector:@selector(domains:)]) {
        //: [self.delegate CustomPickerDidSelectAssets:self.selectedPhoto];
        [self.delegate domains:self.selectedPhoto];
    }
}

//: - (void)animationClose
- (void)impendentImage
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)title
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: @end
@end