
#import <Foundation/Foundation.h>

NSString *StringFromChronicData(Byte *data);


//: %@pDefaults
Byte kContentWhereverValue[] = {8, 11, 55, 10, 240, 207, 188, 245, 40, 30, 92, 119, 167, 123, 156, 157, 152, 172, 163, 171, 170, 107};

//: Unsupported type of property \"%s\" in class %@
Byte kNameUniverseString[] = {56, 45, 54, 12, 177, 162, 74, 164, 122, 221, 16, 142, 139, 164, 169, 171, 166, 166, 165, 168, 170, 155, 154, 86, 170, 175, 166, 155, 86, 165, 156, 86, 166, 168, 165, 166, 155, 168, 170, 175, 86, 88, 91, 169, 88, 86, 159, 164, 86, 153, 162, 151, 169, 169, 86, 91, 118, 82};

//: setu
Byte kNameGrowString[] = {2, 4, 42, 4, 157, 143, 158, 159, 136};

// __DEBUG__
// __CLOSE_PRINT__
//
//  TableContext.m
//  TableContext
//
//  Created by Kevin Renskers on 18-12-12.
//  Copyright (c) 2012 Gangverk. All rights reserved.
//

// __M_A_C_R_O__
//: #import "NIMUserDefaults.h"
#import "TableContext.h"
//: #import <objc/runtime.h>
#import <objc/runtime.h>

//: @interface NIMUserDefaults ()
@interface TableContext ()
//: @property (strong, nonatomic) NSMutableDictionary *mapping;
@property (strong, nonatomic) NSMutableDictionary *mapping;
//: @property (strong, nonatomic) NSUserDefaults *userDefaults;
@property (strong, nonatomic) NSUserDefaults *userDefaults;
//: @end
@end

//: @implementation NIMUserDefaults
@implementation TableContext

//: enum TypeEncodings {
enum TypeEncodings {
    //: Char = 'c',
    Char = 'c',
    //: Bool = 'B',
    Bool = 'B',
    //: Short = 's',
    Short = 's',
    //: Int = 'i',
    Int = 'i',
    //: Long = 'l',
    Long = 'l',
    //: LongLong = 'q',
    LongLong = 'q',
    //: UnsignedChar = 'C',
    UnsignedChar = 'C',
    //: UnsignedShort = 'S',
    UnsignedShort = 'S',
    //: UnsignedInt = 'I',
    UnsignedInt = 'I',
    //: UnsignedLong = 'L',
    UnsignedLong = 'L',
    //: UnsignedLongLong = 'Q',
    UnsignedLongLong = 'Q',
    //: Float = 'f',
    Float = 'f',
    //: Double = 'd',
    Double = 'd',
    //: Object = '@'
    Object = '@'
//: };
};

//: - (NSString *)_transformKey:(NSString *)key {
- (NSString *)manager:(NSString *)key {
    //: if ([self respondsToSelector:@selector(transformKey:)]) {
    if ([self respondsToSelector:@selector(caned:)]) {
        //: return [self performSelector:@selector(transformKey:) withObject:key];
        return [self performSelector:@selector(caned:) withObject:key];
    }

    //: return key;
    return key;
}

//: - (NSString *)defaultsKeyForSelector:(SEL)selector {
- (NSString *)container:(SEL)selector {
    //: return [self.mapping objectForKey:NSStringFromSelector(selector)];
    return [self.mapping objectForKey:NSStringFromSelector(selector)];
}

//: - (NSString *)defaultsKeyForPropertyNamed:(char const *)propertyName {
- (NSString *)up:(char const *)propertyName {
    //: NSString *key = [NSString stringWithFormat:@"%s", propertyName];
    NSString *key = [NSString stringWithFormat:@"%s", propertyName];
    //: return [self _transformKey:key];
    return [self manager:key];
}

//: #pragma GCC diagnostic pop
#pragma GCC diagnostic pop

