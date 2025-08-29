
#import <Foundation/Foundation.h>

@interface MeaningData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation MeaningData

+ (instancetype)sharedInstance {
    static MeaningData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSData *)MeaningDataToData:(NSString *)value {
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

- (Byte *)MeaningDataToCache:(Byte *)data {
    int surely = data[0];
    Byte approveBoar = data[1];
    int gasPopularity = data[2];
    for (int i = gasPopularity; i < gasPopularity + surely; i++) {
        int value = data[i] - approveBoar;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[gasPopularity + surely] = 0;
    return data + gasPopularity;
}

- (NSString *)StringFromMeaningData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self MeaningDataToCache:data]];
}

//: videochat_video_encode_max_kbps
- (NSString *)kContent_fileTextName {
    /* static */ NSString *kContent_fileTextName = nil;
    if (!kContent_fileTextName) {
		NSString *origin = @"1f540666dde6cabdb8b9c3b7bcb5c8b3cabdb8b9c3b3b9c2b7c3b8b9b3c1b5ccb3bfb6c4c79f";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_fileTextName = [self StringFromMeaningData:value];
    }
    return kContent_fileTextName;
}

//: server_record_host
- (NSString *)kText_handsomeData {
    /* static */ NSString *kText_handsomeData = nil;
    if (!kText_handsomeData) {
		NSString *origin = @"123d03b0a2afb3a2af9cafa2a0acafa19ca5acb0b1fb";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_handsomeData = [self StringFromMeaningData:value];
    }
    return kText_handsomeData;
}

//: server_record_mode
- (NSString *)kTitleDetailData {
    /* static */ NSString *kTitleDetailData = nil;
    if (!kTitleDetailData) {
		NSString *origin = @"121106c8078184768387768370837674808375707e807576c2";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleDetailData = [self StringFromMeaningData:value];
    }
    return kTitleDetailData;
}

//: videochat_auto_disable_audiosession
- (NSString *)kName_mysteryComfortQuestString {
    /* static */ NSString *kName_mysteryComfortQuestString = nil;
    if (!kName_mysteryComfortQuestString) {
		NSString *origin = @"230e04f3847772737d71766f826d6f83827d6d7277816f707a736d6f8372777d81738181777d7cfb";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_mysteryComfortQuestString = [self StringFromMeaningData:value];
    }
    return kName_mysteryComfortQuestString;
}

//: menu_delete_msg_from_db
- (NSString *)kNameHerbProductiveValue {
    /* static */ NSString *kNameHerbProductiveValue = nil;
    if (!kNameHerbProductiveValue) {
		NSString *origin = @"17420480afa7b0b7a1a6a7aea7b6a7a1afb5a9a1a8b4b1afa1a6a455";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameHerbProductiveValue = [self StringFromMeaningData:value];
    }
    return kNameHerbProductiveValue;
}

//: socks5_type
- (NSString *)kTitleCombatWrapValue {
    /* static */ NSString *kTitleCombatWrapValue = nil;
    if (!kTitleCombatWrapValue) {
		NSString *origin = @"0b06040679756971793b657a7f766b60";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleCombatWrapValue = [self StringFromMeaningData:value];
    }
    return kTitleCombatWrapValue;
}

//: custom_apns_content_type
- (NSString *)kTextRentalGoodValue {
    /* static */ NSString *kTextRentalGoodValue = nil;
    if (!kTextRentalGoodValue) {
		NSString *origin = @"186108951f17e56cc4d6d4d5d0cec0c2d1cfd4c0c4d0cfd5c6cfd5c0d5dad1c6f3";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextRentalGoodValue = [self StringFromMeaningData:value];
    }
    return kTextRentalGoodValue;
}

//: auto_fetch_attachment
- (NSString *)kTextRetiredArrestValue {
    /* static */ NSString *kTextRetiredArrestValue = nil;
    if (!kTextRetiredArrestValue) {
		NSString *origin = @"1510037185847f6f76758473786f7184847173787d757e8455";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextRetiredArrestValue = [self StringFromMeaningData:value];
    }
    return kTextRetiredArrestValue;
}

//: nim_sym_crypto_type
- (NSString *)kTextBasisString {
    /* static */ NSString *kTextBasisString = nil;
    if (!kTextBasisString) {
		NSString *origin = @"130e068e66747c777b6d81877b6d7180877e827d6d82877e7302";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextBasisString = [self StringFromMeaningData:value];
    }
    return kTextBasisString;
}

//: socks5_password
- (NSString *)kTextComfortString {
    /* static */ NSString *kTextComfortString = nil;
    if (!kTextComfortString) {
		NSString *origin = @"0f5804bdcbc7bbc3cb8db7c8b9cbcbcfc7cabc34";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextComfortString = [self StringFromMeaningData:value];
    }
    return kTextComfortString;
}

//: animated_image_thumbnail_enabled
- (NSString *)kNameScripTwistData {
    /* static */ NSString *kNameScripTwistData = nil;
    if (!kNameScripTwistData) {
		NSString *origin = @"20290d3062bd79fb8501127a468a9792968a9d8e8d8892968a908e889d919e968b978a9295888e978a8b958e8d92";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameScripTwistData = [self StringFromMeaningData:value];
    }
    return kNameScripTwistData;
}

//: bundle
- (NSString *)kTitle_artiString {
    /* static */ NSString *kTitle_artiString = nil;
    if (!kTitle_artiString) {
		NSString *origin = @"064e09c8ef52a28121b0c3bcb2bab338";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_artiString = [self StringFromMeaningData:value];
    }
    return kTitle_artiString;
}

//: socks5_addr
- (NSString *)kContent_lamString {
    /* static */ NSString *kContent_lamString = nil;
    if (!kContent_lamString) {
		NSString *origin = @"0b160b1eb5681aedc42ad689857981894b75777a7a8807";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_lamString = [self StringFromMeaningData:value];
    }
    return kContent_lamString;
}

//: auto_remove_remote_session
- (NSString *)kNameDeployData {
    /* static */ NSString *kNameDeployData = nil;
    if (!kNameDeployData) {
		NSString *origin = @"1a4803a9bdbcb7a7baadb5b7beada7baadb5b7bcada7bbadbbbbb1b7b653";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameDeployData = [self StringFromMeaningData:value];
    }
    return kNameDeployData;
}

//: local_search_time_order_desc
- (NSString *)kTitleHospitalSellerValue {
    /* static */ NSString *kTitleHospitalSellerValue = nil;
    if (!kTitleHospitalSellerValue) {
		NSString *origin = @"1c360dac71fc081438b6048110a2a59997a295a99b97a8999e95aa9fa39b95a5a89a9ba8959a9ba9998c";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleHospitalSellerValue = [self StringFromMeaningData:value];
    }
    return kTitleHospitalSellerValue;
}

