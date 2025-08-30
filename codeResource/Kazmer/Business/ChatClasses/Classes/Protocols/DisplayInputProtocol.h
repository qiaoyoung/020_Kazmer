// __DEBUG__
// __CLOSE_PRINT__
//
//  DisplayInputProtocol.h
// Mortification
//
//  Created by chris.
//  Copyright (c) 2015年 NetEase. All rights reserved.
//
//: #import <Foundation/Foundation.h>
#import <Foundation/Foundation.h>
//: #import <Photos/Photos.h>
#import <Photos/Photos.h>

// __M_A_C_R_O__

//: @class DisplayMediaItem;
@class CommingleItem;


//: @protocol NIMInputActionDelegate <NSObject>
@protocol PullDelegate <NSObject>

//: @optional
@optional
//: - (BOOL)onTapMediaItem:(DisplayMediaItem *)item;
- (BOOL)messageTable:(CommingleItem *)item;

//: - (void)onTextChanged:(id)sender;
- (void)oning:(id)sender;

//: - (void)onSendText:(NSString *)text
- (void)start:(NSString *)text
           //: atUsers:(NSArray *)atUsers;
           comment_strong:(NSArray *)atUsers;

//: - (void)onSelectChartlet:(NSString *)chartletId
- (void)successTing:(NSString *)chartletId
                 //: catalog:(NSString *)catalogId;
                 dedication:(NSString *)catalogId;

//: - (void)onSendText:(NSString *)text atUsers:(NSArray *)atUsers replymessage:(NIMMessage *)replymessage;
- (void)content:(NSString *)text can:(NSArray *)atUsers video:(NIMMessage *)replymessage;

//: - (void)onSelectEmoticon:(id)emoticon;
- (void)showEmoticon:(id)emoticon;

//: - (void)onCancelRecording;
- (void)magnitudePress;

//: - (void)onStopRecording;
- (void)recordingSession;

//: - (void)onStartRecording;
- (void)bedFor;

//: - (void)onTapMoreBtn:(id)sender;
- (void)paradigm:(id)sender;

//: - (void)onTapEmoticonBtn:(id)sender;
- (void)arrowShow:(id)sender;

//: - (void)onTapAudioBtn:(id)sender;
- (void)verticals:(id)sender;

//: - (void)onTapAlbunBtn:(id)sender;
- (void)alonged:(id)sender;

//: - (void)onTapCameraBtn:(id)sender;
- (void)valueDisable:(id)sender;

//: - (void)didReplyCancelled;
- (void)menuMessage;

//: - (void)onTapPraiseItem:(NSInteger)index withMessage:(NIMMessage *)message;
- (void)clickMessage:(NSInteger)index doStandardMessage:(NIMMessage *)message;

//: - (void)onTapAlbunArray:(NSArray<PHAsset *> *)assets;
- (void)contenting:(NSArray<PHAsset *> *)assets;

//: @end
@end
