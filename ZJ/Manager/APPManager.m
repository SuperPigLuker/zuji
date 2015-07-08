//
//  APPManager.m
//  EasyPark
//
//  Created by xsy on 15/7/6.
//  Copyright © 2015年 xsy. All rights reserved.
//

#import "APPManager.h"
#import "AppDelegate.h"

@implementation APPManager

+ (instancetype)sharedInstance {
    static dispatch_once_t once;
    static id _sharedInstance = nil;
    dispatch_once(&once, ^{
        if (_sharedInstance == nil) {
            _sharedInstance = [[APPManager alloc] init];
        }
    });
    return _sharedInstance;
}

+ (UIViewController *)rootViewController {
    AppDelegate *del = (AppDelegate *)[UIApplication sharedApplication].delegate;
    UIViewController *tab = del.window.rootViewController;
    return tab;
}

+ (CGRect)screenBounds {
    return [UIScreen mainScreen].bounds;
}

+ (CGFloat)screenWidth {
    CGRect bounds = [self screenBounds];
    return bounds.size.width;
}

+ (CGFloat)screenHeight {
    CGRect bounds = [self screenBounds];
    return bounds.size.height;
}

@end
