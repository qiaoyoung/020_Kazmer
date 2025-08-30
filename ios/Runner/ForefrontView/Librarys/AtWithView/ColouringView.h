// __DEBUG__
// __CLOSE_PRINT__
//
//  ColouringView.h
//  HuaxiajiaboApp
//
//  Created by HuamoMac on 15/10/10.
//  Copyright © 2015年 HuaMo. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @protocol HMDataPickerDelegate ;
@protocol CancelDelegate ;

//: @interface HMDataPicker : UIView{
@interface ColouringView : UIView{

}

//: - (id)initWithDelegate:(id<HMDataPickerDelegate>)delegate dataDict:(NSDictionary *)dataDict selectedDict:(NSDictionary *)selectedDict jsonNode:(NSString *)jsonNode;
- (id)initWithHarvestMoon:(id<CancelDelegate>)delegate rangeNode:(NSDictionary *)dataDict should:(NSDictionary *)selectedDict textNode:(NSString *)jsonNode;

//: - (void)show;
- (void)definite;

//: @end
@end


//: @protocol HMDataPickerDelegate <NSObject>
@protocol CancelDelegate <NSObject>

//: - (void)dataPicker:(HMDataPicker *)dataPicker selectedDict:(NSDictionary *)selectedDict;
- (void)limit:(ColouringView *)dataPicker table:(NSDictionary *)selectedDict;

//: @end
@end