//: - (void)generateAccessorMethods {
- (void)at {
    //: unsigned int count = 0;
    unsigned int count = 0;
    //: objc_property_t *properties = class_copyPropertyList([self class], &count);
    objc_property_t *properties = class_copyPropertyList([self class], &count);

    //: self.mapping = [NSMutableDictionary dictionary];
    self.mapping = [NSMutableDictionary dictionary];

    //: for (int i = 0; i < count; ++i) {
    for (int i = 0; i < count; ++i) {
        //: objc_property_t property = properties[i];
        objc_property_t property = properties[i];
        //: const char *name = property_getName(property);
        const char *name = property_getName(property);
        //: const char *attributes = property_getAttributes(property);
        const char *attributes = property_getAttributes(property);

        //: char *getter = strstr(attributes, ",G");
        char *getter = strstr(attributes, ",G");
        //: if (getter) {
        if (getter) {
            //: getter = strdup(getter + 2);
            getter = strdup(getter + 2);
            //: getter = strsep(&getter, ",");
            getter = strsep(&getter, ",");
        //: } else {
        } else {
            //: getter = strdup(name);
            getter = strdup(name);
        }
        //: SEL getterSel = sel_registerName(getter);
        SEL getterSel = sel_registerName(getter);
        //: free(getter);
        free(getter);

        //: char *setter = strstr(attributes, ",S");
        char *setter = strstr(attributes, ",S");
        //: if (setter) {
        if (setter) {
            //: setter = strdup(setter + 2);
            setter = strdup(setter + 2);
            //: setter = strsep(&setter, ",");
            setter = strsep(&setter, ",");
        //: } else {
        } else {
            //: asprintf(&setter, "set%c%s:", toupper(name[0]), name + 1);
            asprintf(&setter, "set%c%s:", toupper(name[0]), name + 1);
        }
        //: SEL setterSel = sel_registerName(setter);
        SEL setterSel = sel_registerName(setter);
        //: free(setter);
        free(setter);

        //: NSString *key = [self defaultsKeyForPropertyNamed:name];
        NSString *key = [self up:name];
        //: [self.mapping setValue:key forKey:NSStringFromSelector(getterSel)];
        [self.mapping setValue:key forKey:NSStringFromSelector(getterSel)];
        //: [self.mapping setValue:key forKey:NSStringFromSelector(setterSel)];
        [self.mapping setValue:key forKey:NSStringFromSelector(setterSel)];

        //: IMP getterImp = NULL;
        IMP getterImp = NULL;
        //: IMP setterImp = NULL;
        IMP setterImp = NULL;
        //: char type = attributes[1];
        char type = attributes[1];
        //: switch (type) {
        switch (type) {
            //: case Short:
            case Short:
            //: case Long:
            case Long:
            //: case LongLong:
            case LongLong:
            //: case UnsignedChar:
            case UnsignedChar:
            //: case UnsignedShort:
            case UnsignedShort:
            //: case UnsignedInt:
            case UnsignedInt:
            //: case UnsignedLong:
            case UnsignedLong:
            //: case UnsignedLongLong:
            case UnsignedLongLong:
                //: getterImp = (IMP)longLongGetter;
                getterImp = (IMP)tabularArray;
                //: setterImp = (IMP)longLongSetter;
                setterImp = (IMP)insideSetter;
                //: break;
                break;

            //: case Bool:
            case Bool:
            //: case Char:
            case Char:
                //: getterImp = (IMP)boolGetter;
                getterImp = (IMP)perKey;
                //: setterImp = (IMP)boolSetter;
                setterImp = (IMP)teamOf;
                //: break;
                break;

            //: case Int:
            case Int:
                //: getterImp = (IMP)integerGetter;
                getterImp = (IMP)editClosed;
                //: setterImp = (IMP)integerSetter;
                setterImp = (IMP)modelObject;
                //: break;
                break;

            //: case Float:
            case Float:
                //: getterImp = (IMP)floatGetter;
                getterImp = (IMP)toCustom;
                //: setterImp = (IMP)floatSetter;
                setterImp = (IMP)shirtButton;
                //: break;
                break;

            //: case Double:
            case Double:
                //: getterImp = (IMP)doubleGetter;
                getterImp = (IMP)switchceCommon;
                //: setterImp = (IMP)doubleSetter;
                setterImp = (IMP)tipSetter;
                //: break;
                break;

            //: case Object:
            case Object:
                //: getterImp = (IMP)objectGetter;
                getterImp = (IMP)hoodooGetter;
                //: setterImp = (IMP)objectSetter;
                setterImp = (IMP)visualizationSetter;
                //: break;
                break;

            //: default:
            default:
                //: free(properties);
                free(properties);
                //: [NSException raise:NSInternalInconsistencyException format:@"Unsupported type of property \"%s\" in class %@", name, self];
                [NSException raise:NSInternalInconsistencyException format:StringFromChronicData(kNameUniverseString), name, self];
                //: break;
                break;
        }

        //: char types[5];
        char types[5];

        //: snprintf(types, 4, "%c@:", type);
        snprintf(types, 4, "%c@:", type);
        //: class_addMethod([self class], getterSel, getterImp, types);
        class_addMethod([self class], getterSel, getterImp, types);

        //: snprintf(types, 5, "v@:%c", type);
        snprintf(types, 5, "v@:%c", type);
        //: class_addMethod([self class], setterSel, setterImp, types);
        class_addMethod([self class], setterSel, setterImp, types);
    }

    //: free(properties);
    free(properties);
}

