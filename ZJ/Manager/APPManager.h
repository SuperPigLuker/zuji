//
//  APPManager.h
//  EasyPark
//
//  Created by xsy on 15/7/6.
//  Copyright © 2015年 xsy. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface APPManager : NSObject

+ (instancetype)sharedInstance;
- (UIViewController *)rootViewController;

@end
