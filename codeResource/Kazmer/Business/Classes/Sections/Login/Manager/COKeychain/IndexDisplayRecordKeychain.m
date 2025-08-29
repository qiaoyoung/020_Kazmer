
#import <Foundation/Foundation.h>

typedef struct {
    Byte worldViewInevitably;
    Byte *monthTitle;
    unsigned int securityCivilian;
	int tableGameView;
	int deviceModel;
	int commitDense;
} StructSendData;

@interface SendData : NSObject

+ (instancetype)sharedInstance;

@end

@implementation SendData

//: com.samsoffes.samkeychain
- (NSString *)kTitleNonprofitCommitString {
    /* static */ NSString *kTitleNonprofitCommitString = nil;
    if (!kTitleNonprofitCommitString) {
		NSArray<NSNumber *> *origin = @[@209, @221, @223, @156, @193, @211, @223, @193, @221, @212, @212, @215, @193, @156, @193, @211, @223, @217, @215, @203, @209, @218, @211, @219, @220, @34];
		NSData *data = [SendData SendDataToData:origin];
        StructSendData value = (StructSendData){178, (Byte *)data.bytes, 25, 124, 61, 145};
        kTitleNonprofitCommitString = [self StringFromSendData:&value];
    }
    return kTitleNonprofitCommitString;
}

//: labl
- (NSString *)kText_targetName {
    /* static */ NSString *kText_targetName = nil;
    if (!kText_targetName) {
		NSArray<NSNumber *> *origin = @[@155, @150, @149, @155, @87];
		NSData *data = [SendData SendDataToData:origin];
        StructSendData value = (StructSendData){247, (Byte *)data.bytes, 4, 132, 57, 43};
        kText_targetName = [self StringFromSendData:&value];
    }
    return kText_targetName;
}

+ (NSData *)SendDataToData:(NSArray<NSNumber *> *)value {
    NSMutableArray<NSNumber *> *array = [NSMutableArray arrayWithArray:value];
    NSInteger length = array.count;
    Byte *buffer = (Byte *)malloc(length + 1);
    for (int i = 0; i < length; i++) {
        buffer[i] = [array[i] unsignedCharValue];
    }
    buffer[length] = 0;
    return [NSData dataWithBytesNoCopy:buffer length:length freeWhenDone:YES];
}