//: #pragma GCC diagnostic push
#pragma GCC diagnostic push
//: #pragma GCC diagnostic ignored "-Wundeclared-selector"
#pragma GCC diagnostic ignored "-Wundeclared-selector"
//: #pragma GCC diagnostic ignored "-Warc-performSelector-leaks"
#pragma GCC diagnostic ignored "-Warc-performSelector-leaks"

//: - (instancetype)init {
- (instancetype)init {
    //: self = [super init];
    self = [super init];
    //: if (self) {
    if (self) {
        //: SEL setupDefaultSEL = NSSelectorFromString([NSString stringWithFormat:@"%@pDefaults", @"setu"]);
        SEL setupDefaultSEL = NSSelectorFromString([NSString stringWithFormat:StringFromChronicData(kContentWhereverValue), StringFromChronicData(kNameGrowString)]);
        //: if ([self respondsToSelector:setupDefaultSEL]) {
        if ([self respondsToSelector:setupDefaultSEL]) {
            //: NSDictionary *defaults = [self performSelector:setupDefaultSEL];
            NSDictionary *defaults = [self performSelector:setupDefaultSEL];
            //: NSMutableDictionary *mutableDefaults = [NSMutableDictionary dictionaryWithCapacity:[defaults count]];
            NSMutableDictionary *mutableDefaults = [NSMutableDictionary dictionaryWithCapacity:[defaults count]];
            //: for (NSString *key in defaults) {
            for (NSString *key in defaults) {
                //: id value = [defaults objectForKey:key];
                id value = [defaults objectForKey:key];
                //: NSString *transformedKey = [self _transformKey:key];
                NSString *transformedKey = [self manager:key];
                //: [mutableDefaults setObject:value forKey:transformedKey];
                [mutableDefaults setObject:value forKey:transformedKey];
            }
            //: [self.userDefaults registerDefaults:mutableDefaults];
            [self.userDefaults registerDefaults:mutableDefaults];
        }

        //: [self generateAccessorMethods];
        [self at];
    }

    //: return self;
    return self;
}

//: - (NSUserDefaults *)userDefaults {
- (NSUserDefaults *)userDefaults {
    //: if (!_userDefaults) {
    if (!_userDefaults) {
        //: _userDefaults = [NSUserDefaults standardUserDefaults];
        _userDefaults = [NSUserDefaults standardUserDefaults];
    }

    //: return _userDefaults;
    return _userDefaults;
}

//: static long long longLongGetter(NIMUserDefaults *self, SEL _cmd) {
static long long tabularArray(TableContext *self, SEL _cmd) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self container:_cmd];
    //: return [[self.userDefaults objectForKey:key] longLongValue];
    return [[self.userDefaults objectForKey:key] longLongValue];
}

//: static void longLongSetter(NIMUserDefaults *self, SEL _cmd, long long value) {
static void insideSetter(TableContext *self, SEL _cmd, long long value) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self container:_cmd];
    //: NSNumber *object = [NSNumber numberWithLongLong:value];
    NSNumber *object = [NSNumber numberWithLongLong:value];
    //: [self.userDefaults setObject:object forKey:key];
    [self.userDefaults setObject:object forKey:key];
}

//: static BOOL boolGetter(NIMUserDefaults *self, SEL _cmd) {
static BOOL perKey(TableContext *self, SEL _cmd) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self container:_cmd];
    //: return [self.userDefaults boolForKey:key];
    return [self.userDefaults boolForKey:key];
}

