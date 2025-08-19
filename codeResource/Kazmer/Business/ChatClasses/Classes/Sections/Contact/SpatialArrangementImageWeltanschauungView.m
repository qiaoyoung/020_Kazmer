
#import <Foundation/Foundation.h>

@interface ReducePowerData : NSObject

+ (instancetype)sharedInstance;

//: #ffffff
@property (nonatomic, copy) NSString *app_mayPath;

//: #EEEEEE
@property (nonatomic, copy) NSString *showCornerFormat;

//: #A148FF
@property (nonatomic, copy) NSString *main_removeKey;

//: contact_tag_fragment_sure
@property (nonatomic, copy) NSString *showScholarshipEndIdent;

//: icon_cell_blue_normal
@property (nonatomic, copy) NSString *mMemoryJournalismName;

@end

@implementation ReducePowerData

+ (instancetype)sharedInstance {
    static ReducePowerData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ReducePowerDataToCache:(Byte *)data {
    int increase = data[0];
    Byte preparation = data[1];
    int colorVersion = data[2];
    for (int i = colorVersion; i < colorVersion + increase; i++) {
        int value = data[i] + preparation;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[colorVersion + increase] = 0;
    return data + colorVersion;
}

- (NSString *)StringFromReducePowerData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ReducePowerDataToCache:data]];
}

//: #A148FF
- (NSString *)main_removeKey {
    if (!_main_removeKey) {
        Byte value[] = {7, 76, 4, 69, 215, 245, 229, 232, 236, 250, 250, 11};
        _main_removeKey = [self StringFromReducePowerData:value];
    }
    return _main_removeKey;
}

//: #EEEEEE
- (NSString *)showCornerFormat {
    if (!_showCornerFormat) {
        Byte value[] = {7, 93, 11, 39, 12, 195, 120, 137, 149, 86, 249, 198, 232, 232, 232, 232, 232, 232, 79};
        _showCornerFormat = [self StringFromReducePowerData:value];
    }
    return _showCornerFormat;
}

//: contact_tag_fragment_sure
- (NSString *)showScholarshipEndIdent {
    if (!_showScholarshipEndIdent) {
        Byte value[] = {25, 19, 11, 226, 27, 217, 160, 50, 5, 16, 171, 80, 92, 91, 97, 78, 80, 97, 76, 97, 78, 84, 76, 83, 95, 78, 84, 90, 82, 91, 97, 76, 96, 98, 95, 82, 70};
        _showScholarshipEndIdent = [self StringFromReducePowerData:value];
    }
    return _showScholarshipEndIdent;
}

//: icon_cell_blue_normal
- (NSString *)mMemoryJournalismName {
    if (!_mMemoryJournalismName) {
        Byte value[] = {21, 55, 13, 83, 6, 53, 23, 42, 78, 202, 2, 27, 249, 50, 44, 56, 55, 40, 44, 46, 53, 53, 40, 43, 53, 62, 46, 40, 55, 56, 59, 54, 42, 53, 217};
        _mMemoryJournalismName = [self StringFromReducePowerData:value];
    }
    return _mMemoryJournalismName;
}

