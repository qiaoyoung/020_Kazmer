
#import <Foundation/Foundation.h>

typedef struct {
    Byte civilianHide;
    Byte *gray;
    unsigned int outside;
} StructStopGrayData;

@interface StopGrayData : NSObject

@end

@implementation StopGrayData

//: home_fragment_net_error
+ (NSString *)kName_errorData {
    /* static */ NSString *kName_errorData = nil;
    if (!kName_errorData) {
		NSString *origin = @"9c9b9991ab9286959399919a80ab9a9180ab9186869b8683";
		NSData *data = [StopGrayData StopGrayDataToData:origin];
        StructStopGrayData value = (StructStopGrayData){244, (Byte *)data.bytes, 23};
        kName_errorData = [self StringFromStopGrayData:&value];
    }
    return kName_errorData;
}

//: login_activity_login_failed
+ (NSString *)kTitleNameData {
    /* static */ NSString *kTitleNameData = nil;
    if (!kTitleNameData) {
		NSString *origin = @"080b030d0a3b0507100d120d101d3b080b030d0a3b02050d080100b2";
		NSData *data = [StopGrayData StopGrayDataToData:origin];
        StructStopGrayData value = (StructStopGrayData){100, (Byte *)data.bytes, 27};
        kTitleNameData = [self StringFromStopGrayData:&value];
    }
    return kTitleNameData;
}

+ (Byte *)StopGrayDataToByte:(StructStopGrayData *)data {
    for (int i = 0; i < data->outside; i++) {
        data->gray[i] ^= data->civilianHide;
    }
    data->gray[data->outside] = 0;
    return data->gray;
}

+ (NSData *)StopGrayDataToData:(NSString *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray array];
    for (NSUInteger i = 0; i < value.length; i += 2) {
        NSString *hex = [value substringWithRange:NSMakeRange(i, 2)];
        NSScanner *scanner = [NSScanner scannerWithString:hex];
        unsigned int num;
        if ([scanner scanHexInt:&num]) {
            [array addObject:@(num)];
        }
    }

    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] intValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (NSString *)StringFromStopGrayData:(StructStopGrayData *)data {
    return [NSString stringWithUTF8String:(char *)[self StopGrayDataToByte:data]];
}

@end   

// __DEBUG__
// __CLOSE_PRINT__
//
//  USERSessionListHeader.m
//  NIM
//
//  Created by chris on 15/3/23.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERListHeader.h"
#import "FlipRecordView.h"
//: #import "UIView+USER.h"
#import "UIView+Turn.h"
//: #import "Reachability.h"
#import "Reachability.h"
//: #import "USERClientUtil.h"
#import "ContentUtil.h"

//: @interface USERListHeader()
@interface FlipRecordView()

//: @end
@end


//: @implementation USERListHeader
@implementation FlipRecordView

//: - (void)didSelectRow:(id)sender{
- (void)colorred:(id)sender{
    //: UIControl *view = sender;
    UIControl *view = sender;
    //: if ([self.delegate respondsToSelector:@selector(didSelectRowType:)]) {
    if ([self.delegate respondsToSelector:@selector(prixFixe:)]) {
        //: [self.delegate didSelectRowType:view.tag];
        [self.delegate prixFixe:view.tag];
    }
}


