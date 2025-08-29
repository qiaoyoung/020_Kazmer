
#import <Foundation/Foundation.h>

@interface RetireEverData : NSObject

+ (instancetype)sharedInstance;

//: errSecDuplicateItem
@property (nonatomic, copy) NSString *kTitle_atOffString;

//: errSecUnimplemented
@property (nonatomic, copy) NSString *kText_atName;

//: errSecInteractionNotAllowed
@property (nonatomic, copy) NSString *kName_targetString;

//: errSecAllocate
@property (nonatomic, copy) NSString *kTitleSeeminglyData;

//: errSecItemNotFound
@property (nonatomic, copy) NSString *kTextConsumptionString;

//: errSecParam
@property (nonatomic, copy) NSString *kContent_aircraftData;

//: bundle
@property (nonatomic, copy) NSString *kTitleInevitablyString;

//: errSecDefault
@property (nonatomic, copy) NSString *kContent_foreignerTargetChickName;

//: errSecNotAvailable
@property (nonatomic, copy) NSString *kTitle_normalPullString;

//: errSecAuthFailed
@property (nonatomic, copy) NSString *kTitleTextValue;

//: SAMKeychainErrorBadArguments
@property (nonatomic, copy) NSString *kName_colorContent;

//: errSecDecode
@property (nonatomic, copy) NSString *kContent_foreignerValue;

@end

@implementation RetireEverData

//: errSecNotAvailable
- (NSString *)kTitle_normalPullString {
    if (!_kTitle_normalPullString) {
        Byte value[] = {18, 80, 13, 212, 177, 153, 111, 113, 126, 193, 32, 26, 23, 181, 194, 194, 163, 181, 179, 158, 191, 196, 145, 198, 177, 185, 188, 177, 178, 188, 181, 135};
        _kTitle_normalPullString = [self StringFromRetireEverData:value];
    }
    return _kTitle_normalPullString;
}

//: errSecAuthFailed
- (NSString *)kTitleTextValue {
    if (!_kTitleTextValue) {
        Byte value[] = {16, 15, 7, 85, 7, 70, 188, 116, 129, 129, 98, 116, 114, 80, 132, 131, 119, 85, 112, 120, 123, 116, 115, 42};
        _kTitleTextValue = [self StringFromRetireEverData:value];
    }
    return _kTitleTextValue;
}

