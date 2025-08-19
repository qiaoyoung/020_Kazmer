
#import <Foundation/Foundation.h>

@interface ScienceLabData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation ScienceLabData

+ (instancetype)sharedInstance {
    static ScienceLabData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)ScienceLabDataToCache:(Byte *)data {
    int toAGreatExtent = data[0];
    Byte pipeCrush = data[1];
    int terribly = data[2];
    for (int i = terribly; i < terribly + toAGreatExtent; i++) {
        int value = data[i] + pipeCrush;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[terribly + toAGreatExtent] = 0;
    return data + terribly;
}

- (NSString *)StringFromScienceLabData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self ScienceLabDataToCache:data]];
}

//: home_fragment_net_error
- (NSString *)k_porterStr {
    /* static */ NSString *k_porterStr = nil;
    if (!k_porterStr) {
        Byte value[] = {23, 40, 10, 208, 47, 38, 85, 209, 20, 27, 64, 71, 69, 61, 55, 62, 74, 57, 63, 69, 61, 70, 76, 55, 70, 61, 76, 55, 61, 74, 74, 71, 74, 120};
        k_porterStr = [self StringFromScienceLabData:value];
    }
    return k_porterStr;
}

//: login_activity_login_failed
- (NSString *)appCombinationText {
    /* static */ NSString *appCombinationText = nil;
    if (!appCombinationText) {
        Byte value[] = {27, 4, 11, 44, 141, 79, 132, 206, 250, 177, 71, 104, 107, 99, 101, 106, 91, 93, 95, 112, 101, 114, 101, 112, 117, 91, 104, 107, 99, 101, 106, 91, 98, 93, 101, 104, 97, 96, 244};
        appCombinationText = [self StringFromScienceLabData:value];
    }
    return appCombinationText;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  NTESSessionListHeader.m
//  NIM
//
//  Created by chris on 15/3/23.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NTESListHeader.h"
#import "ReplacementValueView.h"
//: #import "UIView+NTES.h"
#import "UIView+Zone.h"
//: #import "Reachability.h"
#import "Reachability.h"
//: #import "NTESClientUtil.h"
#import "DerivativeInstrumentColor.h"

//: @interface NTESListHeader()
@interface ReplacementValueView()

//: @end
@end


//: @implementation NTESListHeader
@implementation ReplacementValueView

//: - (void)refreshWithType:(NTESListHeaderType)type value:(id)value{
- (void)back:(NTESListHeaderType)type must:(id)value{
    //: switch (type) {
    switch (type) {
        //: case ListHeaderTypeCommonText:
        case ListHeaderTypeCommonText:
            //: [self refreshWithCommonText:value];
            [self container:value];
            //: break;
            break;
        //: case ListHeaderTypeNetStauts:
        case ListHeaderTypeNetStauts:
            //: [self refreshWithNetStatus:[value integerValue]];
            [self backsword:[value integerValue]];
            //: break;
            break;
        //: case ListHeaderTypeLoginClients:
        case ListHeaderTypeLoginClients:
            //: [self refreshWithClients:value];
            [self centre:value];
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


//: #pragma mark - Private
#pragma mark - Private
//: - (void)refreshWithClients:(NSArray *)clients{
- (void)centre:(NSArray *)clients{
    //: NSString *text = nil;
    NSString *text = nil;
    //: if (clients.count) {
    if (clients.count) {
        //目前的踢人逻辑是web和pc不能共存，移动端不能共存，所以这里取第一个显示就可以了
        //: NIMLoginClient *client = clients.firstObject;
        NIMLoginClient *client = clients.firstObject;
        //: text = [NTESClientUtil clientName:client.type];
        text = [DerivativeInstrumentColor start:client.type];

//        if (client.customClientType != 0) {
//            text = name.length? [NSString stringWithFormat:@"%@ %@（%@）",
//                                 @"正在使用密聊".ntes_localized,
//                                 name, @(client.customClientType)] : [NSString stringWithFormat:@"正在使用密聊未知版本 (%@)".ntes_localized, @(client.customClientType)];
//        } else {
//            text = name.length? [NSString stringWithFormat:@"%@ %@",
//                                 @"正在使用密聊".ntes_localized,
//                                 name] : @"正在使用密聊未知版本".ntes_localized;
//        }

    }
    //: [self addRow:ListHeaderTypeLoginClients content:text viewClassName:@"NTESMutiClientsHeaderView"];
    [self session:ListHeaderTypeLoginClients twentyFourHours:text status:@"NoticeControl"];
}


//: - (void)refreshWithNetStatus:(NIMLoginStep)step{
- (void)backsword:(NIMLoginStep)step{
    //: NSString *text = nil;
    NSString *text = nil;
    //: switch (step) {
    switch (step) {
        //: case NIMLoginStepLinkFailed:
        case NIMLoginStepLinkFailed:
        //: case NIMLoginStepLoseConnection:
        case NIMLoginStepLoseConnection:
            //: text = [FFFLanguageManager getTextWithKey:@"home_fragment_net_error"];
            text = [PaintedNaturalLanguageTo exhibit:[[ScienceLabData sharedInstance] k_porterStr]];
            //: break;
            break;
        //: case NIMLoginStepLoginFailed:
        case NIMLoginStepLoginFailed:
            //: text = [FFFLanguageManager getTextWithKey:@"login_activity_login_failed"];
            text = [PaintedNaturalLanguageTo exhibit:[[ScienceLabData sharedInstance] appCombinationText]];
            //: break;
            break;
        //: case NIMLoginStepNetChanged:
        case NIMLoginStepNetChanged:
        {
            //: if ([[Reachability reachabilityForInternetConnection] isReachable])
            if ([[Reachability reachabilityForInternetConnection] isReachable])
            {
//                text = @"网络正在切换,识别中....".ntes_localized;
            }
            //: else
            else
            {
                //: text = [FFFLanguageManager getTextWithKey:@"home_fragment_net_error"];
                text = [PaintedNaturalLanguageTo exhibit:[[ScienceLabData sharedInstance] k_porterStr]];
            }
        }
            //: break;
            break;
        //: default:
        default:
            //: break;
            break;
    }
    //: [self addRow:ListHeaderTypeNetStauts content:text viewClassName:@"NTESTextHeaderView"];
    [self session:ListHeaderTypeNetStauts twentyFourHours:text status:@"ZoneModelControl"];
}

//: - (void)refreshWithCommonText:(NSString *)text{
- (void)container:(NSString *)text{
    //: [self addRow:ListHeaderTypeCommonText content:text viewClassName:@"NTESTextHeaderView"];
    [self session:ListHeaderTypeCommonText twentyFourHours:text status:@"ZoneModelControl"];
}


//参数viewClassName的Class 必须是UIControl的子类并实现<NTESSessionListHeaderView>协议
//: - (void)addRow:(NTESListHeaderType)type content:(NSString *)content viewClassName:(NSString *)viewClassName{
- (void)session:(NTESListHeaderType)type twentyFourHours:(NSString *)content status:(NSString *)viewClassName{
    //: UIControl<NTESListHeaderView> *rowView = (UIControl<NTESListHeaderView> *)[self viewWithTag:type];
    UIControl<StackHeaderView> *rowView = (UIControl<StackHeaderView> *)[self viewWithTag:type];
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
            rowView.backgroundColor = [self menu:type];
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
            [rowView addTarget:self action:@selector(titleTing:) forControlEvents:UIControlEventTouchUpInside];
        }
        //: [rowView setContentText:content];
        [rowView setNetIncomeColor:content];
    }
    //: else
    else
    {
        //: [rowView removeFromSuperview];
        [rowView removeFromSuperview];
    }
}


//: - (void)didSelectRow:(id)sender{
- (void)titleTing:(id)sender{
    //: UIControl *view = sender;
    UIControl *view = sender;
    //: if ([self.delegate respondsToSelector:@selector(didSelectRowType:)]) {
    if ([self.delegate respondsToSelector:@selector(messageType:)]) {
        //: [self.delegate didSelectRowType:view.tag];
        [self.delegate messageType:view.tag];
    }
}


//: - (UIColor *)fillBackgroundColor:(NTESListHeaderType)type{
- (UIColor *)menu:(NTESListHeaderType)type{
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

//: @end
@end