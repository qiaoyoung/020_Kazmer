
#import <Foundation/Foundation.h>

NSString *StringFromOceanLinerData(Byte *data);        


//: Voice
Byte showAverPath[] = {72, 5, 89, 6, 52, 10, 253, 22, 16, 10, 12, 26};

//: .zip
Byte kEngineName[] = {18, 4, 23, 4, 23, 99, 82, 89, 16};

//: %@@%dx.png
Byte dreamDiversityIdent[] = {64, 10, 37, 13, 244, 170, 123, 239, 124, 14, 158, 63, 15, 0, 27, 27, 0, 63, 83, 9, 75, 73, 66, 18};

//: xml_file
Byte kGenerateValue[] = {47, 8, 29, 5, 126, 91, 80, 79, 66, 73, 76, 79, 72, 88};

//: %@.imageset
Byte kShowerFormat[] = {10, 11, 47, 11, 206, 178, 102, 200, 93, 176, 243, 246, 17, 255, 58, 62, 50, 56, 54, 68, 54, 69, 19};

//: file
Byte kCommentIdent[] = {20, 4, 49, 8, 89, 237, 223, 84, 53, 56, 59, 52, 113};

//: Emoji
Byte app_matchMsg[] = {4, 5, 95, 4, 230, 14, 16, 11, 10, 82};

//: kSSZipArchiveManagerVersionKey
Byte kMyName[] = {20, 30, 38, 5, 14, 69, 45, 45, 52, 67, 74, 27, 76, 61, 66, 67, 80, 63, 39, 59, 72, 59, 65, 63, 76, 48, 63, 76, 77, 67, 73, 72, 37, 63, 83, 15};

//: Lproj
Byte notiUndergoStr[] = {44, 5, 72, 4, 4, 40, 42, 39, 34, 18};

//: %@.png
Byte app_treatStatusInsistValue[] = {69, 6, 68, 5, 143, 225, 252, 234, 44, 42, 35, 175};

//: html
Byte appTreatPath[] = {59, 4, 19, 7, 245, 156, 12, 85, 97, 90, 89, 71};

//: DrawSortAdapter
Byte mainTransportContent[] = {90, 15, 38, 10, 156, 80, 74, 196, 181, 193, 30, 76, 59, 81, 45, 73, 76, 78, 27, 62, 59, 74, 78, 63, 76, 160};

//: Image
Byte kFeverName[] = {51, 5, 94, 6, 76, 227, 235, 15, 3, 9, 7, 7};

// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import "SSZipArchiveManager.h"
#import "EmptyTing.h"
//: #import "NTESMigrateHeader.h"
#import "QuickInfo.h"

//: @interface SSZipArchiveManager()
@interface EmptyTing()

//: @property (nonatomic, strong) NSString *appResPath;
@property (nonatomic, strong) NSString *appResPath;

//: @end
@end

//: @implementation SSZipArchiveManager
@implementation EmptyTing

//: + (instancetype)sharedManager {
+ (instancetype)intervalegrated {
    //: static SSZipArchiveManager *sharedInstance = nil;
    static EmptyTing *sharedInstance = nil;
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: sharedInstance = [[self alloc] init];
        sharedInstance = [[self alloc] init];
    //: });
    });
    //: return sharedInstance;
    return sharedInstance;
}

//: + (instancetype)allocWithZone:(struct _NSZone *)zone {
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    //: static dispatch_once_t onceToken;
    static dispatch_once_t onceToken;
    //: static SSZipArchiveManager *sharedInstance = nil;
    static EmptyTing *sharedInstance = nil;
    //: _dispatch_once(&onceToken, ^{
    _dispatch_once(&onceToken, ^{
        //: sharedInstance = [super allocWithZone:zone];
        sharedInstance = [super allocWithZone:zone];
    //: });
    });
    //: return sharedInstance;
    return sharedInstance;
}

//: - (id)copyWithZone:(NSZone *)zone {
- (id)should:(NSZone *)zone {
    //: return self;
    return self;
}

