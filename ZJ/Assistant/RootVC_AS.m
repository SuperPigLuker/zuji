//
//  RootVC_AS.m
//  EasyPark
//
//  Created by xsy on 15/7/6.
//  Copyright © 2015年 xsy. All rights reserved.
//

#import "RootVC_AS.h"
#import <UIKit/UIKit.h>
#import "EPFileManager.h"
#import "RDVTabBarController.h"
#import "APPManager.h"

@implementation RootVC_AS

- (void)copy {
    EPFileManager *fileMG = [EPFileManager sharedInstance];
    [fileMG copyFileToDocument];
}

- (void)hidTabBar:(id)sender {
    UIButton *aButton = (UIButton *)sender;
    aButton.selected = !aButton.selected;
    RDVTabBarController *tab = (RDVTabBarController *)[[APPManager sharedInstance] rootViewController];
    if (aButton.selected) {
        [tab setTabBarHidden:YES animated:YES];
    }else {
        [tab setTabBarHidden:NO animated:YES];
    }
}

@end
