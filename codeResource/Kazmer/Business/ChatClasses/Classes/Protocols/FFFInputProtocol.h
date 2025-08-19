// __DEBUG__
// __CLOSE_PRINT__
//
//  FFFInputProtocol.h
// ButtonKit
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>

// __M_A_C_R_O__

//: @class FFFMediaItem;
@class InfoMakeBar;


//: @protocol NIMInputActionDelegate <NSObject>
@protocol ShowKeyBar <NSObject>

//: @optional
@optional
//: - (BOOL)onTapMediaItem:(FFFMediaItem *)item;
- (BOOL)colorBlueItem:(InfoMakeBar *)item;

//: - (void)onTextChanged:(id)sender;
- (void)texted:(id)sender;

//: - (void)onSendText:(NSString *)text
- (void)time:(NSString *)text
           //: atUsers:(NSArray *)atUsers;
           possibility_strong:(NSArray *)atUsers;

//: - (void)onSelectChartlet:(NSString *)chartletId
- (void)ironed:(NSString *)chartletId
                 //: catalog:(NSString *)catalogId;
                 spacePull:(NSString *)catalogId;

//: - (void)onSendText:(NSString *)text atUsers:(NSArray *)atUsers replymessage:(NIMMessage *)replymessage;
- (void)cell:(NSString *)text information:(NSArray *)atUsers icon:(NIMMessage *)replymessage;

//: - (void)onSelectEmoticon:(id)emoticon;
- (void)view:(id)emoticon;

//: - (void)onCancelRecording;
- (void)upOn;

//: - (void)onStopRecording;
- (void)stopBy;

//: - (void)onStartRecording;
- (void)tableColor;

//: - (void)onTapMoreBtn:(id)sender;
- (void)message:(id)sender;

//: - (void)onTapEmoticonBtn:(id)sender;
- (void)images:(id)sender;

//: - (void)onTapAudioBtn:(id)sender;
- (void)doingValue:(id)sender;

//: - (void)onTapAlbunBtn:(id)sender;
- (void)infoIn:(id)sender;

//: - (void)onTapCameraBtn:(id)sender;
- (void)alonged:(id)sender;

//: - (void)didReplyCancelled;
- (void)rangeView;

//: - (void)onTapPraiseItem:(NSInteger)index withMessage:(NIMMessage *)message;
- (void)value:(NSInteger)index user:(NIMMessage *)message;

//: - (void)onTapAlbunArray:(NSArray<PHAsset *> *)assets;
- (void)starts:(NSArray<PHAsset *> *)assets;

//: @end
@end