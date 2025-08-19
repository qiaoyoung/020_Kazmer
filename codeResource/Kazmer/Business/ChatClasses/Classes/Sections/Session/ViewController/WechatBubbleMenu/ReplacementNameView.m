
#import <Foundation/Foundation.h>

typedef struct {
    Byte analyse;
    Byte *regime;
    unsigned int transformationHero;
} StructLivelyData;

@interface LivelyData : NSObject

+ (instancetype)sharedInstance;

//: menu_copy
@property (nonatomic, copy) NSString *dream_tunnelTitle;

//: onTapMenuItemCopy:
@property (nonatomic, copy) NSString *appCrowdedMsg;

//: #EFFDDE
@property (nonatomic, copy) NSString *appRepairAtMayPath;

@end

@implementation LivelyData

+ (instancetype)sharedInstance {
    static LivelyData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)LivelyDataToByte:(StructLivelyData *)data {
    for (int i = 0; i < data->transformationHero; i++) {
        data->regime[i] ^= data->analyse;
    }
    data->regime[data->transformationHero] = 0;
    return data->regime;
}

- (NSString *)StringFromLivelyData:(StructLivelyData *)data {
    return [NSString stringWithUTF8String:(char *)[self LivelyDataToByte:data]];
}

//: #EFFDDE
- (NSString *)appRepairAtMayPath {
    if (!_appRepairAtMayPath) {
        StructLivelyData value = (StructLivelyData){156, (Byte []){191, 217, 218, 218, 216, 216, 217, 196}, 7};
        _appRepairAtMayPath = [self StringFromLivelyData:&value];
    }
    return _appRepairAtMayPath;
}

//: menu_copy
- (NSString *)dream_tunnelTitle {
    if (!_dream_tunnelTitle) {
        StructLivelyData value = (StructLivelyData){253, (Byte []){144, 152, 147, 136, 162, 158, 146, 141, 132, 116}, 9};
        _dream_tunnelTitle = [self StringFromLivelyData:&value];
    }
    return _dream_tunnelTitle;
}

