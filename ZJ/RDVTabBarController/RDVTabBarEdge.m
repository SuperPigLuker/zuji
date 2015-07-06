//
//  RDVTabBarEdge.m
//  RDVTabBarController
//
//  Created by xueshouyang on 15/7/1.
//  Copyright © 2015年 Robert Dimitrov. All rights reserved.
//

#import "RDVTabBarEdge.h"
#import <math.h>

@implementation RDVTabBarEdge

- (void)drawRect:(CGRect)rect {
    NSLog(@"%@",NSStringFromCGRect(rect));
    CGFloat height = rect.size.height;
    CGFloat width = rect.size.width;
    CGFloat startY = height - 1.0;
    CGFloat marginY = 1.0;
    CGFloat crossBeam = [self crossBeam];
    CGFloat startX = (width - crossBeam) / 2;
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetLineWidth(context, marginY);
    CGContextSetRGBStrokeColor(context, 1.0, 0.0, 0.0, 1.0);
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, 0, startY);
    CGContextAddLineToPoint(context, startX, startY);
    //画弧
    CGContextClosePath(context);
    CGContextMoveToPoint(context, startX, startY);
    CGContextAddArc(context, self.circleCenter.x, self.circleCenter.y, self.radius, M_PI, 0, 0);
    CGContextMoveToPoint(context, (width + crossBeam) / 2 , startY);
    CGContextAddLineToPoint(context, width, startY);
    CGContextStrokePath(context);
}

- (CGFloat)crossBeam {
    CGFloat value = 0.0;
    CGFloat y = self.circleCenter.y - self.frame.size.height;
    NSLog(@"y : %f",y);
    CGFloat ret = pow(self.radius, 2) - pow(y, 2);
    if (ret < 0.001) {
        NSLog(@"radius is too small!");
        value = 0.001;
    }else{
        value = 2 * sqrt(ret);
    }
    NSLog(@"crossBeam %f",value);
    return value;
}


@end
