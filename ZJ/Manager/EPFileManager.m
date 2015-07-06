//
//  EPFileManager.m
//  EasyPark
//
//  Created by xsy on 15/6/23.
//  Copyright (c) 2015年 xsy. All rights reserved.
//

#import "EPFileManager.h"
#import "FileMgConstant.h"

@implementation EPFileManager

+ (instancetype)sharedInstance {
    xsyLogMethod();
    static dispatch_once_t once;
    static EPFileManager * _sharedInstance = nil;
    dispatch_once(&once, ^{
        _sharedInstance = [[EPFileManager alloc] init];
    });
    return _sharedInstance;
}

- (BOOL)copyFileToDocument {
    xsyLogMethod();
    BOOL value = NO;
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"EasyPark" ofType:@".zip"];
    NSString *document = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    NSString *targetPath = [document stringByAppendingPathComponent:EasyPark];
    xsyLog(@"targetPath : %@",targetPath);
    xsyLog(@"filePath : %@",filePath);
    NSFileManager *fileMg = [NSFileManager defaultManager];
    if ([fileMg fileExistsAtPath:targetPath]) {
        [fileMg removeItemAtPath:targetPath error:nil];
        xsyLog(@"file already exist, need to remove first!");
    }
    value = [fileMg copyItemAtPath:filePath toPath:targetPath error:nil];
    if (value) {
        xsyLog(@"copy succeed!");
    } else {
        xsyLog(@"copy fialed");
    }
    return value;
}

- (BOOL)deleteFileInDocumentWithFileName:(NSString *)fileName {
    xsyLogMethod();
    BOOL value = NO;
    return value;
}

@end
