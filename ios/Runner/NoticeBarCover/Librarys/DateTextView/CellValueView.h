// __DEBUG__
// __CLOSE_PRINT__
//
//  CellValueView.h
//  HuaxiajiaboApp
//
//  Created by HuamoMac on 15/10/10.
//  Copyright © 2015年 HuaMo. All rights reserved.
//

// __M_A_C_R_O__
//: #import <UIKit/UIKit.h>
#import <UIKit/UIKit.h>

//: @protocol HMDataPickerDelegate ;
@protocol ToMessage ;

//: @interface HMDataPicker : UIView{
@interface CellValueView : UIView{

}

//: - (id)initWithDelegate:(id<HMDataPickerDelegate>)delegate dataDict:(NSDictionary *)dataDict selectedDict:(NSDictionary *)selectedDict jsonNode:(NSString *)jsonNode;
- (id)initWithCard:(id<ToMessage>)delegate dismiss_strong:(NSDictionary *)dataDict detect:(NSDictionary *)selectedDict field:(NSString *)jsonNode;

//: - (void)show;
- (void)referShow;

//: @end
@end


//: @protocol HMDataPickerDelegate <NSObject>
@protocol ToMessage <NSObject>

//: - (void)dataPicker:(HMDataPicker *)dataPicker selectedDict:(NSDictionary *)selectedDict;
- (void)sitting:(CellValueView *)dataPicker month:(NSDictionary *)selectedDict;

//: @end
@end