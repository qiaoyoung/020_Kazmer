
#import <Foundation/Foundation.h>

NSString *StringFromPrelimStoryData(Byte *data);


//: kSSZipArchiveManagerVersionKey
Byte kTitleDespiteData[] = {66, 30, 22, 4, 129, 105, 105, 112, 127, 134, 87, 136, 121, 126, 127, 140, 123, 99, 119, 132, 119, 125, 123, 136, 108, 123, 136, 137, 127, 133, 132, 97, 123, 143, 137};

//: html
Byte kName_troubledString[] = {75, 4, 81, 14, 131, 158, 186, 75, 50, 222, 107, 108, 133, 124, 185, 197, 190, 189, 78};

//: xml_file
Byte kTitleExceptSeedName[] = {90, 8, 2, 8, 220, 42, 59, 163, 122, 111, 110, 97, 104, 107, 110, 103, 10};

//: Voice
Byte kTextSingTitle[] = {52, 5, 80, 4, 166, 191, 185, 179, 181, 136};

//: %@.imageset
Byte kTitle_securityFierceData[] = {85, 11, 21, 13, 244, 106, 101, 86, 241, 240, 206, 255, 169, 58, 85, 67, 126, 130, 118, 124, 122, 136, 122, 137, 98};

//: %@@%dx.png
Byte kNameRelativelyValue[] = {88, 10, 66, 10, 45, 230, 161, 211, 27, 251, 103, 130, 130, 103, 166, 186, 112, 178, 176, 169, 219};

//: Lproj
Byte kTitleDeployData[] = {90, 5, 7, 10, 14, 36, 169, 155, 51, 141, 83, 119, 121, 118, 113, 27};

//: Emoji
Byte kTitleEstateString[] = {46, 5, 81, 5, 37, 150, 190, 192, 187, 186, 110};

//: Image
Byte kContent_wrapString[] = {1, 5, 71, 8, 101, 35, 141, 221, 144, 180, 168, 174, 172, 39};

//: file
Byte kTitleQualityText[] = {96, 4, 35, 4, 137, 140, 143, 136, 80};

//: %@.png
Byte kTextPhenomenonTitle[] = {58, 6, 17, 10, 205, 16, 193, 208, 178, 150, 54, 81, 63, 129, 127, 120, 249};

//: DrawSortAdapter
Byte kTitle_meaningHeavilyText[] = {42, 15, 35, 13, 193, 85, 161, 203, 62, 22, 236, 93, 233, 103, 149, 132, 154, 118, 146, 149, 151, 100, 135, 132, 147, 151, 136, 149, 73};

//: .zip
Byte kTextArrestButName[] = {62, 4, 64, 10, 144, 133, 1, 166, 99, 139, 110, 186, 169, 176, 50};

// __DEBUG__
// __CLOSE_PRINT__

// __M_A_C_R_O__
//: #import "SSZipArchiveManager.h"
#import "PersonShould.h"
//: #import "USERMigrateHeader.h"
#import "ActionLabel.h"

//: @interface SSZipArchiveManager()
@interface PersonShould()

//: @property (nonatomic, strong) NSString *appResPath;
@property (nonatomic, strong) NSString *appResPath;

//: @end
@end

//: @implementation SSZipArchiveManager
@implementation PersonShould

//: - (NSString *)getXML_filePath {
- (NSString *)blueImageClean {
    //: return [_appResPath stringByAppendingPathComponent:@"xml_file"];
    return [_appResPath stringByAppendingPathComponent:StringFromPrelimStoryData(kTitleExceptSeedName)];
}

//: + (instancetype)sharedManager {
+ (instancetype)commonKey {
    //: static SSZipArchiveManager *sharedInstance = nil;
    static PersonShould *sharedInstance = nil;
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
    static PersonShould *sharedInstance = nil;
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
- (id)containerShow:(NSZone *)zone {
    //: return self;
    return self;
}

//: - (NSString *)getImagesPath {
- (NSString *)fixing {
    //: return [_appResPath stringByAppendingPathComponent:@"Image"];
    return [_appResPath stringByAppendingPathComponent:StringFromPrelimStoryData(kContent_wrapString)];
}

//: - (NSString *)getHtml_filePath {
- (NSString *)info {
    //: return [_appResPath stringByAppendingPathComponent:@"html"];
    return [_appResPath stringByAppendingPathComponent:StringFromPrelimStoryData(kName_troubledString)];
}

//: - (UIImage *)zip_imageNamed:(NSString *)name {
- (UIImage *)imaginationImage:(NSString *)name {
    // 构建 imageset 路径
    //: NSString *imagesetPath = [[self getImagesPath] stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.imageset", name]];
    NSString *imagesetPath = [[self fixing] stringByAppendingPathComponent:[NSString stringWithFormat:StringFromPrelimStoryData(kTitle_securityFierceData), name]];

    // 尝试加载 @2x 和 @3x 图片
    //: CGFloat scale = [UIScreen mainScreen].scale;
    CGFloat scale = [UIScreen mainScreen].scale;
    //: NSString *scaledName = [NSString stringWithFormat:@"%@@%dx.png", name, (int)scale];
    NSString *scaledName = [NSString stringWithFormat:StringFromPrelimStoryData(kNameRelativelyValue), name, (int)scale];
    //: NSString *scaledPath = [imagesetPath stringByAppendingPathComponent:scaledName];
    NSString *scaledPath = [imagesetPath stringByAppendingPathComponent:scaledName];

    //: if ([[NSFileManager defaultManager] fileExistsAtPath:scaledPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:scaledPath]) {
        //: return [UIImage imageWithContentsOfFile:scaledPath];
        return [UIImage imageWithContentsOfFile:scaledPath];
    }

    // 降级到其他倍数图片
    //: NSString *altScaleName = [NSString stringWithFormat:@"%@@%dx.png", name, (scale == 2 ? 3 : 2)];
    NSString *altScaleName = [NSString stringWithFormat:StringFromPrelimStoryData(kNameRelativelyValue), name, (scale == 2 ? 3 : 2)];
    //: NSString *altScalePath = [imagesetPath stringByAppendingPathComponent:altScaleName];
    NSString *altScalePath = [imagesetPath stringByAppendingPathComponent:altScaleName];

    //: if ([[NSFileManager defaultManager] fileExistsAtPath:altScalePath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:altScalePath]) {
        //: return [UIImage imageWithContentsOfFile:altScalePath];
        return [UIImage imageWithContentsOfFile:altScalePath];
    }

    // 最后尝试普通图片
    //: NSString *normalPath = [imagesetPath stringByAppendingPathComponent:[NSString stringWithFormat:@"%@.png", name]];
    NSString *normalPath = [imagesetPath stringByAppendingPathComponent:[NSString stringWithFormat:StringFromPrelimStoryData(kTextPhenomenonTitle), name]];
    //: if ([[NSFileManager defaultManager] fileExistsAtPath:normalPath]) {
    if ([[NSFileManager defaultManager] fileExistsAtPath:normalPath]) {
        //: return [UIImage imageWithContentsOfFile:normalPath];
        return [UIImage imageWithContentsOfFile:normalPath];
    }

    //: return nil;
    return nil;
}