//: #ffffff
- (NSString *)app_mayPath {
    if (!_app_mayPath) {
        Byte value[] = {7, 9, 6, 160, 244, 180, 26, 93, 93, 93, 93, 93, 93, 100};
        _app_mayPath = [self StringFromReducePowerData:value];
    }
    return _app_mayPath;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  SpatialArrangementImageWeltanschauungView.m
// ButtonKit
//
//  Created by chris on 15/9/15.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFContactSelectTabView.h"
#import "SpatialArrangementImageWeltanschauungView.h"
//: #import "FFFContactPickedView.h"
#import "ColorPositionView.h"
//: #import "UIViewNimKit.h"
#import "UIViewNimKit.h"
//: #import "UIImage+MyUserKit.h"
#import "UIImage+ButtonKit.h"
//: #import "FFFGlobalMacro.h"
#import "FFFGlobalMacro.h"
//: #import "MyUserKit.h"
#import "ButtonKit.h"

//: @implementation FFFContactSelectTabView
@implementation SpatialArrangementImageWeltanschauungView

//: - (instancetype)initWithFrame:(CGRect)frame{
- (instancetype)initWithFrame:(CGRect)frame{
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
        //: _pickedView = [[FFFContactPickedView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        _pickedView = [[ColorPositionView alloc] initWithFrame:CGRectMake(0, 0, 50, 50)];
        //: [self addSubview:_pickedView];
        [self addSubview:_pickedView];

        //: _doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
        _doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
        //: UIImage *doneButtonNormal = [UIImage grayImageWithName:@"icon_cell_blue_normal" color:[UIColor colorWithHexString:@"#A148FF"]];
        UIImage *doneButtonNormal = [UIImage mentalPicture:[ReducePowerData sharedInstance].mMemoryJournalismName child:[UIColor min:[ReducePowerData sharedInstance].main_removeKey]];
        //: UIImage *doneButtonHighlighted = [UIImage grayImageWithName:@"icon_cell_blue_normal" color:[UIColor colorWithHexString:@"#A148FF"]];
        UIImage *doneButtonHighlighted = [UIImage mentalPicture:[ReducePowerData sharedInstance].mMemoryJournalismName child:[UIColor min:[ReducePowerData sharedInstance].main_removeKey]];
        //: [_doneButton setBackgroundImage:doneButtonNormal forState:UIControlStateNormal];
        [_doneButton setBackgroundImage:doneButtonNormal forState:UIControlStateNormal];
        //: [_doneButton setBackgroundImage:doneButtonHighlighted forState:UIControlStateHighlighted];
        [_doneButton setBackgroundImage:doneButtonHighlighted forState:UIControlStateHighlighted];
        //: [_doneButton setTitle:[FFFLanguageManager getTextWithKey:@"contact_tag_fragment_sure"] forState:UIControlStateNormal];
        [_doneButton setTitle:[PaintedNaturalLanguageTo exhibit:[ReducePowerData sharedInstance].showScholarshipEndIdent] forState:UIControlStateNormal];
        //: [_doneButton sizeToFit];
        [_doneButton sizeToFit];
        //: _doneButton.nim_size = CGSizeMake(((doneButtonNormal.size.width) > (_doneButton.nim_width + 12.0) ? (doneButtonNormal.size.width) : (_doneButton.nim_width + 12.0)),
        _doneButton.nim_size = CGSizeMake(((doneButtonNormal.size.width) > (_doneButton.nim_width + 12.0) ? (doneButtonNormal.size.width) : (_doneButton.nim_width + 12.0)),
                                          //: doneButtonNormal.size.height);
                                          doneButtonNormal.size.height);
        //: [self addSubview:_doneButton];
        [self addSubview:_doneButton];
//        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"contact_bg"]];
        //: self.backgroundColor = [UIColor colorWithHexString:@"#ffffff"];
        self.backgroundColor = [UIColor min:[ReducePowerData sharedInstance].app_mayPath];

        //: UIView *line = [[UIView alloc]initWithFrame:CGRectMake(0, self.nim_height-1, self.nim_width, 1)];
        UIView *line = [[UIView alloc]initWithFrame:CGRectMake(0, self.nim_height-1, self.nim_width, 1)];
        //: line.backgroundColor = [UIColor colorWithHexString:@"#EEEEEE"];
        line.backgroundColor = [UIColor min:[ReducePowerData sharedInstance].showCornerFormat];
        //: [self addSubview:line];
        [self addSubview:line];
    }
    //: return self;
    return self;
}

//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat spacing = 15.f;
    CGFloat spacing = 15.f;
    //: _pickedView.nim_height = self.nim_height;
    _pickedView.nim_height = self.nim_height;
    //: _pickedView.nim_width = self.nim_width - _doneButton.nim_width - spacing;
    _pickedView.nim_width = self.nim_width - _doneButton.nim_width - spacing;
    //: CGFloat doneButtonRight = 15.f;
    CGFloat doneButtonRight = 15.f;
    //: _doneButton.nim_right = self.nim_width - doneButtonRight;
    _doneButton.nim_right = self.nim_width - doneButtonRight;
    //: _doneButton.nim_centerY = self.nim_height * .5f;
    _doneButton.nim_centerY = self.nim_height * .5f;
}

//: @end
@end