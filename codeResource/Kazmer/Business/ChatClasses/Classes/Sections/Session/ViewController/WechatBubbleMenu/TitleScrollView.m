
#import <Foundation/Foundation.h>
typedef struct {
    Byte cationLiverStable;
    Byte *dairyFarmer;
    unsigned int colorPita;
    Byte liverFish;
	int calledCollege;
	int overtop;
	int thoughDiscoApprove;
} SignData;

NSString *StringFromSignData(SignData *data);


//: menu_copy
SignData kText_fantasticContent = (SignData){162, (Byte []){207, 199, 204, 215, 253, 193, 205, 210, 219, 43}, 9, 237, 108, 81, 110};

//: onTapMenuItemCopy:
SignData kTextComfortData = (SignData){88, (Byte []){55, 54, 12, 57, 40, 21, 61, 54, 45, 17, 44, 61, 53, 27, 55, 40, 33, 98, 146}, 18, 247, 27, 171, 68};

//: #EFFDDE
SignData kName_certainlyString = (SignData){201, (Byte []){234, 140, 143, 143, 141, 141, 140, 82}, 7, 163, 253, 188, 12};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TitleScrollView.m
//  JYImageTextCombine
//
//  Created by JackYoung on 2022/3/31.
//  Copyright © 2022 Jack Young. All rights reserved.
//

// __M_A_C_R_O__
//: #import "DisplayTextView.h"
#import "TitleScrollView.h"
//: #import "DisplayBubbleMenuView.h"
#import "ResultCuttingEdgeView.h"
//: #import "DisplayBubbleButtonModel.h"
#import "MessageTeam.h"
//: #import "AppDelegate.h"
#import "AppDelegate.h"
//: #import "DisplayMediaItem.h"
#import "CommingleItem.h"

//: @interface DisplayTextView()<UITextViewDelegate, UITextInputDelegate>
@interface TitleScrollView()<UITextViewDelegate, UITextInputDelegate>

//: @end
@end

//: @implementation DisplayTextView
@implementation TitleScrollView

//: - (void)new_genMediaButton {
- (void)albumButton {

    //: NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedAllRangeButtons = [NSMutableArray array];
    //: NSMutableArray *selectedPartRangeButtons = [NSMutableArray array];
    NSMutableArray *selectedPartRangeButtons = [NSMutableArray array];


    //: DisplayMediaItem *copy = [DisplayMediaItem item:@"onTapMenuItemCopy:"
    CommingleItem *copy = [CommingleItem garrisonName:StringFromSignData(&kTextComfortData)
                                //: normalImage:[UIImage imageNamed:@"menu_copy"]
                                heading:[UIImage imageNamed:StringFromSignData(&kText_fantasticContent)]
                              //: selectedImage:nil
                              with:nil
                                      //: title:[DisplayLanguageManager getTextWithKey:@"复制"]];
                                      item:[MakeManager cell:@"复制"]];


    //: DisplayBubbleButtonModel *model = [[DisplayBubbleButtonModel alloc] init];
    MessageTeam *model = [[MessageTeam alloc] init];
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

//: - (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange interaction:(UITextItemInteraction)interaction API_AVAILABLE(ios(10.0)) {
- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange interaction:(UITextItemInteraction)interaction API_AVAILABLE(ios(10.0)) {
    //: return YES;
    return YES;
}

//: - (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender {
    //: return NO;
    return NO;
}

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
            [self setTintColor:[UIColor cell:StringFromSignData(&kName_certainlyString)]];
        //: }else{
        }else{
            //: self.tintColor = [UIColor clearColor];
            self.tintColor = [UIColor clearColor];
        }


        //: [self addGestureRecognizer:[[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(onLongPress)]];
        [self addGestureRecognizer:[[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(boundaryTable)]];
    }
    //: return self;
    return self;
}

//: - (void)textDidChange:(nullable id <UITextInput>)textInput {
- (void)textDidChange:(nullable id <UITextInput>)textInput {

}

//: - (void)onLongPress {
- (void)boundaryTable {
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

    //: [[DisplayBubbleMenuView shareMenuView] showViewWithButtonModels:self.selectedAllRangeButtons cursorStartRect:cursorStartRectToWindow selectionTextRectInWindow:tempRect selectBlock:^(DisplayMediaItem *item) {
    [[ResultCuttingEdgeView namePrixFixe] panoramicView:self.selectedAllRangeButtons emotion:cursorStartRectToWindow timeBy:tempRect past:^(CommingleItem *item) {

        //: !_selectBlock ? : _selectBlock(item);
        !_selectBlock ? : _selectBlock(item);

        //: [self hideTextSelection];
        [self title];
        //: [DisplayBubbleMenuView.shareMenuView removeFromSuperview];
        [ResultCuttingEdgeView.namePrixFixe removeFromSuperview];

    //: } praiseBlock:^(NSInteger tag) {
    } addTogether:^(NSInteger tag) {
        //: !_praiseSelectBlock ? : _praiseSelectBlock(tag);
        !_praiseSelectBlock ? : _praiseSelectBlock(tag);

        //: [self hideTextSelection];
        [self title];
        //: [DisplayBubbleMenuView.shareMenuView removeFromSuperview];
        [ResultCuttingEdgeView.namePrixFixe removeFromSuperview];
    //: }];
    }];

}

