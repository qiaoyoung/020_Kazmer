// __DEBUG__
// __CLOSE_PRINT__
//
//  MakeNameView.h
// Mortification
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayPageView.h"
#import "MarginView.h"
//: #import "DisplaySessionConfig.h"
#import "ColorConfig.h"

//: @class NIMInputEmoticonCatalog;
@class TitleDisplayCatalog;
//: @class DisplayInputEmoticonTabView;
@class MessageControl;

//: @protocol NIMInputEmoticonProtocol <NSObject>
@protocol LabelControl <NSObject>

//: - (void)didPressSend:(id)sender;
- (void)recentInProvider:(id)sender;

//: - (void)didPressDelete:(id)sender;
- (void)lifestyled:(id)sender;

//: - (void)selectedEmoticon:(NSString*)emoticonID catalog:(NSString*)emotCatalogID description:(NSString *)description;
- (void)pressDescription:(NSString*)emoticonID writtenMatter:(NSString*)emotCatalogID cellOn:(NSString *)description;

//: - (void)selectedGifEmoticon:(NSString*)gif;
- (void)from:(NSString*)gif;

//: @end
@end


//: @interface DisplayInputEmoticonContainerView : UIView<DisplayPageViewDataSource,DisplayPageViewDelegate>
@interface MakeNameView : UIView<CellMessageTag,SecondNameDelegate>

//: @property (nonatomic, strong) DisplayPageView *emoticonPageView;
@property (nonatomic, strong) MarginView *emoticonPageView;
//: @property (nonatomic, strong) UIPageControl *emotPageController;
@property (nonatomic, strong) UIPageControl *emotPageController;
//: @property (nonatomic, strong) NSArray *totalCatalogData;
@property (nonatomic, strong) NSArray *totalCatalogData;
//: @property (nonatomic, strong) NIMInputEmoticonCatalog *currentCatalogData;
@property (nonatomic, strong) TitleDisplayCatalog *currentCatalogData;
//: @property (nonatomic, readonly)NSArray *allEmoticons;
@property (nonatomic, readonly)NSArray *allEmoticons;
//: @property (nonatomic, strong) DisplayInputEmoticonTabView *tabView;
@property (nonatomic, strong) MessageControl *tabView;
//: @property (nonatomic, weak) id<NIMInputEmoticonProtocol> delegate;
@property (nonatomic, weak) id<LabelControl> delegate;
//: @property (nonatomic, weak) id<DisplaySessionConfig> config;
@property (nonatomic, weak) id<ColorConfig> config;

//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;

//: @end
@end
