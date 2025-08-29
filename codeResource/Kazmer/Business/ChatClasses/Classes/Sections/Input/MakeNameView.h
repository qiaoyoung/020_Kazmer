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
//: #import "FFFPageView.h"
#import "MarginView.h"
//: #import "FFFSessionConfig.h"
#import "ColorConfig.h"

//: @class NIMInputEmoticonCatalog;
@class TitleDisplayCatalog;
//: @class FFFInputEmoticonTabView;
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


//: @interface FFFInputEmoticonContainerView : UIView<FFFPageViewDataSource,FFFPageViewDelegate>
@interface MakeNameView : UIView<CellMessageTag,SecondNameDelegate>

//: @property (nonatomic, strong) FFFPageView *emoticonPageView;
@property (nonatomic, strong) MarginView *emoticonPageView;
//: @property (nonatomic, strong) UIPageControl *emotPageController;
@property (nonatomic, strong) UIPageControl *emotPageController;
//: @property (nonatomic, strong) NSArray *totalCatalogData;
@property (nonatomic, strong) NSArray *totalCatalogData;
//: @property (nonatomic, strong) NIMInputEmoticonCatalog *currentCatalogData;
@property (nonatomic, strong) TitleDisplayCatalog *currentCatalogData;
//: @property (nonatomic, readonly)NSArray *allEmoticons;
@property (nonatomic, readonly)NSArray *allEmoticons;
//: @property (nonatomic, strong) FFFInputEmoticonTabView *tabView;
@property (nonatomic, strong) MessageControl *tabView;
//: @property (nonatomic, weak) id<NIMInputEmoticonProtocol> delegate;
@property (nonatomic, weak) id<LabelControl> delegate;
//: @property (nonatomic, weak) id<FFFSessionConfig> config;
@property (nonatomic, weak) id<ColorConfig> config;

//: @property (nonatomic,strong) UIScrollView *scrollView;
@property (nonatomic,strong) UIScrollView *scrollView;

//: @end
@end