//: add_friend_need_verify
- (NSString *)kContentPaleString {
    /* static */ NSString *kContentPaleString = nil;
    if (!kContentPaleString) {
		NSString *origin = @"16050cd690ae1f94f39f098a666969646b776e6a736964736a6a69647b6a776e6b7e0a";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentPaleString = [self StringFromMeaningData:value];
    }
    return kContentPaleString;
}

//: disable_proxmity_monitor
- (NSString *)kNameLeadingString {
    /* static */ NSString *kNameLeadingString = nil;
    if (!kNameLeadingString) {
		NSString *origin = @"18630c1728abb5c6fc1bd662c7ccd6c4c5cfc8c2d3d5d2dbd0ccd7dcc2d0d2d1ccd7d2d590";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameLeadingString = [self StringFromMeaningData:value];
    }
    return kNameLeadingString;
}

//: PreferenceSpecifiers
- (NSString *)kTitle_harassmentString {
    /* static */ NSString *kTitle_harassmentString = nil;
    if (!kTitle_harassmentString) {
		NSString *origin = @"140f0da2f8b5abaf42e73ac6b95f8174757481747d7274627f7472787578748182ba";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_harassmentString = [self StringFromMeaningData:value];
    }
    return kTitle_harassmentString;
}

//: disable_audio_session_reset
- (NSString *)kContentLessValue {
    /* static */ NSString *kContentLessValue = nil;
    if (!kContentLessValue) {
		NSString *origin = @"1b5804f1bcc1cbb9bac4bdb7b9cdbcc1c7b7cbbdcbcbc1c7c6b7cabdcbbdcc4f";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentLessValue = [self StringFromMeaningData:value];
    }
    return kContentLessValue;
}

//: enable_sdk_video_render
- (NSString *)kTitle_immigrantName {
    /* static */ NSString *kTitle_immigrantName = nil;
    if (!kTitle_immigrantName) {
		NSString *origin = @"1737080c0d757a169ca59899a39c96aa9ba296ada09b9ca696a99ca59b9ca93f";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_immigrantName = [self StringFromMeaningData:value];
    }
    return kTitle_immigrantName;
}

//: use_rts_socks5
- (NSString *)kTitle_proudValue {
    /* static */ NSString *kTitle_proudValue = nil;
    if (!kTitle_proudValue) {
		NSString *origin = @"0e0c06fdf41f817f716b7e807f6b7f7b6f777f41dc";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_proudValue = [self StringFromMeaningData:value];
    }
    return kTitle_proudValue;
}

//: ipv6_default_link
- (NSString *)kName_standardContent {
    /* static */ NSString *kName_standardContent = nil;
    if (!kName_standardContent) {
		NSString *origin = @"11430d6ba359e10442b6dcd36dacb3b979a2a7a8a9a4b8afb7a2afacb1aea1";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_standardContent = [self StringFromMeaningData:value];
    }
    return kName_standardContent;
}

//: enable_rotate
- (NSString *)kNameSateFistData {
    /* static */ NSString *kNameSateFistData = nil;
    if (!kNameSateFistData) {
		NSString *origin = @"0d3c0786e22e47a1aa9d9ea8a19baeabb09db0a140";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameSateFistData = [self StringFromMeaningData:value];
    }
    return kNameSateFistData;
}

//: count_team_notification
- (NSString *)kContentLoreName {
    /* static */ NSString *kContentLoreName = nil;
    if (!kContentLoreName) {
		NSString *origin = @"1709093363f4c14e2d6c787e777d687d6e6a766877787d726f726c6a7d72787786";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentLoreName = [self StringFromMeaningData:value];
    }
    return kContentLoreName;
}

//: enable_sync_stick_top_session
- (NSString *)kTextBasisValue {
    /* static */ NSString *kTextBasisValue = nil;
    if (!kTextBasisValue) {
		NSString *origin = @"1d190c15e6c4f3263077c3fa7e877a7b857e788c92877c788c8d827c84788d8889788c7e8c8c8288873a";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextBasisValue = [self StringFromMeaningData:value];
    }
    return kTextBasisValue;
}

//: sync_when_remote_fetch_messages
- (NSString *)kName_harassmentValue {
    /* static */ NSString *kName_harassmentValue = nil;
    if (!kName_harassmentValue) {
		NSString *origin = @"1f5a0648d9c7cdd3c8bdb9d1c2bfc8b9ccbfc7c9cebfb9c0bfcebdc2b9c7bfcdcdbbc1bfcd7c";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_harassmentValue = [self StringFromMeaningData:value];
    }
    return kName_harassmentValue;
}

//: videochat_prefer_hd_audio
- (NSString *)kContentReceptionData {
    /* static */ NSString *kContentReceptionData = nil;
    if (!kContentReceptionData) {
		NSString *origin = @"193808bde3c8b4ccaea19c9da79ba099ac97a8aa9d9e9daa97a09c9799ad9ca1a71e";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentReceptionData = [self StringFromMeaningData:value];
    }
    return kContentReceptionData;
}

//: nim_link_address_type
- (NSString *)kText_screwPackValue {
    /* static */ NSString *kText_screwPackValue = nil;
    if (!kText_screwPackValue) {
		NSString *origin = @"15400afc020112d5ae12aea9ad9faca9aeab9fa1a4a4b2a5b3b39fb4b9b0a505";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_screwPackValue = [self StringFromMeaningData:value];
    }
    return kText_screwPackValue;
}

//: server_record_whiteboard_data
- (NSString *)kText_knifeString {
    /* static */ NSString *kText_knifeString = nil;
    if (!kText_knifeString) {
		NSString *origin = @"1d0a037d6f7c806f7c697c6f6d797c6e698172737e6f6c796b7c6e696e6b7e6b05";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_knifeString = [self StringFromMeaningData:value];
    }
    return kText_knifeString;
}

//: rts_socks5_addr
- (NSString *)kContent_riceSenWithName {
    /* static */ NSString *kContent_riceSenWithName = nil;
    if (!kContent_riceSenWithName) {
		NSString *origin = @"0f2f03a1a3a28ea29e929aa2648e909393a121";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_riceSenWithName = [self StringFromMeaningData:value];
    }
    return kContent_riceSenWithName;
}

//: videochat_auto_rotate_remote_video
- (NSString *)kTitleBeginValue {
    /* static */ NSString *kTitleBeginValue = nil;
    if (!kTitleBeginValue) {
		NSString *origin = @"22210da2d164ae6cf2b1c911de978a858690848982958082969590809390958295868093868e90958680978a85869091";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleBeginValue = [self StringFromMeaningData:value];
    }
    return kTitleBeginValue;
}

//: ignore_team_types
- (NSString *)kTitleRentalName {
    /* static */ NSString *kTitleRentalName = nil;
    if (!kTitleRentalName) {
		NSString *origin = @"111807bbc63df5817f86878a7d778c7d7985778c91887d8b52";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleRentalName = [self StringFromMeaningData:value];
    }
    return kTitleRentalName;
}