//: static void boolSetter(NIMUserDefaults *self, SEL _cmd, BOOL value) {
static void teamOf(TableContext *self, SEL _cmd, BOOL value) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self container:_cmd];
    //: [self.userDefaults setBool:value forKey:key];
    [self.userDefaults setBool:value forKey:key];
}

//: static int integerGetter(NIMUserDefaults *self, SEL _cmd) {
static int editClosed(TableContext *self, SEL _cmd) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self container:_cmd];
    //: return (int)[self.userDefaults integerForKey:key];
    return (int)[self.userDefaults integerForKey:key];
}

//: static void integerSetter(NIMUserDefaults *self, SEL _cmd, int value) {
static void modelObject(TableContext *self, SEL _cmd, int value) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self container:_cmd];
    //: [self.userDefaults setInteger:value forKey:key];
    [self.userDefaults setInteger:value forKey:key];
}

//: static float floatGetter(NIMUserDefaults *self, SEL _cmd) {
static float toCustom(TableContext *self, SEL _cmd) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self container:_cmd];
    //: return [self.userDefaults floatForKey:key];
    return [self.userDefaults floatForKey:key];
}

//: static void floatSetter(NIMUserDefaults *self, SEL _cmd, float value) {
static void shirtButton(TableContext *self, SEL _cmd, float value) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self container:_cmd];
    //: [self.userDefaults setFloat:value forKey:key];
    [self.userDefaults setFloat:value forKey:key];
}

//: static double doubleGetter(NIMUserDefaults *self, SEL _cmd) {
static double switchceCommon(TableContext *self, SEL _cmd) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self container:_cmd];
    //: return [self.userDefaults doubleForKey:key];
    return [self.userDefaults doubleForKey:key];
}

//: static void doubleSetter(NIMUserDefaults *self, SEL _cmd, double value) {
static void tipSetter(TableContext *self, SEL _cmd, double value) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self container:_cmd];
    //: [self.userDefaults setDouble:value forKey:key];
    [self.userDefaults setDouble:value forKey:key];
}

//: static id objectGetter(NIMUserDefaults *self, SEL _cmd) {
static id hoodooGetter(TableContext *self, SEL _cmd) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self container:_cmd];
    //: return [self.userDefaults objectForKey:key];
    return [self.userDefaults objectForKey:key];
}

//: static void objectSetter(NIMUserDefaults *self, SEL _cmd, id object) {
static void visualizationSetter(TableContext *self, SEL _cmd, id object) {
    //: NSString *key = [self defaultsKeyForSelector:_cmd];
    NSString *key = [self container:_cmd];
    //: if (object) {
    if (object) {
        //: [self.userDefaults setObject:object forKey:key];
        [self.userDefaults setObject:object forKey:key];
    //: } else {
    } else {
        //: [self.userDefaults removeObjectForKey:key];
        [self.userDefaults removeObjectForKey:key];
    }
}

//: #pragma mark - Begin
#pragma mark - Begin

//: + (instancetype)standardUserDefaults {
+ (instancetype)name {
    //: static dispatch_once_t pred;
    static dispatch_once_t pred;
    //: static NIMUserDefaults *sharedInstance = nil;
    static TableContext *sharedInstance = nil;
    //: _dispatch_once(&pred, ^{ sharedInstance = [[self alloc] init]; });
    _dispatch_once(&pred, ^{ sharedInstance = [[self alloc] init]; });
    //: return sharedInstance;
    return sharedInstance;
}

//: @end
@end

Byte * ChronicDataToCache(Byte *data) {
    int cosy = data[0];
    int symbol = data[1];
    Byte devise = data[2];
    int thinkTroubled = data[3];
    if (!cosy) return data + thinkTroubled;
    for (int i = thinkTroubled; i < thinkTroubled + symbol; i++) {
        int value = data[i] - devise;
        if (value < 0) {
            value += 256;
        }
        data[i] = value;
    }
    data[0] = 0;
    data[thinkTroubled + symbol] = 0;
    return data + thinkTroubled;
}

NSString *StringFromChronicData(Byte *data) {
    return [NSString stringWithUTF8String:(char *)ChronicDataToCache(data)];
}