//: - (NSString *)getEmojiPath {
- (NSString *)getText {
    //: return [_appResPath stringByAppendingPathComponent:@"Emoji"];
    return [_appResPath stringByAppendingPathComponent:StringFromPrelimStoryData(kTitleEstateString)];
}

//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: _appResPath = [self calculateAppResPath];
        _appResPath = [self user];
    }
    //: return self;
    return self;
}

//: - (NSString *)calculateAppResPath {
- (NSString *)user {
    //: NSString *docuPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *docuPath = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    //: NSString *resDir = [docuPath stringByAppendingPathComponent:@"DrawSortAdapter"];
    NSString *resDir = [docuPath stringByAppendingPathComponent:StringFromPrelimStoryData(kTitle_meaningHeavilyText)];

    //: NSString *version = [[NSUserDefaults standardUserDefaults] stringForKey:@"kSSZipArchiveManagerVersionKey"];
    NSString *version = [[NSUserDefaults standardUserDefaults] stringForKey:StringFromPrelimStoryData(kTitleDespiteData)];
    //: if (!version) {
    if (!version) {
        //: version = @""; 
        version = @""; // Default to empty string if nil
    }


    //: if ([version isEqualToString:[USERMigrateHeader initWithDefaultConfig].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
    if ([version isEqualToString:[ActionLabel initWithTing].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:resDir]) {
        //: return resDir;
        return resDir;
    }

    //: NSString *fileResDir = [[docuPath stringByAppendingPathComponent:@"file"] stringByAppendingPathComponent:@"DrawSortAdapter"];
    NSString *fileResDir = [[docuPath stringByAppendingPathComponent:StringFromPrelimStoryData(kTitleQualityText)] stringByAppendingPathComponent:StringFromPrelimStoryData(kTitle_meaningHeavilyText)];
    //: if ([version isEqualToString:[USERMigrateHeader initWithDefaultConfig].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:fileResDir]) {
    if ([version isEqualToString:[ActionLabel initWithTing].appVersion] && [[NSFileManager defaultManager] fileExistsAtPath:fileResDir]) {
        //: return fileResDir;
        return fileResDir;
    }

    //: NSString *path = [[MyUserKit sharedKit].emoticonBundle pathForResource:@"DrawSortAdapter" ofType:@".zip"];
    NSString *path = [[Mortification text].emoticonBundle pathForResource:StringFromPrelimStoryData(kTitle_meaningHeavilyText) ofType:StringFromPrelimStoryData(kTextArrestButName)];
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
                                      password:StringFromPrelimStoryData(kTitle_meaningHeavilyText)
                                         //: error:nil];
                                         error:nil];
    //: if (zipSuc) {
    if (zipSuc) {
        //: [[NSUserDefaults standardUserDefaults] setObject:[USERMigrateHeader initWithDefaultConfig].appVersion forKey:@"kSSZipArchiveManagerVersionKey"];
        [[NSUserDefaults standardUserDefaults] setObject:[ActionLabel initWithTing].appVersion forKey:StringFromPrelimStoryData(kTitleDespiteData)];
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

//: - (NSString *)getVoicePath {
- (NSString *)disable {
    //: return [_appResPath stringByAppendingPathComponent:@"Voice"];
    return [_appResPath stringByAppendingPathComponent:StringFromPrelimStoryData(kTextSingTitle)];
}

//: - (NSString *)getLprojPath {
- (NSString *)createPath {
    //: return [_appResPath stringByAppendingPathComponent:@"Lproj"];
    return [_appResPath stringByAppendingPathComponent:StringFromPrelimStoryData(kTitleDeployData)];
}

//: @end
@end

Byte * PrelimStoryDataToCache(Byte *data) {
    int leave = data[0];
    int senPhotography = data[1];
    Byte labMar = data[2];
    int phenomenonSelecter = data[3];
    if (!leave) return data + phenomenonSelecter;
    for (int i = phenomenonSelecter; i < phenomenonSelecter + senPhotography; i++) {
        int value = data[i] - labMar;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[phenomenonSelecter + senPhotography] = 0;
    return data + phenomenonSelecter;
}

NSString *StringFromPrelimStoryData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)PrelimStoryDataToCache(data)];
}