//: tester_recent_session_most_enable
- (NSString *)kNameSearcherData {
    /* static */ NSString *kNameSearcherData = nil;
    if (!kNameSearcherData) {
		NSString *origin = @"2119092f2ee179479f8d7e8c8d7e8b788b7e7c7e878d788c7e8c8c8288877886888c8d787e877a7b857e2a";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameSearcherData = [self StringFromMeaningData:value];
    }
    return kNameSearcherData;
}

//: rts_socks5_username
- (NSString *)kTitle_thousandTextString {
    /* static */ NSString *kTitle_thousandTextString = nil;
    if (!kTitle_thousandTextString) {
		NSString *origin = @"132d0dc8c886b0cbe85a46e40b9fa1a08ca09c9098a0628ca2a0929f9b8e9a9229";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_thousandTextString = [self StringFromMeaningData:value];
    }
    return kTitle_thousandTextString;
}

//: server_record_audio
- (NSString *)kTitleImprovementString {
    /* static */ NSString *kTitleImprovementString = nil;
    if (!kTitleImprovementString) {
		NSString *origin = @"13360ada1cbf98e838cda99ba8ac9ba895a89b99a5a89a9597ab9a9fa5c8";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleImprovementString = [self StringFromMeaningData:value];
    }
    return kTitleImprovementString;
}

//: videochat_remote_video_content_mode
- (NSString *)kText_diagnoseOutdoorValue {
    /* static */ NSString *kText_diagnoseOutdoorValue = nil;
    if (!kText_diagnoseOutdoorValue) {
		NSString *origin = @"23470b7b097ce22bd75553bdb0abacb6aaafa8bba6b9acb4b6bbaca6bdb0abacb6a6aab6b5bbacb5bba6b4b6abac07";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_diagnoseOutdoorValue = [self StringFromMeaningData:value];
    }
    return kText_diagnoseOutdoorValue;
}

//: nim_asym_crypto_type
- (NSString *)kNamePrelimValue {
    /* static */ NSString *kNamePrelimValue = nil;
    if (!kNamePrelimValue) {
		NSString *origin = @"143f066bb990ada8ac9ea0b2b8ac9ea2b1b8afb3ae9eb3b8afa4d8";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNamePrelimValue = [self StringFromMeaningData:value];
    }
    return kNamePrelimValue;
}

//: videochat_local_record_video_kbps
- (NSString *)kContentPromptString {
    /* static */ NSString *kContentPromptString = nil;
    if (!kContentPromptString) {
		NSString *origin = @"211c0d7369bc4f1c516bfab2ce928580818b7f847d907b888b7f7d887b8e817f8b8e807b928580818b7b877e8c8f3a";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentPromptString = [self StringFromMeaningData:value];
    }
    return kContentPromptString;
}

//: enable_revoke_msg_ps
- (NSString *)kNameRuralPullValue {
    /* static */ NSString *kNameRuralPullValue = nil;
    if (!kNameRuralPullValue) {
		NSString *origin = @"144b0a5862faaa22ece6b0b9acadb7b0aabdb0c1bab6b0aab8beb2aabbbeb2";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameRuralPullValue = [self StringFromMeaningData:value];
    }
    return kNameRuralPullValue;
}

//: enabled_drop_msg_table
- (NSString *)kTextJobValue {
    /* static */ NSString *kTextJobValue = nil;
    if (!kTextJobValue) {
		NSString *origin = @"163a082a8bbb59419fa89b9ca69f9e999eaca9aa99a7ada199ae9b9ca69f5f";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextJobValue = [self StringFromMeaningData:value];
    }
    return kTextJobValue;
}

//: using_amr
- (NSString *)kTitleSurvivorData {
    /* static */ NSString *kTitleSurvivorData = nil;
    if (!kTitleSurvivorData) {
		NSString *origin = @"09590d652fa3f483a09fe3c487ceccc2c7c0b8bac6cb8a";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleSurvivorData = [self StringFromMeaningData:value];
    }
    return kTitleSurvivorData;
}

//: videochat_audio_denoise
- (NSString *)kContent_fieData {
    /* static */ NSString *kContent_fieData = nil;
    if (!kContent_fieData) {
		NSString *origin = @"17610b556038ca58be29c7d7cac5c6d0c4c9c2d5c0c2d6c5cad0c0c5c6cfd0cad4c662";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_fieData = [self StringFromMeaningData:value];
    }
    return kContent_fieData;
}

//: DefaultValue
- (NSString *)kNameBothData {
    /* static */ NSString *kNameBothData = nil;
    if (!kNameBothData) {
		NSString *origin = @"0c110aec32129ae3ec6255767772867d8567727d867658";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameBothData = [self StringFromMeaningData:value];
    }
    return kNameBothData;
}

//: show_fps_for_app
- (NSString *)kText_cellLungContent {
    /* static */ NSString *kText_cellLungContent = nil;
    if (!kText_cellLungContent) {
		NSString *origin = @"10560b5527d452b40d79bfc9bec5cdb5bcc6c9b5bcc5c8b5b7c6c685";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_cellLungContent = [self StringFromMeaningData:value];
    }
    return kText_cellLungContent;
}

//: enable_apns_prefix
- (NSString *)kContentHideGrateTitle {
    /* static */ NSString *kContentHideGrateTitle = nil;
    if (!kContentHideGrateTitle) {
		NSString *origin = @"12560b789cf61b81bd666fbbc4b7b8c2bbb5b7c6c4c9b5c6c8bbbcbfce2f";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentHideGrateTitle = [self StringFromMeaningData:value];
    }
    return kContentHideGrateTitle;
}

//: rts_socks5_type
- (NSString *)kTitleBeginThereString {
    /* static */ NSString *kTitleBeginThereString = nil;
    if (!kTitleBeginThereString) {
		NSString *origin = @"0f4b099d6f5b7e044cbdbfbeaabebaaeb6be80aabfc4bbb0cb";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleBeginThereString = [self StringFromMeaningData:value];
    }
    return kTitleBeginThereString;
}

//: rts_socks5_password
- (NSString *)kContent_operaValue {
    /* static */ NSString *kContent_operaValue = nil;
    if (!kContent_operaValue) {
		NSString *origin = @"136005fec8d2d4d3bfd3cfc3cbd395bfd0c1d3d3d7cfd2c4d0";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_operaValue = [self StringFromMeaningData:value];
    }
    return kContent_operaValue;
}

//: maximum_log_days
- (NSString *)kTextOverallString {
    /* static */ NSString *kTextOverallString = nil;
    if (!kTextOverallString) {
		NSString *origin = @"102f044d9c90a7989ca49c8e9b9e968e9390a8a2e6";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextOverallString = [self StringFromMeaningData:value];
    }
    return kTextOverallString;
}

//: socks5
- (NSString *)kName_milkCollegeValue {
    /* static */ NSString *kName_milkCollegeValue = nil;
    if (!kName_milkCollegeValue) {
		NSString *origin = @"0622067b7b389591858d95576f";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_milkCollegeValue = [self StringFromMeaningData:value];
    }
    return kName_milkCollegeValue;
}

