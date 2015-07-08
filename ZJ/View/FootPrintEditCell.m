//
//  FootPrintEditCell.m
//  ZJ
//
//  Created by xueshouyang on 15/7/8.
//  Copyright © 2015年 ZJ. All rights reserved.
//

#import "FootPrintEditCell.h"

@interface FootPrintEditCell ()

@property (weak, nonatomic) IBOutlet UIView *fptContentView;
@property (weak, nonatomic) IBOutlet UIView *fptAddView;
@property (weak, nonatomic) IBOutlet UIImageView *ftpImageView;

@end

@implementation FootPrintEditCell

- (void)awakeFromNib {
    self.fptAddView.layer.cornerRadius = 5.0;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
}


@end