//: onTapMenuItemCopy:
- (NSString *)appCrowdedMsg {
    if (!_appCrowdedMsg) {
        StructLivelyData value = (StructLivelyData){169, (Byte []){198, 199, 253, 200, 217, 228, 204, 199, 220, 224, 221, 204, 196, 234, 198, 217, 208, 147, 80}, 18};
        _appCrowdedMsg = [self StringFromLivelyData:&value];
    }
    return _appCrowdedMsg;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  ReplacementNameView.m
//  JYImageTextCombine
//
//  Created by JackYoung on 2022/3/31.
//  Copyright © 2022 Jack Young. All rights reserved.
//

// __M_A_C_R_O__
//: #import "FFFTextView.h"
#import "ReplacementNameView.h"
//: #import "FFFBubbleMenuView.h"
#import "BroadcastView.h"
//: #import "FFFBubbleButtonModel.h"
#import "PageCountImage.h"
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "FFFMediaItem.h"
#import "InfoMakeBar.h"

//: @interface FFFTextView()<UITextViewDelegate, UITextInputDelegate>
@interface ReplacementNameView()<UITextViewDelegate, UITextInputDelegate>

//: @end
@end

//: @implementation FFFTextView
@implementation ReplacementNameView

//: - (id)initWithFrame:(CGRect)frame {
- (id)initWithFrame:(CGRect)frame {
    //: self = [super initWithFrame:frame];
    self = [super initWithFrame:frame];
    //: if (self) {
    if (self) {
//        self.tintColor = RGB_COLOR_String(@"#EFFDDE");
        //: self.font = [UIFont systemFontOfSize:15];
        self.font = [UIFont systemFontOfSize:15];
        //: self.layer.cornerRadius = 5;
        self.layer.cornerRadius = 5;
        //: self.clipsToBounds = YES;
        self.clipsToBounds = YES;
        //: self.editable = YES;
        self.editable = YES;
        //: self.delegate = self;
        self.delegate = self;
        //: self.inputDelegate = self;
        self.inputDelegate = self;
        //: self.selectable = NO;
        self.selectable = NO;

        //: if (@available(iOS 17.0, *)) {
        if (@available(iOS 17.0, *)) {
            //: [self setTintColor:[UIColor colorWithHexString:@"#EFFDDE"]];
            [self setTintColor:[UIColor min:[LivelyData sharedInstance].appRepairAtMayPath]];
        //: }else{
        }else{
            //: self.tintColor = [UIColor clearColor];
            self.tintColor = [UIColor clearColor];
        }


        //: [self addGestureRecognizer:[[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(onLongPress)]];
        [self addGestureRecognizer:[[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(beRecord)]];
    }
    //: return self;
    return self;
}

//: - (void)onLongPress {
- (void)beRecord {
//    [self performSelector:@selector(selectAll:) withObject:nil afterDelay:0.0];

    //: CGRect startRect = [self caretRectForPosition:[self selectedTextRange].start];
    CGRect startRect = [self caretRectForPosition:[self selectedTextRange].start];
    //: CGRect endRect = [self caretRectForPosition:[self selectedTextRange].end];
    CGRect endRect = [self caretRectForPosition:[self selectedTextRange].end];

    //: CGRect resultRect = CGRectZero;
    CGRect resultRect = CGRectZero;
    //: if (startRect.origin.y == endRect.origin.y) {
    if (startRect.origin.y == endRect.origin.y) {
        //: resultRect.origin.x = startRect.origin.x;
        resultRect.origin.x = startRect.origin.x;
        //: resultRect.origin.y = startRect.origin.y;
        resultRect.origin.y = startRect.origin.y;
        //: resultRect.size.width = endRect.origin.x - startRect.origin.x + 2;
        resultRect.size.width = endRect.origin.x - startRect.origin.x + 2;
        //: resultRect.size.height = startRect.size.height;
        resultRect.size.height = startRect.size.height;
    //: } else {
    } else {
        //: resultRect.origin.x = 0;
        resultRect.origin.x = 0;
        //: resultRect.origin.y = startRect.origin.y;
        resultRect.origin.y = startRect.origin.y;
        //: resultRect.size.width = self.frame.size.width;
        resultRect.size.width = self.frame.size.width;
        //: resultRect.size.height = endRect.origin.y - startRect.origin.y + endRect.size.height;
        resultRect.size.height = endRect.origin.y - startRect.origin.y + endRect.size.height;
    }

    //: CGRect tempRect = [self convertRect:resultRect toView:((AppDelegate*)([UIApplication sharedApplication].delegate)).window];
    CGRect tempRect = [self convertRect:resultRect toView:((AppDelegate*)([UIApplication sharedApplication].delegate)).window];
    //: CGRect cursorStartRectToWindow = [self convertRect:startRect toView:((AppDelegate*)([UIApplication sharedApplication].delegate)).window];
    CGRect cursorStartRectToWindow = [self convertRect:startRect toView:((AppDelegate*)([UIApplication sharedApplication].delegate)).window];

    //: [[FFFBubbleMenuView shareMenuView] showViewWithButtonModels:self.selectedAllRangeButtons cursorStartRect:cursorStartRectToWindow selectionTextRectInWindow:tempRect selectBlock:^(FFFMediaItem *item) {
    [[BroadcastView dismissDisappear] accountIn:self.selectedAllRangeButtons openBlock:cursorStartRectToWindow queryion:tempRect bubble:^(InfoMakeBar *item) {

        //: !_selectBlock ? : _selectBlock(item);
        !_selectBlock ? : _selectBlock(item);

        //: [self hideTextSelection];
        [self overUser];
        //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
        [BroadcastView.dismissDisappear removeFromSuperview];

    //: } praiseBlock:^(NSInteger tag) {
    } show:^(NSInteger tag) {
        //: !_praiseSelectBlock ? : _praiseSelectBlock(tag);
        !_praiseSelectBlock ? : _praiseSelectBlock(tag);

        //: [self hideTextSelection];
        [self overUser];
        //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
        [BroadcastView.dismissDisappear removeFromSuperview];
    //: }];
    }];

}

//: - (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
    //: return NO;
    return NO;
}

//: - (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //: [self hideTextSelection];
    [self overUser];
    //: [FFFBubbleMenuView.shareMenuView removeFromSuperview];
    [BroadcastView.dismissDisappear removeFromSuperview];
    //: [super touchesEnded:touches withEvent:event];
    [super touchesEnded:touches withEvent:event];
}

//: - (void)hideTextSelection {
- (void)overUser {
    //: [self setSelectedRange:NSMakeRange(0, 0)];
    [self setSelectedRange:NSMakeRange(0, 0)];//去掉选择的效果。
}