//: enabled_remove_recent_session
- (NSString *)kTitle_stopName {
    /* static */ NSString *kTitle_stopName = nil;
    if (!kTitle_stopName) {
		NSString *origin = @"1d200733bc7aff858e81828c85847f92858d8f96857f928583858e947f93859393898f8e50";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_stopName = [self StringFromMeaningData:value];
    }
    return kTitle_stopName;
}

//: auto_remove_alias
- (NSString *)kTitleAlsoData {
    /* static */ NSString *kTitleAlsoData = nil;
    if (!kTitleAlsoData) {
		NSString *origin = @"115b0c6a4317ffbd38e34790bcd0cfcabacdc0c8cad1c0babcc7c4bcce5c";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleAlsoData = [self StringFromMeaningData:value];
    }
    return kTitleAlsoData;
}

//: socks5_username
- (NSString *)kNameSoulContent {
    /* static */ NSString *kNameSoulContent = nil;
    if (!kNameSoulContent) {
		NSString *origin = @"0f370cae5fbfa1f1ee49547daaa69aa2aa6c96acaa9ca9a598a49cf5";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameSoulContent = [self StringFromMeaningData:value];
    }
    return kNameSoulContent;
}

//: Settings
- (NSString *)kTitleNutText {
    /* static */ NSString *kTitleNutText = nil;
    if (!kTitleNutText) {
		NSString *origin = @"0816082dc34cddb6697b8a8a7f847d89cd";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleNutText = [self StringFromMeaningData:value];
    }
    return kTitleNutText;
}

//: auto_remove_snap_message
- (NSString *)kTitle_tollString {
    /* static */ NSString *kTitle_tollString = nil;
    if (!kTitle_tollString) {
		NSString *origin = @"186209108b1d0d909cc3d7d6d1c1d4c7cfd1d8c7c1d5d0c3d2c1cfc7d5d5c3c9c7f4";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_tollString = [self StringFromMeaningData:value];
    }
    return kTitle_tollString;
}

//: videochat_start_with_back_camera
- (NSString *)kName_discriminationString {
    /* static */ NSString *kName_discriminationString = nil;
    if (!kName_discriminationString) {
		NSString *origin = @"20090cee293107f51c59174a7f726d6e786c716a7d687c7d6a7b7d6880727d71686b6a6c74686c6a766e7b6a89";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_discriminationString = [self StringFromMeaningData:value];
    }
    return kName_discriminationString;
}

//: chatroom_enter_retry_count
- (NSString *)kTitle_rakeString {
    /* static */ NSString *kTitle_rakeString = nil;
    if (!kTitle_rakeString) {
		NSString *origin = @"1a060dec5ea496d69d0691f8a5696e677a78757573656b747a6b7865786b7a787f6569757b747a53";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_rakeString = [self StringFromMeaningData:value];
    }
    return kTitle_rakeString;
}

//: custom_client_type
- (NSString *)kText_errorName {
    /* static */ NSString *kText_errorName = nil;
    if (!kText_errorName) {
		NSString *origin = @"12610aaaa92b6cb3fbd4c4d6d4d5d0cec0c4cdcac6cfd5c0d5dad1c601";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_errorName = [self StringFromMeaningData:value];
    }
    return kText_errorName;
}

//: server_record_video
- (NSString *)kName_compareString {
    /* static */ NSString *kName_compareString = nil;
    if (!kName_compareString) {
		NSString *origin = @"13190d2345bfc9ca8a3fff688c8c7e8b8f7e8b788b7e7c888b7d788f827d7e8831";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_compareString = [self StringFromMeaningData:value];
    }
    return kName_compareString;
}

//: enable_revoke_count
- (NSString *)kTitlePrivacyString {
    /* static */ NSString *kTitlePrivacyString = nil;
    if (!kTitlePrivacyString) {
		NSString *origin = @"1315090a354626bd587a837677817a74877a8b84807a7478848a838977";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitlePrivacyString = [self StringFromMeaningData:value];
    }
    return kTitlePrivacyString;
}

//: ipv4_default_link
- (NSString *)kContentHoppingTitle {
    /* static */ NSString *kContentHoppingTitle = nil;
    if (!kContentHoppingTitle) {
		NSString *origin = @"110808a7621fc70171787e3c676c6d6e697d747c677471767318";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContentHoppingTitle = [self StringFromMeaningData:value];
    }
    return kContentHoppingTitle;
}

//: enable_team_apns_force
- (NSString *)kContent_wortString {
    /* static */ NSString *kContent_wortString = nil;
    if (!kContent_wortString) {
		NSString *origin = @"162406bbb87989928586908983988985918385949297838a9396878963";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_wortString = [self StringFromMeaningData:value];
    }
    return kContent_wortString;
}

//: Key
- (NSString *)kContent_disturbData {
    /* static */ NSString *kContent_disturbData = nil;
    if (!kContent_disturbData) {
		NSString *origin = @"035a0c422aa835bed8a77e6aa5bfd315";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kContent_disturbData = [self StringFromMeaningData:value];
    }
    return kContent_disturbData;
}

//: nim_rsa_padding_mode
- (NSString *)kTitleWildernessContent {
    /* static */ NSString *kTitleWildernessContent = nil;
    if (!kTitleWildernessContent) {
		NSString *origin = @"1440091679a62209afaea9ad9fb2b3a19fb0a1a4a4a9aea79fadafa4a5f1";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleWildernessContent = [self StringFromMeaningData:value];
    }
    return kTitleWildernessContent;
}

//: create_recent_when_sync_remote_messages
- (NSString *)kTitleWaistName {
    /* static */ NSString *kTitleWaistName = nil;
    if (!kTitleWaistName) {
		NSString *origin = @"27140ad612c6a5acc40e77867975887973867977798288738b7c798273878d8277738679818388797381798787757b7987c6";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitleWaistName = [self StringFromMeaningData:value];
    }
    return kTitleWaistName;
}

//: enable_file_quick_transfer
- (NSString *)kText_receptionMonthValue {
    /* static */ NSString *kText_receptionMonthValue = nil;
    if (!kText_receptionMonthValue) {
		NSString *origin = @"1a1d05eb64828b7e7f89827c838689827c8e928680887c918f7e8b9083828f0d";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_receptionMonthValue = [self StringFromMeaningData:value];
    }
    return kText_receptionMonthValue;
}

//: exception_upload_log_enabled
- (NSString *)kNamePrelimString {
    /* static */ NSString *kNamePrelimString = nil;
    if (!kNamePrelimString) {
		NSString *origin = @"1c010c8c07a2856439c91f936679646671756a706f6076716d706265606d706860666f62636d6665bc";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNamePrelimString = [self StringFromMeaningData:value];
    }
    return kNamePrelimString;
}

//: menu_delete_msg_from_server
- (NSString *)kNameTargetData {
    /* static */ NSString *kNameTargetData = nil;
    if (!kNameTargetData) {
		NSString *origin = @"1b2d05990f9a929ba28c91929992a1928c9aa0948c939f9c9a8ca0929fa3929f6e";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kNameTargetData = [self StringFromMeaningData:value];
    }
    return kNameTargetData;
}