//: - (UIColor *)fillBackgroundColor:(USERListHeaderType)type{
- (UIColor *)rarity:(USERListHeaderType)type{
    //: NSDictionary *dict = @{
    NSDictionary *dict = @{
                           //: @(ListHeaderTypeNetStauts) : [UIColor colorWithRed:((float)((0xFFE3E3 & 0xFF0000) >> 16))/255.0 green:((float)((0xFFE3E3 & 0x00FF00) >> 8))/255.0 blue:((float)(0xFFE3E3 & 0x0000FF))/255.0 alpha:1.0],
                           @(ListHeaderTypeNetStauts) : [UIColor colorWithRed:((float)((0xFFE3E3 & 0xFF0000) >> 16))/255.0 green:((float)((0xFFE3E3 & 0x00FF00) >> 8))/255.0 blue:((float)(0xFFE3E3 & 0x0000FF))/255.0 alpha:1.0],
                           //: @(ListHeaderTypeCommonText) : [UIColor colorWithRed:((float)((0xff6347 & 0xFF0000) >> 16))/255.0 green:((float)((0xff6347 & 0x00FF00) >> 8))/255.0 blue:((float)(0xff6347 & 0x0000FF))/255.0 alpha:1.0],
                           @(ListHeaderTypeCommonText) : [UIColor colorWithRed:((float)((0xff6347 & 0xFF0000) >> 16))/255.0 green:((float)((0xff6347 & 0x00FF00) >> 8))/255.0 blue:((float)(0xff6347 & 0x0000FF))/255.0 alpha:1.0],
                           //: @(ListHeaderTypeLoginClients) : [UIColor colorWithRed:((float)((0xff6347 & 0xFF0000) >> 16))/255.0 green:((float)((0xff6347 & 0x00FF00) >> 8))/255.0 blue:((float)(0xff6347 & 0x0000FF))/255.0 alpha:1.0]
                           @(ListHeaderTypeLoginClients) : [UIColor colorWithRed:((float)((0xff6347 & 0xFF0000) >> 16))/255.0 green:((float)((0xff6347 & 0x00FF00) >> 8))/255.0 blue:((float)(0xff6347 & 0x0000FF))/255.0 alpha:1.0]
                           //: };
                           };
    //: return dict[@(type)];
    return dict[@(type)];
}


//参数viewClassName的Class 必须是UIControl的子类并实现<USERSessionListHeaderView>协议
//: - (void)addRow:(USERListHeaderType)type content:(NSString *)content viewClassName:(NSString *)viewClassName{
- (void)shadow:(USERListHeaderType)type complete:(NSString *)content endShow:(NSString *)viewClassName{
    //: UIControl<USERListHeaderView> *rowView = (UIControl<USERListHeaderView> *)[self viewWithTag:type];
    UIControl<CuttingEdgeRowView> *rowView = (UIControl<CuttingEdgeRowView> *)[self viewWithTag:type];
    //: if ([content length])
    if ([content length])
    {
        //: if (!rowView) {
        if (!rowView) {
            //: Class clazz = NSClassFromString(viewClassName);
            Class clazz = NSClassFromString(viewClassName);
            //: rowView = [[clazz alloc] initWithFrame:CGRectMake(0, 0, self.width, 0)];
            rowView = [[clazz alloc] initWithFrame:CGRectMake(0, 0, self.width, 0)];
            //: rowView.backgroundColor = [self fillBackgroundColor:type];
            rowView.backgroundColor = [self rarity:type];
            //: __block NSInteger insert = self.subviews.count;
            __block NSInteger insert = self.subviews.count;
            //: [self.subviews enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            [self.subviews enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
                //: UIView *view = obj;
                UIView *view = obj;
                //: if (view.tag > type) {
                if (view.tag > type) {
                    //: insert = idx;
                    insert = idx;
                    //: *stop = YES;
                    *stop = YES;
                }
            //: }];
            }];
            //: rowView.tag = type;
            rowView.tag = type;
            //: [self insertSubview:rowView atIndex:insert];
            [self insertSubview:rowView atIndex:insert];
            //: [rowView addTarget:self action:@selector(didSelectRow:) forControlEvents:UIControlEventTouchUpInside];
            [rowView addTarget:self action:@selector(colorred:) forControlEvents:UIControlEventTouchUpInside];
        }
        //: [rowView setContentText:content];
        [rowView setView:content];
    }
    //: else
    else
    {
        //: [rowView removeFromSuperview];
        [rowView removeFromSuperview];
    }
}


//: - (void)refreshWithCommonText:(NSString *)text{
- (void)greenBar:(NSString *)text{
    //: [self addRow:ListHeaderTypeCommonText content:text viewClassName:@"USERTextHeaderView"];
    [self shadow:ListHeaderTypeCommonText complete:text endShow:@"PraiseControl"];
}