//: #pragma mark delegate
#pragma mark delegate
//: -(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text
{
    //: if ([text isEqualToString:@"\n"]) {
    if ([text isEqualToString:@"\n"]) {
        //: [textView resignFirstResponder];
        [textView resignFirstResponder];
//        [self.view endEditing:true];
        //: return NO;
        return NO;
    }

    //: return true;
    return true;
}

//: - (void)selectionWillChange:(id<UITextInput>)textInput {
- (void)selectionWillChange:(id<UITextInput>)textInput {
    //: NSLog(@"选择区域 _start_ 变化。。。隐藏");
}

//: - (void)selectionDidChange:(id<UITextInput>)textInput {
- (void)selectionDidChange:(id<UITextInput>)textInput {
    //: NSLog(@"选择区域 _end_ 变化。。。显示");
}

//: - (void)textWillChange:(nullable id <UITextInput>)textInput {
- (void)textWillChange:(nullable id <UITextInput>)textInput {

}

//: - (void)textDidChange:(nullable id <UITextInput>)textInput {
- (void)textDidChange:(nullable id <UITextInput>)textInput {

}

//: - (void)textViewDidChangeSelection:(UITextView *)textView {
- (void)textViewDidChangeSelection:(UITextView *)textView {
    //: NSLog(@"光标位置%ld——%ld",textView.selectedRange.location,textView.selectedRange.length);

//    if (textView.selectedRange.length <= 0) {
//        //隐藏
//        [[BroadcastView shareMenuView] removeFromSuperview];
//        return;
//    }
//    
//    CGRect startRect = [textView caretRectForPosition:[textView selectedTextRange].start];
//    CGRect endRect = [textView caretRectForPosition:[textView selectedTextRange].end];
////    NSLog(@"__👂👂👂👂%.1f,%.1f,%.1f,%.1f",startRect.origin.x, startRect.origin.y, startRect.size.width, startRect.size.height);
////    NSLog(@"__👂👂👂👂%.1f,%.1f,%.1f,%.1f",endRect.origin.x, endRect.origin.y, endRect.size.width, endRect.size.height);
//    
//    CGRect resultRect = CGRectZero;
//    if (startRect.origin.y == endRect.origin.y) {
//        resultRect.origin.x = startRect.origin.x;
//        resultRect.origin.y = startRect.origin.y;
//        resultRect.size.width = endRect.origin.x - startRect.origin.x + 2;
//        resultRect.size.height = startRect.size.height;
//    } else {
//        resultRect.origin.x = 0;
//        resultRect.origin.y = startRect.origin.y;
//        resultRect.size.width = textView.frame.size.width;
//        resultRect.size.height = endRect.origin.y - startRect.origin.y + endRect.size.height;
//    }
//    
////    _selectedTopView.frame = resultRect;
//    
//    CGRect tempRect = [self convertRect:resultRect toView:((AppDelegate*)([UIApplication sharedApplication].delegate)).window];
//    CGRect cursorStartRectToWindow = [self convertRect:startRect toView:((AppDelegate*)([UIApplication sharedApplication].delegate)).window];
//        
//    if (textView.selectedRange.length > 0) {
//        //全部选中的时候内容显示的不一样。
//        if (textView.selectedRange.length == textView.text.length) {
//            
//            [[BroadcastView shareMenuView] showViewWithButtonModels:self.selectedAllRangeButtons cursorStartRect:cursorStartRectToWindow selectionTextRectInWindow:tempRect selectBlock:^(InfoMakeBar *item) {
//                
//                !_selectBlock ? : _selectBlock(item);
//
//                [self hideTextSelection];
//                [BroadcastView.shareMenuView removeFromSuperview];
//
//            }praiseBlock:^(NSInteger tag) {
//                !_praiseSelectBlock ? : _praiseSelectBlock(tag);
//                
//                [self hideTextSelection];
//                [BroadcastView.shareMenuView removeFromSuperview];
//            }];
//        } else {
//            
//            [[BroadcastView shareMenuView] showViewWithButtonModels:self.selectedPartRangeButtons cursorStartRect:cursorStartRectToWindow selectionTextRectInWindow:tempRect selectBlock:^(InfoMakeBar *item) {
//                
//                !_selectBlock ? : _selectBlock(item);
//
//                [self hideTextSelection];
//                [BroadcastView.shareMenuView removeFromSuperview];
//                
//            }praiseBlock:^(NSInteger tag) {
//                !_praiseSelectBlock ? : _praiseSelectBlock(tag);
//                
//                [self hideTextSelection];
//                [BroadcastView.shareMenuView removeFromSuperview];
//            }];
//        }
//    }
}