//: ignore_message_type
- (NSString *)kText_meltTitle {
    /* static */ NSString *kText_meltTitle = nil;
    if (!kText_meltTitle) {
		NSString *origin = @"135c03c5c3cacbcec1bbc9c1cfcfbdc3c1bbd0d5ccc1f3";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_meltTitle = [self StringFromMeaningData:value];
    }
    return kText_meltTitle;
}

//: enable_thread_cloud_pull
- (NSString *)kText_pigString {
    /* static */ NSString *kText_pigString = nil;
    if (!kText_pigString) {
		NSString *origin = @"182908b063763d9c8e978a8b958e889d919b8e8a8d888c95989e8d88999e959514";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kText_pigString = [self StringFromMeaningData:value];
    }
    return kText_pigString;
}

//: nim_test_msg_env
- (NSString *)kTitle_easyData {
    /* static */ NSString *kTitle_easyData = nil;
    if (!kTitle_easyData) {
		NSString *origin = @"10270d68cc8f66bb6c4b1317ea959094869b8c9a9b86949a8e868c959dec";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_easyData = [self StringFromMeaningData:value];
    }
    return kTitle_easyData;
}

//: videochat_voice_detect
- (NSString *)kTitle_placeShallowMarriedValue {
    /* static */ NSString *kTitle_placeShallowMarriedValue = nil;
    if (!kTitle_placeShallowMarriedValue) {
		NSString *origin = @"161c05dbcf928580818b7f847d907b928b857f817b808190817f90bb";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_placeShallowMarriedValue = [self StringFromMeaningData:value];
    }
    return kTitle_placeShallowMarriedValue;
}

//: file_download_token_enabled
- (NSString *)kTextTeachValue {
    /* static */ NSString *kTextTeachValue = nil;
    if (!kTextTeachValue) {
		NSString *origin = @"1b4507a8dbecfaabaeb1aaa4a9b4bcb3b1b4a6a9a4b9b4b0aab3a4aab3a6a7b1aaa96e";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTextTeachValue = [self StringFromMeaningData:value];
    }
    return kTextTeachValue;
}

//: nim_test_disable_traceroute
- (NSString *)kTitle_labDivineData {
    /* static */ NSString *kTitle_labDivineData = nil;
    if (!kTitle_labDivineData) {
		NSString *origin = @"1b35088441ba1c31a39ea294a99aa8a994999ea89697a19a94a9a796989aa7a4aaa99a68";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kTitle_labDivineData = [self StringFromMeaningData:value];
    }
    return kTitle_labDivineData;
}

//: use_socks5
- (NSString *)kName_promptData {
    /* static */ NSString *kName_promptData = nil;
    if (!kName_promptData) {
		NSString *origin = @"0a240d2f807ea761956adb24b1999789839793878f97596f";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_promptData = [self StringFromMeaningData:value];
    }
    return kName_promptData;
}

//: Root.plist
- (NSString *)kName_fileTitle {
    /* static */ NSString *kName_fileTitle = nil;
    if (!kName_fileTitle) {
		NSString *origin = @"0a0f0a91b4c6b533dfdd617e7e833d7f7b788283c4";
		NSData *data = [MeaningData MeaningDataToData:origin];
        Byte *value = (Byte *)data.bytes;
        kName_fileTitle = [self StringFromMeaningData:value];
    }
    return kName_fileTitle;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  UserLabelMan.m
//  NIM
//
//  Created by chris on 15/7/1.
//  Copyright (c) 2015年 Netease. All rights reserved.
//

// __M_A_C_R_O__
//: #import "USERBundleSetting.h"
#import "UserLabelMan.h"

//: @implementation USERBundleSetting
@implementation UserLabelMan

//: - (BOOL)usingAmr
- (BOOL)recordAlbum
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"using_amr"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTitleSurvivorData]] boolValue];
}


//: - (BOOL)autoFetchAttachment
- (BOOL)phaetonShadow
{
    //: id setting = [[NSUserDefaults standardUserDefaults] objectForKey:@"auto_fetch_attachment"];
    id setting = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTextRetiredArrestValue]];
    //: if (setting) {
    if (setting) {
        //: return [setting boolValue];
        return [setting boolValue];
    //: } else {
    } else {
        //: return NO;
        return NO;
    }
}

//: - (instancetype)init
- (instancetype)init
{
    //: if(self = [super init]) {
    if(self = [super init]) {
        //: [self checkSocks5DefaultSetting];
        [self notice];
        //: NSDictionary *dict = @{
        NSDictionary *dict = @{
                               //: @"exception_upload_log_enabled" : @(NO),
                               [[MeaningData sharedInstance] kNamePrelimString] : @(NO),
                               //: @"custom_apns_content_type" : @"custom"
                               [[MeaningData sharedInstance] kTextRentalGoodValue] : @"custom"
                               //: };
                               };
        //: [[NSUserDefaults standardUserDefaults] registerDefaults:dict];
        [[NSUserDefaults standardUserDefaults] registerDefaults:dict];
    }
    //: return self;
    return self;
}

