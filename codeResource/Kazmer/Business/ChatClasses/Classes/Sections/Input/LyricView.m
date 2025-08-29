
#import <Foundation/Foundation.h>

@interface StemData : NSObject

@end

@implementation StemData

+ (NSData *)StemDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (Byte *)StemDataToCache:(Byte *)data {
    int lam = data[0];
    Byte bridgeTap = data[1];
    int qualitySustainMultiple = data[2];
    for (int i = qualitySustainMultiple; i < qualitySustainMultiple + lam; i++) {
        int value = data[i] - bridgeTap;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[qualitySustainMultiple + lam] = 0;
    return data + qualitySustainMultiple;
}

+ (NSString *)StringFromStemData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self StemDataToCache:data]];
}

//: #ffffff
+ (NSString *)kName_grayTribeValue {
    /* static */ NSString *kName_grayTribeValue = nil;
    if (!kName_grayTribeValue) {
		NSArray<NSNumber *> *origin = @[@7, @41, @6, @225, @246, @190, @76, @143, @143, @143, @143, @143, @143, @212];
		NSData *data = [StemData StemDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_grayTribeValue = [self StringFromStemData:value];
    }
    return kName_grayTribeValue;
}

//: #8A8E98
+ (NSString *)kNameSingString {
    /* static */ NSString *kNameSingString = nil;
    if (!kNameSingString) {
		NSArray<NSNumber *> *origin = @[@7, @41, @9, @36, @204, @79, @109, @131, @130, @76, @97, @106, @97, @110, @98, @97, @51];
		NSData *data = [StemData StemDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameSingString = [self StringFromStemData:value];
    }
    return kNameSingString;
}

//: #4B43DE
+ (NSString *)kTextSurvivorValue {
    /* static */ NSString *kTextSurvivorValue = nil;
    if (!kTextSurvivorValue) {
		NSArray<NSNumber *> *origin = @[@7, @27, @3, @62, @79, @93, @79, @78, @95, @96, @29];
		NSData *data = [StemData StemDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextSurvivorValue = [self StringFromStemData:value];
    }
    return kTextSurvivorValue;
}

//: user_profile_avtivity_send
+ (NSString *)kNameThoughValue {
    /* static */ NSString *kNameThoughValue = nil;
    if (!kNameThoughValue) {
		NSArray<NSNumber *> *origin = @[@26, @6, @9, @147, @22, @182, @124, @108, @125, @123, @121, @107, @120, @101, @118, @120, @117, @108, @111, @114, @107, @101, @103, @124, @122, @111, @124, @111, @122, @127, @101, @121, @107, @116, @106, @136];
		NSData *data = [StemData StemDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameThoughValue = [self StringFromStemData:value];
    }
    return kNameThoughValue;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  LyricView.m
//  Riverla
//
//  Created by mac on 2025/4/22.
//  Copyright © 2025 Riverla. All rights reserved.
//

// __M_A_C_R_O__
//: #import "PhotoContainerView.h"
#import "LyricView.h"

//: @interface PhotoContainerView ()<CustomMediaPickerViewDelegate,UIGestureRecognizerDelegate>
@interface LyricView ()<YearDelegate,UIGestureRecognizerDelegate>


//: @property (nonatomic, strong) UIPanGestureRecognizer *panGesture;
@property (nonatomic, strong) UIPanGestureRecognizer *panGesture;
//: @property (nonatomic, assign) CGFloat initialHeight;
@property (nonatomic, assign) CGFloat initialHeight;
//: @property (nonatomic, assign) BOOL isScrollViewAtTop;
@property (nonatomic, assign) BOOL isScrollViewAtTop;

//: @property (nonatomic, assign) CGFloat minHeight; 
@property (nonatomic, assign) CGFloat minHeight;// 最小高度
//: @property (nonatomic, assign) CGFloat maxHeight; 
@property (nonatomic, assign) CGFloat maxHeight;// 最大高度

//: @end
@end

//: @implementation PhotoContainerView
@implementation LyricView

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
        [self initQuick];

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
- (void)handled:(UIPanGestureRecognizer *)gesture
{
    //: CGPoint velocity = [gesture velocityInView:self];
    CGPoint velocity = [gesture velocityInView:self];

           // 根据滑动速度决定是展开还是收起
           //: if (velocity.y < 0) {
           if (velocity.y < 0) {
               // 向上快速滑动 - 展开
               //: [self expandWithAnimation];
               [self tumesce];
           //: } else if (velocity.y > 0) {
           } else if (velocity.y > 0) {
               // 向下快速滑动 - 收起
               //: [self collapseWithAnimation];
               [self tap];
           //: } else {
           } else {
               // 根据当前位置决定
               //: CGFloat currentHeight = self.frame.size.height;
               CGFloat currentHeight = self.frame.size.height;
               //: if (currentHeight > (self.maxHeight + self.minHeight) / 2) {
               if (currentHeight > (self.maxHeight + self.minHeight) / 2) {
                   //: [self expandWithAnimation];
                   [self tumesce];
               //: } else {
               } else {
                   //: [self collapseWithAnimation];
                   [self tap];
               }
           }




}



//: #pragma mark - 展开/收起动画
#pragma mark - 展开/收起动画
//: - (void)expandWithAnimation{
- (void)tumesce{

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
- (void)tap {

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
- (void)initQuick {

    //: _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-_minHeight, [[UIScreen mainScreen] bounds].size.width, _minHeight)];
    _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height-_minHeight, [[UIScreen mainScreen] bounds].size.width, _minHeight)];
    //: _viewBg.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
    _viewBg.backgroundColor = [UIColor cell:[StemData kName_grayTribeValue]];
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
    _panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handled:)];
    //: _panGesture.delegate = self;
    _panGesture.delegate = self;
    //: [_viewBg addGestureRecognizer:_panGesture];
    [_viewBg addGestureRecognizer:_panGesture];

    //: _line = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-40)/2, 12, 40, 4)];
    _line = [[UIView alloc]initWithFrame:CGRectMake(([[UIScreen mainScreen] bounds].size.width-40)/2, 12, 40, 4)];
    //: _line.backgroundColor = [UIColor colorWithHexString:@"#8A8E98"];
    _line.backgroundColor = [UIColor cell:[StemData kNameSingString]];
    //: _line.layer.cornerRadius = 2;
    _line.layer.cornerRadius = 2;
    //: [_viewBg addSubview:_line];
    [_viewBg addSubview:_line];

    // 创建相册选择器视图
    //: _albumPickerView = [[CustomAlbumPickerView alloc] initWithFrame:CGRectMake(20, 30, [[UIScreen mainScreen] bounds].size.width-40, _minHeight-120)];
    _albumPickerView = [[TargetReplyView alloc] initWithFrame:CGRectMake(20, 30, [[UIScreen mainScreen] bounds].size.width-40, _minHeight-120)];
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
        [_confirmButton setTitle:[MakeManager cell:[StemData kNameThoughValue]] forState:UIControlStateNormal];
        //: [_confirmButton addTarget:self action:@selector(confirmButtonTapped) forControlEvents:UIControlEventTouchUpInside];
        [_confirmButton addTarget:self action:@selector(buttonWill) forControlEvents:UIControlEventTouchUpInside];
        //: _confirmButton.backgroundColor = [UIColor colorWithHexString:@"#4B43DE"];
        _confirmButton.backgroundColor = [UIColor cell:[StemData kTextSurvivorValue]];
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
- (void)showSaveAssets:(NSArray<PHAsset *> *)assets
{
    //: NSLog(@"选择了 %lu 张图片", (unsigned long)assets.count);
    //: self.selectedPhoto = assets;
    self.selectedPhoto = assets;
    //: [self.confirmButton setTitle:[NSString stringWithFormat:@"%@(%lu)",[FFFLanguageManager getTextWithKey:@"user_profile_avtivity_send"],(unsigned long)self.selectedPhoto.count] forState:UIControlStateNormal];
    [self.confirmButton setTitle:[NSString stringWithFormat:@"%@(%lu)",[MakeManager cell:[StemData kNameThoughValue]],(unsigned long)self.selectedPhoto.count] forState:UIControlStateNormal];
}

//: - (void)mediaPickerDidTapCamera {
- (void)cutShould {
    //: NSLog(@"用户点击了拍照按钮");
    // 如果需要特殊处理拍照后的逻辑，可以在这里实现
    //: if ([self.delegate respondsToSelector:@selector(CustomPickerDidSelectCamera)]) {
    if ([self.delegate respondsToSelector:@selector(infoSub)]) {
        //: [self.delegate CustomPickerDidSelectCamera];
        [self.delegate infoSub];
    }
}

//: - (void)confirmButtonTapped {
- (void)buttonWill {
    //: [self animationClose];
    [self ingatheringBy];
    //: if ([self.delegate respondsToSelector:@selector(CustomPickerDidSelectAssets:)]) {
    if ([self.delegate respondsToSelector:@selector(customing:)]) {
        //: [self.delegate CustomPickerDidSelectAssets:self.selectedPhoto];
        [self.delegate customing:self.selectedPhoto];
    }
}

//: - (void)animationClose
- (void)ingatheringBy
{
    //: self.hidden = YES;
    self.hidden = YES;
}

//: - (void)animationShow
- (void)sign
{
    //: self.hidden = NO;
    self.hidden = NO;
}

//: @end
@end