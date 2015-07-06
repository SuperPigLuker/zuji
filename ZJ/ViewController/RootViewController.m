//
//  RootViewController.m
//  EasyPark
//
//  Created by xsy on 15/6/23.
//  Copyright (c) 2015年 xsy. All rights reserved.
//

#import "RootViewController.h"
#import "RootVC_Constant.h"
#import "RootVC_AS.h"


@interface RootViewController ()
@property (nonatomic, strong) RootVC_AS *as;
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = RootVC_Title;
    [self setRightBarButtonItem];
    [self defaultSetting];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)defaultSetting {
    self.as = [[RootVC_AS alloc] init];
}

- (void)setRightBarButtonItem {
    UIButton *aButton = [[UIButton alloc] init];
    aButton.frame = CGRectMake(0, 0, 40, 27.0);
    [aButton setTitle:@"coc" forState:UIControlStateNormal];
    [aButton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [aButton setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [aButton addTarget:self action:@selector(copyStart) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *pushB = [[UIButton alloc] init];
    pushB.frame = CGRectMake(0, 0, 45, 27.0);
    [pushB setTitle:@"push" forState:UIControlStateNormal];
    [pushB setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [pushB setTitleColor:[UIColor whiteColor] forState:UIControlStateSelected];
    [pushB addTarget:self action:@selector(pushB:) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *item1 = [[UIBarButtonItem alloc] initWithCustomView:aButton];
    UIBarButtonItem *item2 = [[UIBarButtonItem alloc] initWithCustomView:pushB];
    self.navigationItem.rightBarButtonItems = @[item1,item2];
}

- (void)copyStart {
    [self.as copy];
}

- (void)pushB:(UIButton *)aButton {
    [self.as hidTabBar:aButton];
}




@end