+ (instancetype)sharedInstance {
    static RetireEverData *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (Byte *)RetireEverDataToCache:(Byte *)data {
    int merely = data[0];
    Byte emmer = data[1];
    int metic = data[2];
    for (int i = metic; i < metic + merely; i++) {
        int value = data[i] - emmer;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[metic + merely] = 0;
    return data + metic;
}

//: errSecDefault
- (NSString *)kContent_foreignerTargetChickName {
    if (!_kContent_foreignerTargetChickName) {
        Byte value[] = {13, 98, 12, 176, 43, 119, 35, 116, 57, 62, 247, 141, 199, 212, 212, 181, 199, 197, 166, 199, 200, 195, 215, 206, 214, 142};
        _kContent_foreignerTargetChickName = [self StringFromRetireEverData:value];
    }
    return _kContent_foreignerTargetChickName;
}

//: errSecInteractionNotAllowed
- (NSString *)kName_targetString {
    if (!_kName_targetString) {
        Byte value[] = {27, 95, 4, 229, 196, 209, 209, 178, 196, 194, 168, 205, 211, 196, 209, 192, 194, 211, 200, 206, 205, 173, 206, 211, 160, 203, 203, 206, 214, 196, 195, 90};
        _kName_targetString = [self StringFromRetireEverData:value];
    }
    return _kName_targetString;
}

//: bundle
- (NSString *)kTitleInevitablyString {
    if (!_kTitleInevitablyString) {
        Byte value[] = {6, 44, 13, 1, 127, 30, 173, 67, 35, 60, 29, 188, 225, 142, 161, 154, 144, 152, 145, 85};
        _kTitleInevitablyString = [self StringFromRetireEverData:value];
    }
    return _kTitleInevitablyString;
}

//: errSecDecode
- (NSString *)kContent_foreignerValue {
    if (!_kContent_foreignerValue) {
        Byte value[] = {12, 2, 5, 64, 140, 103, 116, 116, 85, 103, 101, 70, 103, 101, 113, 102, 103, 185};
        _kContent_foreignerValue = [self StringFromRetireEverData:value];
    }
    return _kContent_foreignerValue;
}

//: errSecItemNotFound
- (NSString *)kTextConsumptionString {
    if (!_kTextConsumptionString) {
        Byte value[] = {18, 74, 11, 8, 48, 10, 64, 216, 173, 182, 21, 175, 188, 188, 157, 175, 173, 147, 190, 175, 183, 152, 185, 190, 144, 185, 191, 184, 174, 223};
        _kTextConsumptionString = [self StringFromRetireEverData:value];
    }
    return _kTextConsumptionString;
}

//: SAMKeychainErrorBadArguments
- (NSString *)kName_colorContent {
    if (!_kName_colorContent) {
        Byte value[] = {28, 66, 6, 102, 228, 237, 149, 131, 143, 141, 167, 187, 165, 170, 163, 171, 176, 135, 180, 180, 177, 180, 132, 163, 166, 131, 180, 169, 183, 175, 167, 176, 182, 181, 91};
        _kName_colorContent = [self StringFromRetireEverData:value];
    }
    return _kName_colorContent;
}

//: errSecParam
- (NSString *)kContent_aircraftData {
    if (!_kContent_aircraftData) {
        Byte value[] = {11, 89, 6, 69, 66, 30, 190, 203, 203, 172, 190, 188, 169, 186, 203, 186, 198, 78};
        _kContent_aircraftData = [self StringFromRetireEverData:value];
    }
    return _kContent_aircraftData;
}

//: errSecAllocate
- (NSString *)kTitleSeeminglyData {
    if (!_kTitleSeeminglyData) {
        Byte value[] = {14, 29, 13, 95, 251, 214, 90, 46, 144, 125, 234, 243, 204, 130, 143, 143, 112, 130, 128, 94, 137, 137, 140, 128, 126, 145, 130, 137};
        _kTitleSeeminglyData = [self StringFromRetireEverData:value];
    }
    return _kTitleSeeminglyData;
}

//: errSecUnimplemented
- (NSString *)kText_atName {
    if (!_kText_atName) {
        Byte value[] = {19, 7, 13, 124, 202, 204, 108, 212, 100, 43, 53, 230, 5, 108, 121, 121, 90, 108, 106, 92, 117, 112, 116, 119, 115, 108, 116, 108, 117, 123, 108, 107, 87};
        _kText_atName = [self StringFromRetireEverData:value];
    }
    return _kText_atName;
}

//: errSecDuplicateItem
- (NSString *)kTitle_atOffString {
    if (!_kTitle_atOffString) {
        Byte value[] = {19, 25, 3, 126, 139, 139, 108, 126, 124, 93, 142, 137, 133, 130, 124, 122, 141, 126, 98, 141, 126, 134, 104};
        _kTitle_atOffString = [self StringFromRetireEverData:value];
    }
    return _kTitle_atOffString;
}

- (NSString *)StringFromRetireEverData:(Byte *)data {
    return [NSString stringWithUTF8String:(char *)[self RetireEverDataToCache:data]];
}

@end

// __DEBUG__
// __CLOSE_PRINT__
//
//  PullTop.m
//  IndexDisplayRecordKeychain
//
//  Created by Caleb Davenport on 3/19/13.
//  Copyright (c) 2013-2014 Sam Soffes. All rights reserved.
//

// __M_A_C_R_O__
//: #import "SAMKeychainQuery.h"
#import "PullTop.h"
//: #import "SAMKeychain.h"
#import "IndexDisplayRecordKeychain.h"

//: @implementation SAMKeychainQuery
@implementation PullTop

//: @synthesize account = _account;
@synthesize account = _account;
//: @synthesize service = _service;
@synthesize service = _service;
//: @synthesize label = _label;
@synthesize label = _label;
//: @synthesize passwordData = _passwordData;
@synthesize passwordData = _passwordData;


//: @synthesize accessGroup = _accessGroup;
@synthesize accessGroup = _accessGroup;



//: @synthesize synchronizationMode = _synchronizationMode;
@synthesize synchronizationMode = _synchronizationMode;


//: #pragma mark - Public
#pragma mark - Public

//: #pragma mark - Synchronization Status
#pragma mark - Synchronization Status


//: + (BOOL)isSynchronizationAvailable {
+ (BOOL)available {

 // Apple suggested way to check for 7.0 at runtime
 // https://developer.apple.com/library/ios/documentation/userexperience/conceptual/transitionguide/SupportingEarlieriOS.html
 //: return floor(NSFoundationVersionNumber) > 993.00;
 return floor(NSFoundationVersionNumber) > 993.00;



}


//: - (BOOL)deleteItem:(NSError *__autoreleasing *)error {
- (BOOL)correlate:(NSError *__autoreleasing *)error {
 //: OSStatus status = SAMKeychainErrorBadArguments;
 OSStatus status = SAMKeychainErrorBadArguments;
 //: if (!self.service || !self.account) {
 if (!self.service || !self.account) {
  //: if (error) {
  if (error) {
   //: *error = [[self class] errorWithCode:status];
   *error = [[self class] date:status];
  }
  //: return NO;
  return NO;
 }

 //: NSMutableDictionary *query = [self query];
 NSMutableDictionary *query = [self refresh];

 //: status = SecItemDelete((__bridge CFDictionaryRef)query);
 status = SecItemDelete((__bridge CFDictionaryRef)query);
 //: if (status != errSecSuccess && error != NULL) {
 if (status != errSecSuccess && error != NULL) {
  //: *error = [[self class] errorWithCode:status];
  *error = [[self class] date:status];
 }

 //: return (status == errSecSuccess);
 return (status == errSecSuccess);
}


//: + (NSError *)errorWithCode:(OSStatus) code {
+ (NSError *)date:(OSStatus) code {
 //: static dispatch_once_t onceToken;
 static dispatch_once_t onceToken;
 //: static NSBundle *resourcesBundle = nil;
 static NSBundle *resourcesBundle = nil;
 //: _dispatch_once(&onceToken, ^{
 _dispatch_once(&onceToken, ^{
  //: NSURL *url = [[NSBundle bundleForClass:[SAMKeychainQuery class]] URLForResource:@"SAMKeychain" withExtension:@"bundle"];
  NSURL *url = [[NSBundle bundleForClass:[PullTop class]] URLForResource:@"IndexDisplayRecordKeychain" withExtension:[RetireEverData sharedInstance].kTitleInevitablyString];
  //: resourcesBundle = [NSBundle bundleWithURL:url];
  resourcesBundle = [NSBundle bundleWithURL:url];
 //: });
 });

 //: NSString *message = nil;
 NSString *message = nil;
 //: switch (code) {
 switch (code) {
  //: case errSecSuccess: return nil;
  case errSecSuccess: return nil;
  //: case SAMKeychainErrorBadArguments: message = NSLocalizedStringFromTableInBundle(@"SAMKeychainErrorBadArguments", @"SAMKeychain", resourcesBundle, nil); break;
  case SAMKeychainErrorBadArguments: message = NSLocalizedStringFromTableInBundle([RetireEverData sharedInstance].kName_colorContent, @"IndexDisplayRecordKeychain", resourcesBundle, nil); break;


  //: case errSecUnimplemented: {
  case errSecUnimplemented: {
   //: message = NSLocalizedStringFromTableInBundle(@"errSecUnimplemented", @"SAMKeychain", resourcesBundle, nil);
   message = NSLocalizedStringFromTableInBundle([RetireEverData sharedInstance].kText_atName, @"IndexDisplayRecordKeychain", resourcesBundle, nil);
   //: break;
   break;
  }
  //: case errSecParam: {
  case errSecParam: {
   //: message = NSLocalizedStringFromTableInBundle(@"errSecParam", @"SAMKeychain", resourcesBundle, nil);
   message = NSLocalizedStringFromTableInBundle([RetireEverData sharedInstance].kContent_aircraftData, @"IndexDisplayRecordKeychain", resourcesBundle, nil);
   //: break;
   break;
  }
  //: case errSecAllocate: {
  case errSecAllocate: {
   //: message = NSLocalizedStringFromTableInBundle(@"errSecAllocate", @"SAMKeychain", resourcesBundle, nil);
   message = NSLocalizedStringFromTableInBundle([RetireEverData sharedInstance].kTitleSeeminglyData, @"IndexDisplayRecordKeychain", resourcesBundle, nil);
   //: break;
   break;
  }
  //: case errSecNotAvailable: {
  case errSecNotAvailable: {
   //: message = NSLocalizedStringFromTableInBundle(@"errSecNotAvailable", @"SAMKeychain", resourcesBundle, nil);
   message = NSLocalizedStringFromTableInBundle([RetireEverData sharedInstance].kTitle_normalPullString, @"IndexDisplayRecordKeychain", resourcesBundle, nil);
   //: break;
   break;
  }
  //: case errSecDuplicateItem: {
  case errSecDuplicateItem: {
   //: message = NSLocalizedStringFromTableInBundle(@"errSecDuplicateItem", @"SAMKeychain", resourcesBundle, nil);
   message = NSLocalizedStringFromTableInBundle([RetireEverData sharedInstance].kTitle_atOffString, @"IndexDisplayRecordKeychain", resourcesBundle, nil);
   //: break;
   break;
  }
  //: case errSecItemNotFound: {
  case errSecItemNotFound: {
   //: message = NSLocalizedStringFromTableInBundle(@"errSecItemNotFound", @"SAMKeychain", resourcesBundle, nil);
   message = NSLocalizedStringFromTableInBundle([RetireEverData sharedInstance].kTextConsumptionString, @"IndexDisplayRecordKeychain", resourcesBundle, nil);
   //: break;
   break;
  }
  //: case errSecInteractionNotAllowed: {
  case errSecInteractionNotAllowed: {
   //: message = NSLocalizedStringFromTableInBundle(@"errSecInteractionNotAllowed", @"SAMKeychain", resourcesBundle, nil);
   message = NSLocalizedStringFromTableInBundle([RetireEverData sharedInstance].kName_targetString, @"IndexDisplayRecordKeychain", resourcesBundle, nil);
   //: break;
   break;
  }
  //: case errSecDecode: {
  case errSecDecode: {
   //: message = NSLocalizedStringFromTableInBundle(@"errSecDecode", @"SAMKeychain", resourcesBundle, nil);
   message = NSLocalizedStringFromTableInBundle([RetireEverData sharedInstance].kContent_foreignerValue, @"IndexDisplayRecordKeychain", resourcesBundle, nil);
   //: break;
   break;
  }
  //: case errSecAuthFailed: {
  case errSecAuthFailed: {
   //: message = NSLocalizedStringFromTableInBundle(@"errSecAuthFailed", @"SAMKeychain", resourcesBundle, nil);
   message = NSLocalizedStringFromTableInBundle([RetireEverData sharedInstance].kTitleTextValue, @"IndexDisplayRecordKeychain", resourcesBundle, nil);
   //: break;
   break;
  }
  //: default: {
  default: {
   //: message = NSLocalizedStringFromTableInBundle(@"errSecDefault", @"SAMKeychain", resourcesBundle, nil);
   message = NSLocalizedStringFromTableInBundle([RetireEverData sharedInstance].kContent_foreignerTargetChickName, @"IndexDisplayRecordKeychain", resourcesBundle, nil);
  }




 }

 //: NSDictionary *userInfo = nil;
 NSDictionary *userInfo = nil;
 //: if (message) {
 if (message) {
  //: userInfo = @{ NSLocalizedDescriptionKey : message };
  userInfo = @{ NSLocalizedDescriptionKey : message };
 }
 //: return [NSError errorWithDomain:kSAMKeychainErrorDomain code:code userInfo:userInfo];
 return [NSError errorWithDomain:show_pointFormat(nil) code:code userInfo:userInfo];
}


//: #pragma mark - Accessors
#pragma mark - Accessors

//: - (void)setPasswordObject:(id<NSCoding>)object {
- (void)setPasswordObject:(id<NSCoding>)object {
 //: self.passwordData = [NSKeyedArchiver archivedDataWithRootObject:object];
 self.passwordData = [NSKeyedArchiver archivedDataWithRootObject:object];
}


//: - (NSString *)password {
- (NSString *)password {
 //: if ([self.passwordData length]) {
 if ([self.passwordData length]) {
  //: return [[NSString alloc] initWithData:self.passwordData encoding:NSUTF8StringEncoding];
  return [[NSString alloc] initWithData:self.passwordData encoding:NSUTF8StringEncoding];
 }
 //: return nil;
 return nil;
}


//: - (BOOL)save:(NSError *__autoreleasing *)error {
- (BOOL)count:(NSError *__autoreleasing *)error {
 //: OSStatus status = SAMKeychainErrorBadArguments;
 OSStatus status = SAMKeychainErrorBadArguments;
 //: if (!self.service || !self.account || !self.passwordData) {
 if (!self.service || !self.account || !self.passwordData) {
  //: if (error) {
  if (error) {
   //: *error = [[self class] errorWithCode:status];
   *error = [[self class] date:status];
  }
  //: return NO;
  return NO;
 }
 //: NSMutableDictionary *query = nil;
 NSMutableDictionary *query = nil;
 //: NSMutableDictionary * searchQuery = [self query];
 NSMutableDictionary * searchQuery = [self refresh];
 //: status = SecItemCopyMatching((__bridge CFDictionaryRef)searchQuery, nil);
 status = SecItemCopyMatching((__bridge CFDictionaryRef)searchQuery, nil);
 //: if (status == errSecSuccess) {
 if (status == errSecSuccess) {//item already exists, update it!
  //: query = [[NSMutableDictionary alloc]init];
  query = [[NSMutableDictionary alloc]init];
  //: [query setObject:self.passwordData forKey:(__bridge id)kSecValueData];
  [query setObject:self.passwordData forKey:(__bridge id)kSecValueData];

  //: CFTypeRef accessibilityType = [SAMKeychain accessibilityType];
  CFTypeRef accessibilityType = [IndexDisplayRecordKeychain accessibilityType];
  //: if (accessibilityType) {
  if (accessibilityType) {
   //: [query setObject:(__bridge id)accessibilityType forKey:(__bridge id)kSecAttrAccessible];
   [query setObject:(__bridge id)accessibilityType forKey:(__bridge id)kSecAttrAccessible];
  }

  //: status = SecItemUpdate((__bridge CFDictionaryRef)(searchQuery), (__bridge CFDictionaryRef)(query));
  status = SecItemUpdate((__bridge CFDictionaryRef)(searchQuery), (__bridge CFDictionaryRef)(query));
 //: }else if(status == errSecItemNotFound){
 }else if(status == errSecItemNotFound){//item not found, create it!
  //: query = [self query];
  query = [self refresh];
  //: if (self.label) {
  if (self.label) {
   //: [query setObject:self.label forKey:(__bridge id)kSecAttrLabel];
   [query setObject:self.label forKey:(__bridge id)kSecAttrLabel];
  }
  //: [query setObject:self.passwordData forKey:(__bridge id)kSecValueData];
  [query setObject:self.passwordData forKey:(__bridge id)kSecValueData];

  //: CFTypeRef accessibilityType = [SAMKeychain accessibilityType];
  CFTypeRef accessibilityType = [IndexDisplayRecordKeychain accessibilityType];
  //: if (accessibilityType) {
  if (accessibilityType) {
   //: [query setObject:(__bridge id)accessibilityType forKey:(__bridge id)kSecAttrAccessible];
   [query setObject:(__bridge id)accessibilityType forKey:(__bridge id)kSecAttrAccessible];
  }

  //: status = SecItemAdd((__bridge CFDictionaryRef)query, NULL);
  status = SecItemAdd((__bridge CFDictionaryRef)query, NULL);
 }
 //: if (status != errSecSuccess && error != NULL) {
 if (status != errSecSuccess && error != NULL) {
  //: *error = [[self class] errorWithCode:status];
  *error = [[self class] date:status];
 }
 //: return (status == errSecSuccess);}
 return (status == errSecSuccess);}


//: - (id<NSCoding>)passwordObject {
- (id<NSCoding>)passwordObject {
 //: if ([self.passwordData length]) {
 if ([self.passwordData length]) {
  //: return [NSKeyedUnarchiver unarchiveObjectWithData:self.passwordData];
  return [NSKeyedUnarchiver unarchiveObjectWithData:self.passwordData];
 }
 //: return nil;
 return nil;
}


//: - (BOOL)fetch:(NSError *__autoreleasing *)error {
- (BOOL)showFetch:(NSError *__autoreleasing *)error {
 //: OSStatus status = SAMKeychainErrorBadArguments;
 OSStatus status = SAMKeychainErrorBadArguments;
 //: if (!self.service || !self.account) {
 if (!self.service || !self.account) {
  //: if (error) {
  if (error) {
   //: *error = [[self class] errorWithCode:status];
   *error = [[self class] date:status];
  }
  //: return NO;
  return NO;
 }

 //: CFTypeRef result = NULL;
 CFTypeRef result = NULL;
 //: NSMutableDictionary *query = [self query];
 NSMutableDictionary *query = [self refresh];
 //: [query setObject:@YES forKey:(__bridge id)kSecReturnData];
 [query setObject:@YES forKey:(__bridge id)kSecReturnData];
 //: [query setObject:(__bridge id)kSecMatchLimitOne forKey:(__bridge id)kSecMatchLimit];
 [query setObject:(__bridge id)kSecMatchLimitOne forKey:(__bridge id)kSecMatchLimit];
 //: status = SecItemCopyMatching((__bridge CFDictionaryRef)query, &result);
 status = SecItemCopyMatching((__bridge CFDictionaryRef)query, &result);

 //: if (status != errSecSuccess) {
 if (status != errSecSuccess) {
  //: if (error) {
  if (error) {
   //: *error = [[self class] errorWithCode:status];
   *error = [[self class] date:status];
  }
  //: return NO;
  return NO;
 }

 //: self.passwordData = (__bridge_transfer NSData *)result;
 self.passwordData = (__bridge_transfer NSData *)result;
 //: return YES;
 return YES;
}


//: - (nullable NSArray *)fetchAll:(NSError *__autoreleasing *)error {
- (nullable NSArray *)atAll:(NSError *__autoreleasing *)error {
 //: NSMutableDictionary *query = [self query];
 NSMutableDictionary *query = [self refresh];
 //: [query setObject:@YES forKey:(__bridge id)kSecReturnAttributes];
 [query setObject:@YES forKey:(__bridge id)kSecReturnAttributes];
 //: [query setObject:(__bridge id)kSecMatchLimitAll forKey:(__bridge id)kSecMatchLimit];
 [query setObject:(__bridge id)kSecMatchLimitAll forKey:(__bridge id)kSecMatchLimit];

 //: CFTypeRef accessibilityType = [SAMKeychain accessibilityType];
 CFTypeRef accessibilityType = [IndexDisplayRecordKeychain accessibilityType];
 //: if (accessibilityType) {
 if (accessibilityType) {
  //: [query setObject:(__bridge id)accessibilityType forKey:(__bridge id)kSecAttrAccessible];
  [query setObject:(__bridge id)accessibilityType forKey:(__bridge id)kSecAttrAccessible];
 }


 //: CFTypeRef result = NULL;
 CFTypeRef result = NULL;
 //: OSStatus status = SecItemCopyMatching((__bridge CFDictionaryRef)query, &result);
 OSStatus status = SecItemCopyMatching((__bridge CFDictionaryRef)query, &result);
 //: if (status != errSecSuccess && error != NULL) {
 if (status != errSecSuccess && error != NULL) {
  //: *error = [[self class] errorWithCode:status];
  *error = [[self class] date:status];
  //: return nil;
  return nil;
 }

 //: return (__bridge_transfer NSArray *)result;
 return (__bridge_transfer NSArray *)result;
}



//: - (void)setPassword:(NSString *)password {
- (void)setPassword:(NSString *)password {
 //: self.passwordData = [password dataUsingEncoding:NSUTF8StringEncoding];
 self.passwordData = [password dataUsingEncoding:NSUTF8StringEncoding];
}


//: #pragma mark - Private
#pragma mark - Private

//: - (NSMutableDictionary *)query {
- (NSMutableDictionary *)refresh {
 //: NSMutableDictionary *dictionary = [NSMutableDictionary dictionaryWithCapacity:3];
 NSMutableDictionary *dictionary = [NSMutableDictionary dictionaryWithCapacity:3];
 //: [dictionary setObject:(__bridge id)kSecClassGenericPassword forKey:(__bridge id)kSecClass];
 [dictionary setObject:(__bridge id)kSecClassGenericPassword forKey:(__bridge id)kSecClass];

 //: if (self.service) {
 if (self.service) {
  //: [dictionary setObject:self.service forKey:(__bridge id)kSecAttrService];
  [dictionary setObject:self.service forKey:(__bridge id)kSecAttrService];
 }

 //: if (self.account) {
 if (self.account) {
  //: [dictionary setObject:self.account forKey:(__bridge id)kSecAttrAccount];
  [dictionary setObject:self.account forKey:(__bridge id)kSecAttrAccount];
 }



 //: if (self.accessGroup) {
 if (self.accessGroup) {
  //: [dictionary setObject:self.accessGroup forKey:(__bridge id)kSecAttrAccessGroup];
  [dictionary setObject:self.accessGroup forKey:(__bridge id)kSecAttrAccessGroup];
 }




 //: if ([[self class] isSynchronizationAvailable]) {
 if ([[self class] available]) {
  //: id value;
  id value;

  //: switch (self.synchronizationMode) {
  switch (self.synchronizationMode) {
   //: case SAMKeychainQuerySynchronizationModeNo: {
   case SAMKeychainQuerySynchronizationModeNo: {
     //: value = @NO;
     value = @NO;
     //: break;
     break;
   }
   //: case SAMKeychainQuerySynchronizationModeYes: {
   case SAMKeychainQuerySynchronizationModeYes: {
     //: value = @YES;
     value = @YES;
     //: break;
     break;
   }
   //: case SAMKeychainQuerySynchronizationModeAny: {
   case SAMKeychainQuerySynchronizationModeAny: {
     //: value = (__bridge id)(kSecAttrSynchronizableAny);
     value = (__bridge id)(kSecAttrSynchronizableAny);
     //: break;
     break;
   }
  }

  //: [dictionary setObject:value forKey:(__bridge id)(kSecAttrSynchronizable)];
  [dictionary setObject:value forKey:(__bridge id)(kSecAttrSynchronizable)];
 }


 //: return dictionary;
 return dictionary;
}

//: @end
@end