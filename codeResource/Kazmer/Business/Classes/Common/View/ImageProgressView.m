
#import <Foundation/Foundation.h>

typedef struct {
    Byte radiogram;
    Byte *constitutionalCircle;
    unsigned int atVia;
	int admitInsertr;
} StructRecurData;

@interface RecurData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation RecurData

+ (instancetype)sharedInstance {
    static RecurData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)RecurDataToByte:(StructRecurData *)data {
    for (int i = 0; i < data->atVia; i++) {
        data->constitutionalCircle[i] ^= data->radiogram;
    }
    data->constitutionalCircle[data->atVia] = 0;
	if (data->atVia >= 1) {
		data->admitInsertr = data->constitutionalCircle[0];
	}
    return data->constitutionalCircle;
}

- (NSString *)StringFromRecurData:(StructRecurData *)data {
    return [NSString stringWithUTF8String:(char *)[self RecurDataToByte:data]];
}

//: loading_%zd
- (NSString *)m_powerIdent {
    /* static */ NSString *m_powerIdent = nil;
    if (!m_powerIdent) {
        StructRecurData value = (StructRecurData){240, (Byte []){156, 159, 145, 148, 153, 158, 151, 175, 213, 138, 148, 254}, 11, 133};
        m_powerIdent = [self StringFromRecurData:&value];
    }
    return m_powerIdent;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ImageProgressView.m
//  天天网
//
//  Created by zhaoweibing on 14-4-25.
//  Copyright (c) 2014年 Ios. All rights reserved.
//

// __M_A_C_R_O__
//: #import "ShowNotice.h"
#import "ImageProgressView.h"

//: @interface ShowNotice ()
@interface ImageProgressView ()

//: @property (nonatomic, retain) UIView *viewBg;
@property (nonatomic, retain) UIView *viewBg;//黑色半透明背景色
//: @property (weak, nonatomic) UIImageView *gifView;
@property (weak, nonatomic) UIImageView *gifView;

//: @end
@end

//: @implementation ShowNotice
@implementation ImageProgressView

//: - (id)init
- (id)init
{
    //: return [self initWithFrame:CGRectZero];
    return [self initWithFrame:CGRectZero];
}

//: - (id)initWithFrame:(CGRect)frame
- (id)initWithFrame:(CGRect)frame
{
    //: frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    frame = CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, [[UIScreen mainScreen] bounds].size.height);
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        // Initialization code

        //: self.backgroundColor = [UIColor clearColor];
        self.backgroundColor = [UIColor clearColor];

        //黑色透明背景
        //: _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        _viewBg = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
        //: _viewBg.backgroundColor = [UIColor whiteColor];
        _viewBg.backgroundColor = [UIColor whiteColor];
        //: _viewBg.center = CGPointMake(self.width/2, self.height/2);
        _viewBg.center = CGPointMake(self.width/2, self.height/2);
        //: _viewBg.layer.masksToBounds = YES;
        _viewBg.layer.masksToBounds = YES;
        //: _viewBg.layer.cornerRadius = 8;
        _viewBg.layer.cornerRadius = 8;
        //: _viewBg.layer.shadowColor = [UIColor blackColor].CGColor;
        _viewBg.layer.shadowColor = [UIColor blackColor].CGColor;
        //: _viewBg.layer.opacity = 0.85f;
        _viewBg.layer.opacity = 0.85f;
        //: [self addSubview:_viewBg];
        [self addSubview:_viewBg];


    }
    //: return self;
    return self;
}

//: - (UIImageView *)gifView
- (UIImageView *)gifView
{
    //: if (!_gifView) {
    if (!_gifView) {
        //: UIImageView *gifView = [[UIImageView alloc] init];
        UIImageView *gifView = [[UIImageView alloc] init];
        //: [self.viewBg addSubview:_gifView = gifView];
        [self.viewBg addSubview:_gifView = gifView];
    }
    //: return _gifView;
    return _gifView;
}

//: + (ShowNotice *)showNoticeTo:(UIView *)view animated:(BOOL)animated
+ (ImageProgressView *)languageAnimated:(UIView *)view upAcross:(BOOL)animated
{
    //: ShowNotice *notice = [[ShowNotice alloc] init];
    ImageProgressView *notice = [[ImageProgressView alloc] init];
    //: [view addSubview:notice];
    [view addSubview:notice];

        //设置即将刷新状态的动画图片
        //: NSMutableArray *refreshingImages = [NSMutableArray array];
        NSMutableArray *refreshingImages = [NSMutableArray array];
        //: for (NSInteger i = 0; i<30; i++) {
        for (NSInteger i = 0; i<30; i++) {
            //: UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"loading_%zd",i]];
            UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:[[RecurData sharedInstance] m_powerIdent],i]];
            //: [refreshingImages addObject:image];
            [refreshingImages addObject:image];
        }

        //: [notice.gifView stopAnimating];
        [notice.gifView stopAnimating];

            //: notice.gifView.animationImages = refreshingImages;
            notice.gifView.animationImages = refreshingImages;
            //: notice.gifView.animationDuration = refreshingImages.count * 0.1;
            notice.gifView.animationDuration = refreshingImages.count * 0.1;
            //: [notice.gifView startAnimating];
            [notice.gifView startAnimating];


        //: notice.gifView.frame = CGRectMake(0, 0, 100, 100);
        notice.gifView.frame = CGRectMake(0, 0, 100, 100);


    //: return notice;
    return notice;
}





//: - (void)hideNoticeAnimated:(BOOL)animated
- (void)indicatorMedia:(BOOL)animated
{
    //: if (animated == NO) {
    if (animated == NO) {

        //: [self removeFromSuperview];
        [self removeFromSuperview];
        //: return ;
        return ;
    }

    //: [UIView animateWithDuration:0.2f animations:^{
    [UIView animateWithDuration:0.2f animations:^{
        //: self.alpha = 0;
        self.alpha = 0;
    //: } completion:^(BOOL finished) {
    } completion:^(BOOL finished) {

        //: [self removeFromSuperview];
        [self removeFromSuperview];
    //: }];
    }];
}


//: @end
@end