//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _appResPath = [self calculateAppResPath];
        _appResPath = [self action];
    }
    //: return self;
    return self;
}

//: - (NSString *)calculateAppResPath {
- (NSString *)action {
    //: NSString *docuPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *docuPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    //: NSString *resDir = [docuPath stringByAppendingPathComponent:@"DrawSortAdapter"];
    NSString *resDir = [docuPath stringByAppendingPathComponent:StringFromOceanLinerData(mainTransportContent)];

    //: NSString *version = [[NSUserDefaults standardUserDefaults] stringForKey:@"kSSZipArchiveManagerVersionKey"];
    NSString *version = [[NSUserDefaults standardUserDefaults] stringForKey:StringFromOceanLinerData(kMyName)];
    //: if (!version) {
    if (!version) {
        //: version = @""; 
        version = @""; // Default to empty string if nil
    }


    //: if ([version isEqualToString:[NTESMigrateHeader initWithDefaultConfig].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
    if ([version isEqualToString:[QuickInfo initWithBefore].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
        //: return resDir;
        return resDir;
    }

    //: NSString *fileResDir = [[docuPath stringByAppendingPathComponent:@"file"] stringByAppendingPathComponent:@"DrawSortAdapter"];
    NSString *fileResDir = [[docuPath stringByAppendingPathComponent:StringFromOceanLinerData(kCommentIdent)] stringByAppendingPathComponent:StringFromOceanLinerData(mainTransportContent)];
    //: if ([version isEqualToString:[NTESMigrateHeader initWithDefaultConfig].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:fileResDir]) {
    if ([version isEqualToString:[QuickInfo initWithBefore].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:fileResDir]) {
        //: return fileResDir;
        return fileResDir;
    }

    //: NSString *path = [[MyUserKit sharedKit].emoticonBundle pathForResource:@"DrawSortAdapter" ofType:@".zip"];
    NSString *path = [[ButtonKit sheerOption].emoticonBundle pathForResource:StringFromOceanLinerData(mainTransportContent) ofType:StringFromOceanLinerData(kEngineName)];
    //: if (!path) {
    if (!path) {
        //: return @""; 
        return @""; // Return empty string if path is nil
    }

    //: BOOL zipSuc = [SSZipArchive unzipFileAtPath:path
    BOOL zipSuc = [SSZipArchive unzipFileAtPath:path
                                 //: toDestination:docuPath
                                 toDestination:docuPath
                                     //: overwrite:YES
                                     overwrite:YES
                                      //: password:@"DrawSortAdapter"
                                      password:StringFromOceanLinerData(mainTransportContent)
                                         //: error:nil];
                                         error:nil];
    //: if (zipSuc) {
    if (zipSuc) {
        //: [[NSUserDefaults standardUserDefaults] setObject:[NTESMigrateHeader initWithDefaultConfig].appVersion forKey:@"kSSZipArchiveManagerVersionKey"];
        [[NSUserDefaults standardUserDefaults] setObject:[QuickInfo initWithBefore].appVersion forKey:StringFromOceanLinerData(kMyName)];
        //: [[NSUserDefaults standardUserDefaults] synchronize];
        [[NSUserDefaults standardUserDefaults] synchronize];
        //: if ([[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
        if ([[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
            //: return resDir;
            return resDir;
        //: } else {
        } else {
            //: return fileResDir;
            return fileResDir;
        }
    }

    //: return @""; 
    return @""; // Return empty string if unzip fails
}

//: - (NSString *)getHtml_filePath {
- (NSString *)panoramicView {
    //: return [_appResPath stringByAppendingPathComponent:@"html"];
    return [_appResPath stringByAppendingPathComponent:StringFromOceanLinerData(appTreatPath)];
}

//: - (NSString *)getXML_filePath {
- (NSString *)fileAdd {
    //: return [_appResPath stringByAppendingPathComponent:@"xml_file"];
    return [_appResPath stringByAppendingPathComponent:StringFromOceanLinerData(kGenerateValue)];
}

//: - (NSString *)getEmojiPath {
- (NSString *)gray {
    //: return [_appResPath stringByAppendingPathComponent:@"Emoji"];
    return [_appResPath stringByAppendingPathComponent:StringFromOceanLinerData(app_matchMsg)];
}

//: - (NSString *)getLprojPath {
- (NSString *)from {
    //: return [_appResPath stringByAppendingPathComponent:@"Lproj"];
    return [_appResPath stringByAppendingPathComponent:StringFromOceanLinerData(notiUndergoStr)];
}

//: - (NSString *)getVoicePath {
- (NSString *)session {
    //: return [_appResPath stringByAppendingPathComponent:@"Voice"];
    return [_appResPath stringByAppendingPathComponent:StringFromOceanLinerData(showAverPath)];
}

//: - (NSString *)getImagesPath {
- (NSString *)sizePath {
    //: return [_appResPath stringByAppendingPathComponent:@"Image"];
    return [_appResPath stringByAppendingPathComponent:StringFromOceanLinerData(kFeverName)];
}

//: - (UIImage *)zip_imageNamed:(NSString *)name {
- (UIImage *)deciphers:(NSString *)name {
    // 构建 imageset 路径
    //: NSString *imagesetPath = [[self getImagesPath] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.imageset", name]];
    NSString *imagesetPath = [[self sizePath] stringByAppendingPathComponent:[NSString stringWithFormat:StringFromOceanLinerData(kShowerFormat), name]];

    // 尝试加载 @2x 和 @3x 图片
    //: CGFloat scale = [UIScreen mainScreen].scale;
    CGFloat scale = [UIScreen mainScreen].scale;
    //: NSString *scaledName = [NSString stringWithFormat:@"%@@%dx.png", name, (int)scale];
    NSString *scaledName = [NSString stringWithFormat:StringFromOceanLinerData(dreamDiversityIdent), name, (int)scale];
    //: NSString *scaledPath = [imagesetPath stringByAppendingPathComponent:scaledName];
    NSString *scaledPath = [imagesetPath stringByAppendingPathComponent:scaledName];

    //: if ([[NSFileManager defaultManager] fileExistsAtPath:scaledPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:scaledPath]) {
        //: return [UIImage imageWithContentsOfFile:scaledPath];
        return [UIImage imageWithContentsOfFile:scaledPath];
    }

    // 降级到其他倍数图片
    //: NSString *altScaleName = [NSString stringWithFormat:@"%@@%dx.png", name, (scale == 2 ? 3 : 2)];
    NSString *altScaleName = [NSString stringWithFormat:StringFromOceanLinerData(dreamDiversityIdent), name, (scale == 2 ? 3 : 2)];
    //: NSString *altScalePath = [imagesetPath stringByAppendingPathComponent:altScaleName];
    NSString *altScalePath = [imagesetPath stringByAppendingPathComponent:altScaleName];

    //: if ([[NSFileManager defaultManager] fileExistsAtPath:altScalePath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:altScalePath]) {
        //: return [UIImage imageWithContentsOfFile:altScalePath];
        return [UIImage imageWithContentsOfFile:altScalePath];
    }

    // 最后尝试普通图片
    //: NSString *normalPath = [imagesetPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.png", name]];
    NSString *normalPath = [imagesetPath stringByAppendingPathComponent:[NSString stringWithFormat:StringFromOceanLinerData(app_treatStatusInsistValue), name]];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:normalPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:normalPath]) {
        //: return [UIImage imageWithContentsOfFile:normalPath];
        return [UIImage imageWithContentsOfFile:normalPath];
    }

    //: return nil;
    return nil;
}

//: @end
@end

Byte * OceanLinerDataToCache(Byte *data) {
    int demon = data[0];
    int palFrequency = data[1];
    Byte specific = data[2];
    int juryToss = data[3];
    if (!demon) return data + juryToss;
    for (int i = juryToss; i < juryToss + palFrequency; i++) {
        int value = data[i] + specific;
        if (value > 255) {
            value -= 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[juryToss + palFrequency] = 0;
    return data + juryToss;
}

NSString *StringFromOceanLinerData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)OceanLinerDataToCache(data)];
}