//: - (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange interaction:(UITextItemInteraction)interaction API_AVAILABLE(ios(10.0)) {
- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange interaction:(UITextItemInteraction)interaction API_AVAILABLE(ios(10.0)) {
    //: return YES;
    return YES;
}

//: - (void)genMediaButtonsWithMessage:(NIMMessage *)message {
- (void)image:(NIMMessage *)message {

    //: NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    //: NSMutableArray *selectedPartRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedPartRangeButtons = [NSMutableArray array];

    //: NSArray *items;
    NSArray *items;
    //: if (!self.config)
    if (!self.config)
    {
        //: items = [[MyUserKit sharedKit].config defaultMenuItemsWithMessage:message];
        items = [[ButtonKit sheerOption].config name:message];
    }
    //: else if([self.config respondsToSelector:@selector(menuItemsWithMessage:)])
    else if([self.config respondsToSelector:@selector(tableOfTextsToInscription:)])
    {
        //: items = [self.config menuItemsWithMessage:message];
        items = [self.config tableOfTextsToInscription:message];
    }
    //: [items enumerateObjectsUsingBlock:^(FFFMediaItem *item, NSUInteger idx, BOOL *stop) {
    [items enumerateObjectsUsingBlock:^(InfoMakeBar *item, NSUInteger idx, BOOL *stop) {

        //: FFFBubbleButtonModel *model = [[FFFBubbleButtonModel alloc] init];
        PageCountImage *model = [[PageCountImage alloc] init];
        //: model.normalImage = item.normalImage;
        model.normalImage = item.normalImage;
        //: model.name = item.title;
        model.name = item.title;
        //: model.item = item;
        model.item = item;

        //: [selectedAllRangeButtons addObject:model];
        [selectedAllRangeButtons addObject:model];

        //: if (item.selctor == @selector(onTapMenuItemCopy:)) {
        if (item.selctor == @selector(substancing:)) {
            //: [selectedPartRangeButtons addObject:model];
            [selectedPartRangeButtons addObject:model];
        }
    //: }];
    }];

    //: self.selectedAllRangeButtons = selectedAllRangeButtons;
    self.selectedAllRangeButtons = selectedAllRangeButtons;
    //: self.selectedPartRangeButtons = selectedPartRangeButtons;
    self.selectedPartRangeButtons = selectedPartRangeButtons;

}


//: - (void)new_genMediaButton {
- (void)ondSession {

    //: NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    //: NSMutableArray *selectedPartRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedPartRangeButtons = [NSMutableArray array];


    //: FFFMediaItem *copy = [FFFMediaItem item:@"onTapMenuItemCopy:"
    InfoMakeBar *copy = [InfoMakeBar icon:[LivelyData sharedInstance].appCrowdedMsg
                                //: normalImage:[UIImage imageNamed:@"menu_copy"]
                                message:[UIImage imageNamed:[LivelyData sharedInstance].dream_tunnelTitle]
                              //: selectedImage:nil
                              name:nil
                                      //: title:[FFFLanguageManager getTextWithKey:@"复制"]];
                                      sub:[PaintedNaturalLanguageTo exhibit:@"复制"]];


    //: FFFBubbleButtonModel *model = [[FFFBubbleButtonModel alloc] init];
    PageCountImage *model = [[PageCountImage alloc] init];
    //: model.normalImage = copy.normalImage;
    model.normalImage = copy.normalImage;
    //: model.name = copy.title;
    model.name = copy.title;
    //: model.item = copy;
    model.item = copy;

    //: [selectedAllRangeButtons addObject:model];
    [selectedAllRangeButtons addObject:model];
    //: [selectedPartRangeButtons addObject:model];
    [selectedPartRangeButtons addObject:model];

    //: self.selectedAllRangeButtons = selectedAllRangeButtons;
    self.selectedAllRangeButtons = selectedAllRangeButtons;
    //: self.selectedPartRangeButtons = selectedPartRangeButtons;
    self.selectedPartRangeButtons = selectedPartRangeButtons;

}


//: @end
@end