//: #pragma mark - Private
#pragma mark - Private
//: - (void)refreshWithClients:(NSArray *)clients{
- (void)comment:(NSArray *)clients{
    //: NSString *text = nil;
    NSString *text = nil;
    //: if (clients.count) {
    if (clients.count) {
        //目前的踢人逻辑是web和pc不能共存，移动端不能共存，所以这里取第一个显示就可以了
        //: NIMLoginClient *client = clients.firstObject;
        NIMLoginClient *client = clients.firstObject;
        //: text = [USERClientUtil clientName:client.type];
        text = [ContentUtil view:client.type];

//        if (client.customClientType != 0) {
//            text = name.length? [NSString stringWithFormat:@"%@ %@（%@）",
//                                 @"正在使用密聊".user_localized,
//                                 name, @(client.customClientType)] : [NSString stringWithFormat:@"正在使用密聊未知版本 (%@)".user_localized, @(client.customClientType)];
//        } else {
//            text = name.length? [NSString stringWithFormat:@"%@ %@",
//                                 @"正在使用密聊".user_localized,
//                                 name] : @"正在使用密聊未知版本".user_localized;
//        }

    }
    //: [self addRow:ListHeaderTypeLoginClients content:text viewClassName:@"USERMutiClientsHeaderView"];
    [self shadow:ListHeaderTypeLoginClients complete:text endShow:@"MutiDisplayPanoramicViewButton"];
}

//: - (void)refreshWithNetStatus:(NIMLoginStep)step{
- (void)upgrade:(NIMLoginStep)step{
    //: NSString *text = nil;
    NSString *text = nil;
    //: switch (step) {
    switch (step) {
        //: case NIMLoginStepLinkFailed:
        case NIMLoginStepLinkFailed:
        //: case NIMLoginStepLoseConnection:
        case NIMLoginStepLoseConnection:
            //: text = [DisplayLanguageManager getTextWithKey:@"home_fragment_net_error"];
            text = [MakeManager cell:[StopGrayData kName_errorData]];
            //: break;
            break;
        //: case NIMLoginStepLoginFailed:
        case NIMLoginStepLoginFailed:
            //: text = [DisplayLanguageManager getTextWithKey:@"login_activity_login_failed"];
            text = [MakeManager cell:[StopGrayData kTitleNameData]];
            //: break;
            break;
        //: case NIMLoginStepNetChanged:
        case NIMLoginStepNetChanged:
        {
            //: if ([[Reachability reachabilityForInternetConnection] isReachable])
            if ([[Reachability reachabilityForInternetConnection] isReachable])
            {
//                text = @"网络正在切换,识别中....".user_localized;
            }
            //: else
            else
            {
                //: text = [DisplayLanguageManager getTextWithKey:@"home_fragment_net_error"];
                text = [MakeManager cell:[StopGrayData kName_errorData]];
            }
        }
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: [self addRow:ListHeaderTypeNetStauts content:text viewClassName:@"USERTextHeaderView"];
    [self shadow:ListHeaderTypeNetStauts complete:text endShow:@"PraiseControl"];
}


//: - (void)layoutSubviews{
- (void)layoutSubviews{
    //: [super layoutSubviews];
    [super layoutSubviews];
    //: CGFloat top = 0;
    CGFloat top = 0;
    //: for (UIView *subView in self.subviews) {
    for (UIView *subView in self.subviews) {
        //: subView.top = top;
        subView.top = top;
        //: top = top + subView.height;
        top = top + subView.height;
        //: subView.centerX = self.width * .5f;
        subView.centerX = self.width * .5f;
    }
}


//: - (void)refreshWithType:(USERListHeaderType)type value:(id)value{
- (void)theKey:(USERListHeaderType)type dogTag:(id)value{
    //: switch (type) {
    switch (type) {
        //: case ListHeaderTypeCommonText:
        case ListHeaderTypeCommonText:
            //: [self refreshWithCommonText:value];
            [self greenBar:value];
            //: break;
            break;
        //: case ListHeaderTypeNetStauts:
        case ListHeaderTypeNetStauts:
            //: [self refreshWithNetStatus:[value integerValue]];
            [self upgrade:[value integerValue]];
            //: break;
            break;
        //: case ListHeaderTypeLoginClients:
        case ListHeaderTypeLoginClients:
            //: [self refreshWithClients:value];
            [self comment:value];
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: [self sizeToFit];
    [self sizeToFit];
}


//: - (CGSize)sizeThatFits:(CGSize)size{
- (CGSize)sizeThatFits:(CGSize)size{
    //: CGFloat height = 0;
    CGFloat height = 0;
    //: for (UIView *subView in self.subviews) {
    for (UIView *subView in self.subviews) {
        //: [subView sizeToFit];
        [subView sizeToFit];
        //: height += subView.height;
        height += subView.height;
    }
    //: return CGSizeMake(self.width,height);
    return CGSizeMake(self.width,height);
}

//: @end
@end