//: - (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    //: [self hideTextSelection];
    [self title];
    //: [DisplayBubbleMenuView.shareMenuView removeFromSuperview];
    [ResultCuttingEdgeView.namePrixFixe removeFromSuperview];
    //: [super touchesEnded:touches withEvent:event];
    [super touchesEnded:touches withEvent:event];
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

//: - (void)hideTextSelection {
- (void)title {
    //: [self setSelectedRange:NSMakeRange(0, 0)];
    [self setSelectedRange:NSMakeRange(0, 0)];//去掉选择的效果。
}

//: - (void)selectionDidChange:(id<UITextInput>)textInput {
- (void)selectionDidChange:(id<UITextInput>)textInput {
    //: NSLog(@"选择区域 _end_ 变化。。。显示");
}

//: - (void)textViewDidChangeSelection:(UITextView *)textView {
- (void)textViewDidChangeSelection:(UITextView *)textView {
    //: NSLog(@"光标位置%ld——%ld",textView.selectedRange.location,textView.selectedRange.length);

//    if (textView.selectedRange.length <= 0) {
//        //隐藏
//        [[ResultCuttingEdgeView shareMenuView] removeFromSuperview];
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
//            [[ResultCuttingEdgeView shareMenuView] showViewWithButtonModels:self.selectedAllRangeButtons cursorStartRect:cursorStartRectToWindow selectionTextRectInWindow:tempRect selectBlock:^(CommingleItem *item) {
//                
//                !_selectBlock ? : _selectBlock(item);
//
//                [self hideTextSelection];
//                [ResultCuttingEdgeView.shareMenuView removeFromSuperview];
//
//            }praiseBlock:^(NSInteger tag) {
//                !_praiseSelectBlock ? : _praiseSelectBlock(tag);
//                
//                [self hideTextSelection];
//                [ResultCuttingEdgeView.shareMenuView removeFromSuperview];
//            }];
//        } else {
//            
//            [[ResultCuttingEdgeView shareMenuView] showViewWithButtonModels:self.selectedPartRangeButtons cursorStartRect:cursorStartRectToWindow selectionTextRectInWindow:tempRect selectBlock:^(CommingleItem *item) {
//                
//                !_selectBlock ? : _selectBlock(item);
//
//                [self hideTextSelection];
//                [ResultCuttingEdgeView.shareMenuView removeFromSuperview];
//                
//            }praiseBlock:^(NSInteger tag) {
//                !_praiseSelectBlock ? : _praiseSelectBlock(tag);
//                
//                [self hideTextSelection];
//                [ResultCuttingEdgeView.shareMenuView removeFromSuperview];
//            }];
//        }
//    }
}

//: - (void)textWillChange:(nullable id <UITextInput>)textInput {
- (void)textWillChange:(nullable id <UITextInput>)textInput {

}


//: - (void)genMediaButtonsWithMessage:(NIMMessage *)message {
- (void)present:(NIMMessage *)message {

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
        items = [[Mortification text].config valueDown:message];
    }
    //: else if([self.config respondsToSelector:@selector(menuItemsWithMessage:)])
    else if([self.config respondsToSelector:@selector(inputsed:)])
    {
        //: items = [self.config menuItemsWithMessage:message];
        items = [self.config inputsed:message];
    }
    //: [items enumerateObjectsUsingBlock:^(DisplayMediaItem *item, NSUInteger idx, BOOL *stop) {
    [items enumerateObjectsUsingBlock:^(CommingleItem *item, NSUInteger idx, BOOL *stop) {

        //: DisplayBubbleButtonModel *model = [[DisplayBubbleButtonModel alloc] init];
        MessageTeam *model = [[MessageTeam alloc] init];
        //: model.normalImage = item.normalImage;
        model.normalImage = item.normalImage;
        //: model.name = item.title;
        model.name = item.title;
        //: model.item = item;
        model.item = item;

        //: [selectedAllRangeButtons addObject:model];
        [selectedAllRangeButtons addObject:model];

        //: if (item.selctor == @selector(onTapMenuItemCopy:)) {
        if (item.selctor == @selector(onTapMenuItemCopy:)) {
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


//: @end
@end
//: __SAVE__ ignore_string [558.5]

Byte *SignDataToByte(SignData *data) {
    if (data->liverFish < 106) return data->dairyFarmer;
    for (int i = 0; i < data->colorPita; i++) {
        data->dairyFarmer[i] ^= data->cationLiverStable;
    }
    data->dairyFarmer[data->colorPita] = 0;
    data->liverFish = 42;
	if (data->colorPita >= 3) {
		data->calledCollege = data->dairyFarmer[0];
		data->overtop = data->dairyFarmer[1];
		data->thoughDiscoApprove = data->dairyFarmer[2];
	}
    return data->dairyFarmer;
}

NSString *StringFromSignData(SignData *data) {
    return [NSString stringWithUTF8String:(char *)SignDataToByte(data)];
}
