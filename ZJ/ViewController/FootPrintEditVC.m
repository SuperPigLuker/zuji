//
//  FootPrintEditVC.m
//  ZJ
//
//  Created by xueshouyang on 15/7/8.
//  Copyright © 2015年 ZJ. All rights reserved.
//

#import "FootPrintEditVC.h"
#import "FootPrintEditVC_Constant.h"

@interface FootPrintEditVC ()
@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end

@implementation FootPrintEditVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void)defaultSetting {
    self.navigationController.navigationBar.hidden = NO;
    self.title = footPrintEditVC_Title;
    [self.collectionView registerNib:[UINib nibWithNibName:footPrintEditCellNib bundle:nil] forCellWithReuseIdentifier:footPrintEditCell];
}

@end