//: - (NSString *)description
- (NSString *)description
{
    //: return [NSString stringWithFormat:
    return [NSString stringWithFormat:
                //: @"\n\n\n" "enabled_remove_recent_session %d\n" "local_search_time_order_desc %d\n" "auto_remove_remote_session %d\n" "auto_remove_alias %d\n" "auto_remove_snap_message %d\n" "add_friend_need_verify %d\n" "show app %d\n" "maximum log days %zd\n" "using amr %d\n" "ignore_team_types %@ \n" "server_record_audio %d\n" "server_record_video %d\n" "server_record_whiteboard_data %d\n" "videochat_auto_rotate_remote_video %d \n" "videochat_start_with_back_camera %zd\n" "videochat_video_encode_max_kbps %zd\n" "videochat_local_record_video_kbps %zd\n" "videochat_local_record_video_quality %zd\n" "videochat_auto_disable_audiosession %zd\n" "videochat_audio_denoise %zd\n" "videochat_voice_detect %zd\n" "videochat_prefer_hd_audio %zd\n" "chatroom_retry_count %zd\n" "sync_when_remote_fetch_messages %zd\n" "enable_revoke_count %zd\n" "\n\n\n",
                @"\n\n\n" "enabled_remove_recent_session %d\n" "local_search_time_order_desc %d\n" "auto_remove_remote_session %d\n" "auto_remove_alias %d\n" "auto_remove_snap_message %d\n" "add_friend_need_verify %d\n" "show app %d\n" "maximum log days %zd\n" "using amr %d\n" "ignore_team_types %@ \n" "server_record_audio %d\n" "server_record_video %d\n" "server_record_whiteboard_data %d\n" "videochat_auto_rotate_remote_video %d \n" "videochat_start_with_back_camera %zd\n" "videochat_video_encode_max_kbps %zd\n" "videochat_local_record_video_kbps %zd\n" "videochat_local_record_video_quality %zd\n" "videochat_auto_disable_audiosession %zd\n" "videochat_audio_denoise %zd\n" "videochat_voice_detect %zd\n" "videochat_prefer_hd_audio %zd\n" "chatroom_retry_count %zd\n" "sync_when_remote_fetch_messages %zd\n" "enable_revoke_count %zd\n" "\n\n\n",
                //: [self removeSessionWhenDeleteMessages],
                [self to],
                //: [self localSearchOrderByTimeDesc],
                [self red],
                //: [self autoRemoveRemoteSession],
                [self successSession],
                //: [self autoRemoveAlias],
                [self aLaCarte],
                //: [self autoRemoveSnapMessage],
                [self table],
                //: [self needVerifyForFriend],
                [self imageOf],
                //: [self showFps],
                [self lightOnFps],
                //: [self maximumLogDays],
                [self maximal],
                //: [self usingAmr],
                [self recordAlbum],
                //: [self ignoreTeamNotificationTypes],
                [self showTypes],
                //: [self serverRecordAudio],
                [self record],
                //: [self serverRecordVideo],
                [self input],
                //: [self serverRecordWhiteboardData],
                [self text],
                //: [self videochatAutoRotateRemoteVideo],
                [self count],
                //: (NSInteger)[self startWithBackCamera],
                (NSInteger)[self rollUpAlong],
                //: [self videoMaxEncodeKbps],
                [self nameKbps],
                //: [self localRecordVideoKbps],
                [self worker],
                //: [self localRecordVideoQuality],
                [self voiceOverRemove],
                //: (NSInteger)[self autoDeactivateAudioSession],
                (NSInteger)[self enable],
                //: (NSInteger)[self audioDenoise],
                (NSInteger)[self at],
                //: (NSInteger)[self voiceDetect],
                (NSInteger)[self option],
                //: (NSInteger)[self preferHDAudio],
                (NSInteger)[self terminal],
                //: [self chatroomRetryCount],
                [self component],
                //: (NSInteger)[self enableSyncWhenFetchRemoteMessages],
                (NSInteger)[self globalAction],
                //: (NSInteger)[self isIgnoreRevokeMessageCount]
                (NSInteger)[self limit]
            //: ];
            ];
}

//: + (instancetype)sharedConfig
+ (instancetype)user
{
    //: static USERBundleSetting *instance = nil;
    static UserLabelMan *instance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: instance = [[USERBundleSetting alloc] init];
        instance = [[UserLabelMan alloc] init];
    //: });
    });
    //: return instance;
    return instance;
}

//: - (NSInteger)customClientType {
- (NSInteger)pin {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"custom_client_type"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kText_errorName]];
    //: return ret ? [ret integerValue] : 0;
    return ret ? [ret integerValue] : 0;
}


//: - (BOOL)disableTraceroute
- (BOOL)locationTraceroute
{
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_test_disable_traceroute"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTitle_labDivineData]];
    //: return ret ? [ret boolValue] : NO;
    return ret ? [ret boolValue] : NO;
}

//: - (BOOL)enableRotate
- (BOOL)center
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"enable_rotate"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kNameSateFistData]] boolValue];
}

//: - (BOOL)serverRecordVideo
- (BOOL)input
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"server_record_video"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kName_compareString]] boolValue];
}

//: - (BOOL)enableAPNsPrefix
- (BOOL)month
{
    //: id value = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_apns_prefix"];
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kContentHideGrateTitle]];
    //: if(value) {
    if(value) {
        //: return [value boolValue];
        return [value boolValue];
    //: }else {
    }else {
        //: return YES;
        return YES;
    }
}

//: - (BOOL)enableTeamAPNsForce
- (BOOL)titleTag
{
    //: id value = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_team_apns_force"];
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kContent_wortString]];
    //: if (value) {
    if (value) {
        //: return [value boolValue];
        return [value boolValue];
    }
    //: else
    else
    {
        //: return NO;
        return NO;
    }
}

//: - (BOOL)serverRecordHost
- (BOOL)host
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"server_record_host"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kText_handsomeData]] boolValue];
}

//: - (NSUInteger)socks5Type
- (NSUInteger)temp
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"socks5_type"] intValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTitleCombatWrapValue]] intValue];
}

//: - (BOOL)autoRemoveAlias
- (BOOL)aLaCarte
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"auto_remove_alias"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTitleAlsoData]] boolValue];
}

//: - (BOOL)fileQuickTransferEnabled
- (BOOL)tableArray
{
    //: id value = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_file_quick_transfer"];
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kText_receptionMonthValue]];
    //: if(value) {
    if(value) {
        //: return [value boolValue];
        return [value boolValue];
    //: }else {
    }else {
        //: return YES;
        return YES;
    }
}

//: - (BOOL)dropTableWhenDeleteMessages
- (BOOL)name
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"enabled_drop_msg_table"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTextJobValue]] boolValue];

}

//: - (NSString *)ipv4DefaultLink {
- (NSString *)inputLast {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"ipv4_default_link"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kContentHoppingTitle]];
    //: return ret;
    return ret;
}

//: - (BOOL)useRTSSocks
- (BOOL)childTing
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"use_rts_socks5"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTitle_proudValue]] boolValue];
}

//: - (NSString *)customAPNsType
- (NSString *)containerBy
{
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"custom_apns_content_type"];
    return [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTextRentalGoodValue]];
}

//: - (NIMAsymEncryptionType)AsymEncryptionType {
- (NIMAsymEncryptionType)nearValueView {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_asym_crypto_type"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kNamePrelimValue]];
    //: return (ret == nil ? 1 : [ret integerValue]);
    return (ret == nil ? 1 : [ret integerValue]);
}

//: - (UIViewContentMode)videochatRemoteVideoContentMode
- (UIViewContentMode)fromMode
{
    //: NSInteger setting = [[[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_remote_video_content_mode"] integerValue];
    NSInteger setting = [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kText_diagnoseOutdoorValue]] integerValue];
    //: return (setting == 0) ? UIViewContentModeScaleAspectFill : UIViewContentModeScaleAspectFit;
    return (setting == 0) ? UIViewContentModeScaleAspectFill : UIViewContentModeScaleAspectFit;
}

//: - (BOOL)useSocks
- (BOOL)socksCount
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"use_socks5"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kName_promptData]] boolValue];
}

//: - (BOOL)enableSyncStickTopSessionInfos
- (BOOL)sortMessage
{
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_sync_stick_top_session"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTextBasisValue]];
    //: return ret ? [ret boolValue] : YES;
    return ret ? [ret boolValue] : YES;
}

//: - (BOOL)needVerifyForFriend
- (BOOL)imageOf
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"add_friend_need_verify"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kContentPaleString]] boolValue];
}

//: - (NSString *)ipv6DefaultLink {
- (NSString *)edge {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"ipv6_default_link"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kName_standardContent]];
    //: return ret;
    return ret;
}


