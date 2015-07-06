//
//  LanguageManager.m
//  EasyPark
//
//  Created by xsy on 15/6/23.
//  Copyright (c) 2015年 xsy. All rights reserved.
//

#import "LanguageManager.h"

@interface LanguageManager ()

@property (nonatomic) LANGUAGE_FLAG langFlag;

@end

@implementation LanguageManager

+ (instancetype)sharedInstance {
    static dispatch_once_t once;
    static id _sharedInstance = nil;
    dispatch_once(&once, ^{
        if (nil == _sharedInstance) {
            _sharedInstance = [[LanguageManager alloc] init];
        }
    });
    return _sharedInstance;
}

- (void)getSystemLanguage {
    NSArray *languages = [NSLocale preferredLanguages];
    xsyLog(@"preferredLanguages : %@",languages);
    NSString *currentLanguage = [languages firstObject];
    if ([currentLanguage isEqualToString:@"en"]) {
        self.langFlag = ENGLISH;
    } else if ([currentLanguage isEqualToString:@"zh-Hans"]) {
        self.langFlag = CHINESE;
    } else {
        self.langFlag = SHIT;
    }
}

- (NSString *)localizeWithKey:(NSString *)key {
    if (key.length < 1) {
        xsyLogError(@"key is ?");
        return nil;
    }
    NSString *value = @"";
    
    switch (self.langFlag) {
        case ENGLISH:
        {
            value = NSLocalizedStringFromTable(key, @"ENString", @"");
        }
            break;
        case CHINESE:
        {
            value = NSLocalizedStringFromTable(key, @"CNString", @"");
        }
            break;
            
        default:
        {
            value = NSLocalizedStringFromTable(key, @"ENString", @"");
        }
            break;
    }
    if (!(value.length)) {
        value = key;
    }
    return value;
}

@end
