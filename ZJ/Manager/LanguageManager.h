//
//  LanguageManager.h
//  EasyPark
//
//  Created by xsy on 15/6/23.
//  Copyright (c) 2015年 xsy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LanguageMangerConst.h"

@interface LanguageManager : NSObject

@property (nonatomic, readonly) LANGUAGE_FLAG langFlag;

+ (instancetype)sharedInstance;

- (NSString *)localizeWithKey:(NSString *)key;

- (void)getSystemLanguage;

@end