//: - (BOOL)autoRemoveRemoteSession
- (BOOL)successSession
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"auto_remove_remote_session"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kNameDeployData]] boolValue];
}


//: - (BOOL)enableSdkRemoteRender
- (BOOL)emptyName
{
    //: id value = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_sdk_video_render"];
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTitle_immigrantName]];
    //: if (value)
    if (value)
    {
        //: return [value boolValue];
        return [value boolValue];
    }
    //: else
    else
    {
        //: return NO;
        return NO;
    }
}

//: - (BOOL)startWithBackCamera
- (BOOL)rollUpAlong
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_start_with_back_camera"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kName_discriminationString]] boolValue];
}

//: - (BOOL)isDeleteMsgFromServer
- (BOOL)remove
{
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"menu_delete_msg_from_server"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kNameTargetData]];
    //: return [ret boolValue];
    return [ret boolValue];
}

//: - (NIMSymEncryptionType)SymEncryptionType {
- (NIMSymEncryptionType)encryption {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_sym_crypto_type"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTextBasisString]];
    //: return (ret == nil ? 1 : [ret integerValue]);
    return (ret == nil ? 1 : [ret integerValue]);
}

//: - (BOOL)voiceDetect
- (BOOL)option
{
    //: id setting = [[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_voice_detect"];
    id setting = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTitle_placeShallowMarriedValue]];

    //: if (setting) {
    if (setting) {
        //: return [setting boolValue];
        return [setting boolValue];
    }
    //: else {
    else {
        //: return YES;
        return YES;
    }

}

//: - (BOOL)disableProximityMonitor
- (BOOL)showMonitor
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"disable_proxmity_monitor"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kNameLeadingString]] boolValue];
}

//: - (NSString *)socks5RTSAddr
- (NSString *)frameIn
{
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"rts_socks5_addr"]? : @"";
    return [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kContent_riceSenWithName]]? : @"";
}

//: - (BOOL)enableLocalAnti
- (BOOL)model
{
    //: return YES;
    return YES;
}

//: - (NSString *)socksRTSPassword
- (NSString *)beggarMyNeighbourPolicy
{
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"rts_socks5_password"] ?: @"";
    return [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kContent_operaValue]] ?: @"";
}

//: - (NSString *)socksPassword
- (NSString *)roundFrame
{
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"socks5_password"] ?: @"";
    return [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTextComfortString]] ?: @"";
}

//: - (BOOL)removeSessionWhenDeleteMessages{
- (BOOL)to{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"enabled_remove_recent_session"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTitle_stopName]] boolValue];
}

//: - (BOOL)showFps{
- (BOOL)lightOnFps{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"show_fps_for_app"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kText_cellLungContent]] boolValue];
}

//: - (BOOL)animatedImageThumbnailEnabled
- (BOOL)timeCustom
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"animated_image_thumbnail_enabled"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kNameScripTwistData]] boolValue];
}

//: - (NSString *)messageEnv {
- (NSString *)click {
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_test_msg_env"];
    return [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTitle_easyData]];
}

//: - (void)checkSocks5DefaultSetting {
- (void)notice {
    //: NSString *settingBundlePath = [[NSBundle mainBundle] pathForResource:@"Settings" ofType:@"bundle"];
    NSString *settingBundlePath = [[NSBundle mainBundle] pathForResource:[[MeaningData sharedInstance] kTitleNutText] ofType:[[MeaningData sharedInstance] kTitle_artiString]];
    //: NSString *plistPath = [settingBundlePath stringByAppendingPathComponent:@"Root.plist"];
    NSString *plistPath = [settingBundlePath stringByAppendingPathComponent:[[MeaningData sharedInstance] kName_fileTitle]];
    //: NSDictionary *plistDict = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
    NSDictionary *plistDict = [[NSDictionary alloc] initWithContentsOfFile:plistPath];
    //: NSArray *preferences = [plistDict valueForKey:@"PreferenceSpecifiers"];
    NSArray *preferences = [plistDict valueForKey:[[MeaningData sharedInstance] kTitle_harassmentString]];
    //: NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];

    //: for(NSDictionary *setting in preferences) {
    for(NSDictionary *setting in preferences) {
        // 如果NSUserDefaults里有，则优先使用UserDefaults里的
        //: NSString *key = [setting valueForKey:@"Key"];
        NSString *key = [setting valueForKey:[[MeaningData sharedInstance] kContent_disturbData]];

        //: if (key && key.length>0 && [key containsString:@"socks5"]) {
        if (key && key.length>0 && [key containsString:[[MeaningData sharedInstance] kName_milkCollegeValue]]) {
            // 从Plist中获取值填充
            //: id value = [setting valueForKey:@"DefaultValue"];
            id value = [setting valueForKey:[[MeaningData sharedInstance] kNameBothData]];
            //: if(value) {
            if(value) {
                //: [userDefaults setObject:value forKey:key];
                [userDefaults setObject:value forKey:key];
            }
        }
    }
}



//: - (BOOL)videochatAutoRotateRemoteVideo
- (BOOL)count
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_auto_rotate_remote_video"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTitleBeginValue]] boolValue];
}


//: - (BOOL)serverRecordAudio
- (BOOL)record
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"server_record_audio"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTitleImprovementString]] boolValue];
}

//: - (BOOL)isIgnoreRevokeMessageCount
- (BOOL)limit
{
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_revoke_count"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTitlePrivacyString]];
    //: return [ret boolValue];
    return [ret boolValue];
}

//: - (NSInteger)maximumLogDays
- (NSInteger)maximal
{
    //: id object = [[NSUserDefaults standardUserDefaults] objectForKey:@"maximum_log_days"];
    id object = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTextOverallString]];
    //: NSInteger days = object? [object integerValue]: 7;
    NSInteger days = object? [object integerValue]: 7;
    //: return days;
    return days;
}

//: - (NSInteger)ignoreMessageType {
- (NSInteger)length {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"ignore_message_type"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kText_meltTitle]];
    //: if (ret) {
    if (ret) {
        //: return [ret integerValue];
        return [ret integerValue];

    //: } else {
    } else {
        //: return -1;
        return -1;
    }
}

//: - (BOOL)enableRevokeMsgPostscript {
- (BOOL)electPostscript {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_revoke_msg_ps"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kNameRuralPullValue]];
    //: return [ret boolValue];
    return [ret boolValue];
}

//: - (NSArray *)ignoreTeamNotificationTypes
- (NSArray *)showTypes
{
    //: static NSArray *types = nil;
    static NSArray *types = nil;
    //: if (types == nil)
    if (types == nil)
    {
        //: NSString *value = [[NSUserDefaults standardUserDefaults] objectForKey:@"ignore_team_types"];
        NSString *value = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTitleRentalName]];
        //: if ([value isKindOfClass:[NSString class]])
        if ([value isKindOfClass:[NSString class]])
        {
            //: NSString *typeDescription = [value stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSString *typeDescription = [value stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            //: if ([typeDescription length])
            if ([typeDescription length])
            {
                //: types = [typeDescription componentsSeparatedByString:@","];
                types = [typeDescription componentsSeparatedByString:@","];
            }
        }
    }
    //: if (types == nil)
    if (types == nil)
    {
        //: types = [NSArray array];
        types = [NSArray array];
    }
    //: return types;
    return types;
}

