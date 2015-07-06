//
//  AppDelegate.m
//  ZJ
//
//  Created by xueshouyang on 15/7/6.
//  Copyright © 2015年 ZJ. All rights reserved.
//

#import "AppDelegate.h"
#import "RDVTabBarController.h"
#import "RDVTabBarItem.h"
#import "RootViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc]  initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    [self setupTabBar];
    [[LanguageManager sharedInstance] getSystemLanguage];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark - setup
- (void)setupTabBar {
    RDVTabBarController *tabBar = [[RDVTabBarController alloc] init];
    tabBar.viewControllers = [self controllers];
    [self customizeTabBarForController:tabBar];
    self.window.rootViewController = tabBar;
}

- (void)customizeTabBarForController:(RDVTabBarController *)tabBarController {
//    UIImage *finishedImage = [UIImage imageNamed:@"tabbar_selected_background"];
//    UIImage *unfinishedImage = [UIImage imageNamed:@"tabbar_normal_background"];
//    NSArray *tabBarItemImages = @[@"second", @"second", @"first", @"third", @"third"];
    
    NSInteger index = 0;
    for (RDVTabBarItem *item in [[tabBarController tabBar] items]) {
//        [item setBackgroundSelectedImage:finishedImage withUnselectedImage:unfinishedImage];
//        UIImage *selectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_selected",
//                                                      [tabBarItemImages objectAtIndex:index]]];
//        
//        UIImage *unselectedimage = [UIImage imageNamed:[NSString stringWithFormat:@"%@_normal",
//                                                        [tabBarItemImages objectAtIndex:index]]];
        item.title = [NSString stringWithFormat:@"%@",@(index)];
//        [item setFinishedSelectedImage:selectedimage withFinishedUnselectedImage:unselectedimage];
        
        index++;
    }
}

- (NSArray *)controllers {
    NSArray *value = nil;
    RootViewController *root = [[RootViewController alloc] initWithNibName:@"RootViewController" bundle:nil];
    UINavigationController *navRoot = [[UINavigationController alloc] initWithRootViewController:root];
    
    RootViewController *root2 = [[RootViewController alloc] initWithNibName:@"RootViewController" bundle:nil];
    UINavigationController *navRoot2 = [[UINavigationController alloc] initWithRootViewController:root2];
    value = @[navRoot,navRoot2];
    return value;
}

@end