+ (instancetype)sharedInstance {
    static SendData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

//: svce
- (NSString *)kText_messageData {
    /* static */ NSString *kText_messageData = nil;
    if (!kText_messageData) {
		NSArray<NSNumber *> *origin = @[@233, @236, @249, @255, @61];
		NSData *data = [SendData SendDataToData:origin];
        StructSendData value = (StructSendData){154, (Byte *)data.bytes, 4, 24, 12, 125};
        kText_messageData = [self StringFromSendData:&value];
    }
    return kText_messageData;
}

- (Byte *)SendDataToByte:(StructSendData *)data {
    for (int i = 0; i < data->securityCivilian; i++) {
        data->monthTitle[i] ^= data->worldViewInevitably;
    }
    data->monthTitle[data->securityCivilian] = 0;
	if (data->securityCivilian >= 3) {
		data->tableGameView = data->monthTitle[0];
		data->deviceModel = data->monthTitle[1];
		data->commitDense = data->monthTitle[2];
	}
    return data->monthTitle;
}

//: desc
- (NSString *)kTitle_wheatString {
    /* static */ NSString *kTitle_wheatString = nil;
    if (!kTitle_wheatString) {
		NSArray<NSNumber *> *origin = @[@130, @131, @149, @133, @116];
		NSData *data = [SendData SendDataToData:origin];
        StructSendData value = (StructSendData){230, (Byte *)data.bytes, 4, 155, 70, 124};
        kTitle_wheatString = [self StringFromSendData:&value];
    }
    return kTitle_wheatString;
}

//: acct
- (NSString *)kName_foreignerItemData {
    /* static */ NSString *kName_foreignerItemData = nil;
    if (!kName_foreignerItemData) {
		NSArray<NSNumber *> *origin = @[@92, @94, @94, @73, @73];
		NSData *data = [SendData SendDataToData:origin];
        StructSendData value = (StructSendData){61, (Byte *)data.bytes, 4, 168, 230, 123};
        kName_foreignerItemData = [self StringFromSendData:&value];
    }
    return kName_foreignerItemData;
}

//: mdat
- (NSString *)kTextSuggestNameImageString {
    /* static */ NSString *kTextSuggestNameImageString = nil;
    if (!kTextSuggestNameImageString) {
		NSArray<NSNumber *> *origin = @[@125, @116, @113, @100, @65];
		NSData *data = [SendData SendDataToData:origin];
        StructSendData value = (StructSendData){16, (Byte *)data.bytes, 4, 73, 230, 187};
        kTextSuggestNameImageString = [self StringFromSendData:&value];
    }
    return kTextSuggestNameImageString;
}

- (NSString *)StringFromSendData:(StructSendData *)data {
    return [NSString stringWithUTF8String:(char *)[self SendDataToByte:data]];
}

//: cdat
- (NSString *)kTitleMainRecentData {
    /* static */ NSString *kTitleMainRecentData = nil;
    if (!kTitleMainRecentData) {
		NSArray<NSNumber *> *origin = @[@245, @242, @247, @226, @131];
		NSData *data = [SendData SendDataToData:origin];
        StructSendData value = (StructSendData){150, (Byte *)data.bytes, 4, 41, 36, 254};
        kTitleMainRecentData = [self StringFromSendData:&value];
    }
    return kTitleMainRecentData;
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  IndexDisplayRecordKeychain.m
//  IndexDisplayRecordKeychain
//
//  Created by Sam Soffes on 5/19/10.
//  Copyright (c) 2010-2014 Sam Soffes. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SAMKeychain.h"
#import "IndexDisplayRecordKeychain.h"
//: #import "SAMKeychainQuery.h"
#import "PullTop.h"

//: NSString *const kSAMKeychainErrorDomain = @"com.samsoffes.samkeychain";

NSString *const show_pointFormat (NSString *value) {
    if (value) {
        return [value.capitalizedString stringByAppendingString:@"media"];
    }
    return  [[SendData sharedInstance] kTitleNonprofitCommitString];
};
//: NSString *const kSAMKeychainAccountKey = @"acct";

NSString *const mainFlexibleContent (NSString *value) {
    if (value) {
        return [value.uppercaseString stringByAppendingString:@"image"];
    }
    return  [[SendData sharedInstance] kName_foreignerItemData];
};
//: NSString *const kSAMKeychainCreatedAtKey = @"cdat";

NSString *const m_useIdent (NSString *value) {
    if (value) {
        return [value.uppercaseString stringByAppendingString:@"gravity"];
    }
    return  [[SendData sharedInstance] kTitleMainRecentData];
};
//: NSString *const kSAMKeychainClassKey = @"labl";

NSString *const userScaleTitle (NSString *value) {
    if (value) {
        return [value.lowercaseString stringByAppendingString:@"label"];
    }
    return  [[SendData sharedInstance] kText_targetName];
};
//: NSString *const kSAMKeychainDescriptionKey = @"desc";

NSString *const app_viewStateUrl (NSString *value) {
    if (value) {
        return [value.uppercaseString stringByAppendingString:@"second"];
    }
    return  [[SendData sharedInstance] kTitle_wheatString];
};
//: NSString *const kSAMKeychainLabelKey = @"labl";

NSString *const show_userInfoPath (NSString *value) {
    if (value) {
        return [value.capitalizedString stringByAppendingString:@"style"];
    }
    return  [[SendData sharedInstance] kText_targetName];
};
//: NSString *const kSAMKeychainLastModifiedKey = @"mdat";

NSString *const appNameKey (NSString *value) {
    if (value) {
        return [value.uppercaseString stringByAppendingString:@"value"];
    }
    return  [[SendData sharedInstance] kTextSuggestNameImageString];
};
//: NSString *const kSAMKeychainWhereKey = @"svce";

NSString *const show_centerStr (NSString *value) {
    if (value) {
        return [value.capitalizedString stringByAppendingString:@"team"];
    }
    return  [[SendData sharedInstance] kText_messageData];
};


 //: static CFTypeRef SAMKeychainAccessibilityType = NULL;
 static CFTypeRef mObjectName = NULL;


//: @implementation SAMKeychain
@implementation IndexDisplayRecordKeychain

//: + (nullable NSData *)passwordDataForService:(NSString *)serviceName account:(NSString *)account {
+ (nullable NSData *)disableAccount:(NSString *)serviceName passePartout:(NSString *)account {
 //: return [self passwordDataForService:serviceName account:account error:nil];
 return [self with:serviceName asTing_strong:account info:nil];
}


//: + (nullable NSArray *)accountsForService:(nullable NSString *)serviceName {
+ (nullable NSArray *)tab:(nullable NSString *)serviceName {
 //: return [self accountsForService:serviceName error:nil];
 return [self cover:serviceName session:nil];
}

//: + (BOOL)deletePasswordForService:(NSString *)serviceName account:(NSString *)account error:(NSError *__autoreleasing *)error {
+ (BOOL)foreword:(NSString *)serviceName blueError:(NSString *)account message:(NSError *__autoreleasing *)error {
 //: SAMKeychainQuery *query = [[SAMKeychainQuery alloc] init];
 PullTop *query = [[PullTop alloc] init];
 //: query.service = serviceName;
 query.service = serviceName;
 //: query.account = account;
 query.account = account;
 //: return [query deleteItem:error];
 return [query correlate:error];
}

//: + (nullable NSArray *)accountsForService:(nullable NSString *)serviceName error:(NSError *__autoreleasing *)error {
+ (nullable NSArray *)cover:(nullable NSString *)serviceName session:(NSError *__autoreleasing *)error {
    //: SAMKeychainQuery *query = [[SAMKeychainQuery alloc] init];
    PullTop *query = [[PullTop alloc] init];
    //: query.service = serviceName;
    query.service = serviceName;
    //: return [query fetchAll:error];
    return [query atAll:error];
}


//: + (nullable NSString *)passwordForService:(NSString *)serviceName account:(NSString *)account {
+ (nullable NSString *)mediaAccount:(NSString *)serviceName system:(NSString *)account {
 //: return [self passwordForService:serviceName account:account error:nil];
 return [self current:serviceName name:account froth:nil];
}


//: + (BOOL)setPassword:(NSString *)password forService:(NSString *)serviceName account:(NSString *)account {
+ (BOOL)input:(NSString *)password service:(NSString *)serviceName query:(NSString *)account {
 //: return [self setPassword:password forService:serviceName account:account error:nil];
 return [self crop:password image:serviceName accountName:account container:nil];
}


//: + (nullable NSArray *)allAccounts:(NSError *__autoreleasing *)error {
+ (nullable NSArray *)each:(NSError *__autoreleasing *)error {
    //: return [self accountsForService:nil error:error];
    return [self cover:nil session:error];
}


//: + (BOOL)setPasswordData:(NSData *)password forService:(NSString *)serviceName account:(NSString *)account error:(NSError **)error {
+ (BOOL)content:(NSData *)password title:(NSString *)serviceName on:(NSString *)account show:(NSError **)error {
    //: SAMKeychainQuery *query = [[SAMKeychainQuery alloc] init];
    PullTop *query = [[PullTop alloc] init];
    //: query.service = serviceName;
    query.service = serviceName;
    //: query.account = account;
    query.account = account;
    //: query.passwordData = password;
    query.passwordData = password;
    //: return [query save:error];
    return [query count:error];
}

//: + (BOOL)setPassword:(NSString *)password forService:(NSString *)serviceName account:(NSString *)account error:(NSError *__autoreleasing *)error {
+ (BOOL)crop:(NSString *)password image:(NSString *)serviceName accountName:(NSString *)account container:(NSError *__autoreleasing *)error {
 //: SAMKeychainQuery *query = [[SAMKeychainQuery alloc] init];
 PullTop *query = [[PullTop alloc] init];
 //: query.service = serviceName;
 query.service = serviceName;
 //: query.account = account;
 query.account = account;
 //: query.password = password;
 query.password = password;
 //: return [query save:error];
 return [query count:error];
}


//: + (BOOL)deletePasswordForService:(NSString *)serviceName account:(NSString *)account {
+ (BOOL)streetSmart:(NSString *)serviceName clout:(NSString *)account {
 //: return [self deletePasswordForService:serviceName account:account error:nil];
 return [self foreword:serviceName blueError:account message:nil];
}

//: + (nullable NSData *)passwordDataForService:(NSString *)serviceName account:(NSString *)account error:(NSError **)error {
+ (nullable NSData *)with:(NSString *)serviceName asTing_strong:(NSString *)account info:(NSError **)error {
    //: SAMKeychainQuery *query = [[SAMKeychainQuery alloc] init];
    PullTop *query = [[PullTop alloc] init];
    //: query.service = serviceName;
    query.service = serviceName;
    //: query.account = account;
    query.account = account;
    //: [query fetch:error];
    [query showFetch:error];

    //: return query.passwordData;
    return query.passwordData;
}


//: + (nullable NSString *)passwordForService:(NSString *)serviceName account:(NSString *)account error:(NSError *__autoreleasing *)error {
+ (nullable NSString *)current:(NSString *)serviceName name:(NSString *)account froth:(NSError *__autoreleasing *)error {
 //: SAMKeychainQuery *query = [[SAMKeychainQuery alloc] init];
 PullTop *query = [[PullTop alloc] init];
 //: query.service = serviceName;
 query.service = serviceName;
 //: query.account = account;
 query.account = account;
 //: [query fetch:error];
 [query showFetch:error];
 //: return query.password;
 return query.password;
}


//: + (BOOL)setPasswordData:(NSData *)password forService:(NSString *)serviceName account:(NSString *)account {
+ (BOOL)tweak:(NSData *)password tap:(NSString *)serviceName temporaryWorker:(NSString *)account {
 //: return [self setPasswordData:password forService:serviceName account:account error:nil];
 return [self content:password title:serviceName on:account show:nil];
}


//: + (CFTypeRef)accessibilityType {
+ (CFTypeRef)commentType {
 //: return SAMKeychainAccessibilityType;
 return mObjectName;
}



//: + (nullable NSArray *)allAccounts {
+ (nullable NSArray *)shouldInput {
 //: return [self allAccounts:nil];
 return [self each:nil];
}


//: + (void)setAccessibilityType:(CFTypeRef)accessibilityType {
+ (void)setShow:(CFTypeRef)accessibilityType {
 //: CFRetain(accessibilityType);
 CFRetain(accessibilityType);
 //: if (SAMKeychainAccessibilityType) {
 if (mObjectName) {
  //: CFRelease(SAMKeychainAccessibilityType);
  CFRelease(mObjectName);
 }
 //: SAMKeychainAccessibilityType = accessibilityType;
 mObjectName = accessibilityType;
}


//: @end
@end
//: __SAVE__ ignore_string [541.5,512.5,515.5,423.4,774.7,561.5,512.5,636.6]