//: - (NIMLinkAddressType)LbsLinkAddressType {
- (NIMLinkAddressType)item {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_link_address_type"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kText_screwPackValue]];
    //: return [ret integerValue];
    return [ret integerValue];
}

//: - (BOOL)localSearchOrderByTimeDesc{
- (BOOL)red{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"local_search_time_order_desc"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTitleHospitalSellerValue]] boolValue];
}

//: - (BOOL)fileDownloadTokenEnabled {
- (BOOL)nameDismiss {
    //: id setting = [[NSUserDefaults standardUserDefaults] objectForKey:@"file_download_token_enabled"];
    id setting = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTextTeachValue]];
    //: if (setting) {
    if (setting) {
        //: return [setting boolValue];
        return [setting boolValue];
    //: } else {
    } else {
        //: return NO;
        return NO;
    }
}

//: - (BOOL)asyncLoadRecentSessionEnabled {
- (BOOL)upClosed {
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"tester_recent_session_most_enable"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kNameSearcherData]];
    //: return [ret boolValue];
    return [ret boolValue];
}

//: - (int)serverRecordMode
- (int)button
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"server_record_mode"] intValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTitleDetailData]] intValue];
}

//: - (NSUInteger)localRecordVideoKbps
- (NSUInteger)worker
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_local_record_video_kbps"] integerValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kContentPromptString]] integerValue];
}

//: - (NIMRSAPaddingMode)rsaPaddingMode
- (NIMRSAPaddingMode)menuShow
{
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"nim_rsa_padding_mode"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTitleWildernessContent]];
    //: return [ret integerValue];
    return [ret integerValue];
}

//: - (BOOL)enablePullSubMessagesFromServer
- (BOOL)signaling
{
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"enable_thread_cloud_pull"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kText_pigString]];
    //: return [ret boolValue];
    return [ret boolValue];
}

//: - (BOOL)serverRecordWhiteboardData
- (BOOL)text
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"server_record_whiteboard_data"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kText_knifeString]] boolValue];
}

//: - (BOOL)audioDenoise
- (BOOL)at
{
    //: id setting = [[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_audio_denoise"];
    id setting = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kContent_fieData]];

    //: if (setting) {
    if (setting) {
        //: return [setting boolValue];
        return [setting boolValue];
    }
    //: else {
    else {
        //: return YES;
        return YES;
    }

}

//: - (BOOL)preferHDAudio
- (BOOL)terminal
{
    //: id setting = [[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_prefer_hd_audio"];
    id setting = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kContentReceptionData]];

    //: if (setting) {
    if (setting) {
        //: return [setting boolValue];
        return [setting boolValue];
    }
    //: else {
    else {
        //: return NO;
        return NO;
    }
}

//: - (BOOL)countTeamNotification
- (BOOL)findTingFile
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"count_team_notification"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kContentLoreName]] boolValue];
}

//: - (BOOL)enableCreateRecentSessionsWhenSyncRemoteMessages
- (BOOL)location
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"create_recent_when_sync_remote_messages"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTitleWaistName]] boolValue];
}

//: - (NSUInteger)videoMaxEncodeKbps
- (NSUInteger)nameKbps
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_video_encode_max_kbps"] integerValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kContent_fileTextName]] integerValue];
}

//: - (NSString *)socksUsername
- (NSString *)username
{
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"socks5_username"]? : @"";
    return [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kNameSoulContent]]? : @"";
}

//: - (NSString *)socksRTSUsername
- (NSString *)doing
{
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"rts_socks5_username"]? : @"";
    return [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTitle_thousandTextString]]? : @"";
}

//: - (NSUInteger )socks5RTSType
- (NSUInteger )changeAction
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"rts_socks5_type"] intValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTitleBeginThereString]] intValue];
}

//: - (BOOL)enableAudioSessionReset
- (BOOL)heliogram
{
    //: id value = [[NSUserDefaults standardUserDefaults] objectForKey:@"disable_audio_session_reset"];
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kContentLessValue]];
    //: if (value) {
    if (value) {
        //: return [value boolValue];
        return [value boolValue];
    }
    //: else
    else
    {
        //: return NO;
        return NO;
    }
}

//: - (BOOL)autoDeactivateAudioSession
- (BOOL)enable
{
    //: id setting = [[NSUserDefaults standardUserDefaults] objectForKey:@"videochat_auto_disable_audiosession"];
    id setting = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kName_mysteryComfortQuestString]];

    //: if (setting) {
    if (setting) {
        //: return [setting boolValue];
        return [setting boolValue];
    }
    //: else {
    else {
        //: return YES;
        return YES;
    }
}

//: - (BOOL)exceptionLogUploadEnabled
- (BOOL)language
{
    //: id value = [[NSUserDefaults standardUserDefaults] objectForKey:@"exception_upload_log_enabled"];
    id value = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kNamePrelimString]];
    //: if (value) {
    if (value) {
        //: return [value boolValue];
        return [value boolValue];
    }
    //: else
    else
    {
        //: return NO;
        return NO;
    }
}

//: - (BOOL)autoRemoveSnapMessage
- (BOOL)table
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"auto_remove_snap_message"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTitle_tollString]] boolValue];
}

//: - (NSUInteger)localRecordVideoQuality
- (NSUInteger)voiceOverRemove
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@""] unsignedIntegerValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:@""] unsignedIntegerValue];
}

//: - (NSString *)socks5Addr
- (NSString *)pressed
{
    //: return [[NSUserDefaults standardUserDefaults] objectForKey:@"socks5_addr"]? : @"";
    return [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kContent_lamString]]? : @"";
}

//: - (BOOL)enableSyncWhenFetchRemoteMessages
- (BOOL)globalAction
{
    //: return [[[NSUserDefaults standardUserDefaults] objectForKey:@"sync_when_remote_fetch_messages"] boolValue];
    return [[[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kName_harassmentValue]] boolValue];
}

//: - (BOOL)isDeleteMsgFromDB
- (BOOL)place
{
    //: id ret = [[NSUserDefaults standardUserDefaults] objectForKey:@"menu_delete_msg_from_db"];
    id ret = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kNameHerbProductiveValue]];
    //: return [ret boolValue];
    return [ret boolValue];
}

//: - (NSInteger)chatroomRetryCount
- (NSInteger)component
{
    //: id count = [[NSUserDefaults standardUserDefaults] objectForKey:@"chatroom_enter_retry_count"];
    id count = [[NSUserDefaults standardUserDefaults] objectForKey:[[MeaningData sharedInstance] kTitle_rakeString]];
    //: return count == nil ? 3 : [count integerValue];
    return count == nil ? 3 : [count integerValue];
}

//: @end
@end
//: __SAVE__ ignore_string [667.6]