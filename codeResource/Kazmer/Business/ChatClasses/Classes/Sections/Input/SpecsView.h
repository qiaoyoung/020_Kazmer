// __DEBUG__
// __CLOSE_PRINT__
//
//  SpecsView.h
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFPageView.h"
#import "EndUserView.h"
//: #import "FFFSessionConfig.h"
#import "MessagePinImage.h"

//: @class NIMInputEmoticonCatalog;
@class BottomCatalog;
//: @class FFFInputEmoticonTabView;
@class SleepingTabletControl;

//: @protocol NIMInputEmoticonProtocol <NSObject>
@protocol TitleBubbleShow <NSObject>

//: - (void)didPressSend:(id)sender;
- (void)objectSend:(id)sender;

//: - (void)didPressDelete:(id)sender;
- (void)omitted:(id)sender;

//: - (void)selectedEmoticon:(NSString*)emoticonID catalog:(NSString*)emotCatalogID description:(NSString *)description;
- (void)consumer:(NSString*)emoticonID successDescription:(NSString*)emotCatalogID description_strong:(NSString *)description;

//: - (void)selectedGifEmoticon:(NSString*)gif;
- (void)filter:(NSString*)gif;

//: @end
@end


//: @interface FFFInputEmoticonContainerView : UIView<FFFPageViewDataSource,FFFPageViewDelegate>
@interface SpecsView : UIView<ObjectCell,MaxDelegate>

//: @property (nonatomic, strong) FFFPageView *emoticonPageView;
@property (nonatomic, strong) EndUserView *emoticonPageView;
//: @property (nonatomic, strong) UIPageControl *emotPageController;
@property (nonatomic, strong) UIPageControl *emotPageController;
//: @property (nonatomic, strong) NSArray *totalCatalogData;
@property (nonatomic, strong) NSArray *totalCatalogData;
//: @property (nonatomic, strong) NIMInputEmoticonCatalog *currentCatalogData;
@property (nonatomic, strong) BottomCatalog *currentCatalogData;
//: @property (nonatomic, readonly)NSArray *allEmoticons;
@property (nonatomic, readonly)NSArray *allEmoticons;
//: @property (nonatomic, strong) FFFInputEmoticonTabView *tabView;
@property (nonatomic, strong) SleepingTabletControl *tabView;
//: @property (nonatomic, weak) id<NIMInputEmoticonProtocol> delegate;
@property (nonatomic, weak) id<TitleBubbleShow> delegate;
//: @property (nonatomic, weak) id<FFFSessionConfig> config;
@property (nonatomic, weak) id<MessagePinImage> config;

//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;

//: @end
@end