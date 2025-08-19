// __DEBUG__
// __CLOSE_PRINT__
//
//  AttendanceDatePickerView.h
//  ProjectK
//
//  Created by beartech on 14-1-3.
//  Copyright (c) 2014年 Beartech. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: Class object_getClass(id object);
Class object_getClass(id object);

//: @protocol HMDatePickerViewDelegate;
@protocol ReplacementInfo;

//: @interface HMDatePickerView : UIView{
@interface DateTextView : UIView{
    //: UIDatePicker *datePicker;
    UIDatePicker *datePicker;
    //: UIButton *_blackBackgroundButton;
    UIButton *_blackBackgroundButton;

    //: Class delegateClass;
    Class delegateClass;
    //: __unsafe_unretained id<HMDatePickerViewDelegate> _delegate;
    __unsafe_unretained id<ReplacementInfo> _delegate;
}

//: @property (nonatomic,assign) id<HMDatePickerViewDelegate> delegate;
@property (nonatomic,assign) id<ReplacementInfo> delegate;
//: @property (nonatomic,retain) UIDatePicker *datePicker;
@property (nonatomic,retain) UIDatePicker *datePicker;
//: @property (nonatomic,retain) UIButton *blackBackgroundButton;
@property (nonatomic,retain) UIButton *blackBackgroundButton;
//: @property (nonatomic, strong) UILabel *titleL;
@property (nonatomic, strong) UILabel *titleL;
//: @property (nonatomic ,strong) NSString *titleString;
@property (nonatomic ,strong) NSString *titleString;

//: + (void)showInView:(UIView*)view delegate:(id<HMDatePickerViewDelegate>)delegate minDate:(NSDate*)minDate maxDate:(NSDate*)maxDate showDate:(NSDate*)showDate;
+ (void)duringMaxVisible:(UIView*)view inwardFrame:(id<ReplacementInfo>)delegate constituent:(NSDate*)minDate array:(NSDate*)maxDate anToday:(NSDate*)showDate;

//: + (id)showWithDelegate:(id<HMDatePickerViewDelegate>)delegate minDate:(NSDate*)minDate maxDate:(NSDate*)maxDate showDate:(NSDate*)showDate;
+ (id)show:(id<ReplacementInfo>)delegate dedicationDate:(NSDate*)minDate object:(NSDate*)maxDate pinSession:(NSDate*)showDate;

//: - (void)setDate:(NSDate*)date;
- (void)setTarget:(NSDate*)date;

//: - (void)show;
- (void)nakedOption;

//: - (void)changeDelegate:(id<HMDatePickerViewDelegate>)delegate;
- (void)viewDelegate:(id<ReplacementInfo>)delegate;

//: @end
@end


//: @protocol HMDatePickerViewDelegate <NSObject>
@protocol ReplacementInfo <NSObject>
//: @optional
@optional

//: - (void)dismissDataPickerView;
- (void)stanzaRead;
//: - (void)datePick:(HMDatePickerView *)pickView doneWithDate:(NSDate *)date;
- (void)select:(DateTextView *)pickView enableDate:(NSDate *)date;

//: @end
@end
