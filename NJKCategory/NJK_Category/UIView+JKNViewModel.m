//
//  UIView+JKNViewModel.m
//  circle
//
//  Created by NJK on 2018/8/28.
//  Copyright © 2018年 NJK. All rights reserved.
//

#import "UIView+JKNViewModel.h"

@implementation UIView (JKNViewModel)

-(void)RoundWith:(UIColor *)color with:(CGFloat)rimWidth with:(CGFloat)roundWidth
{
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    
    CAShapeLayer *borderLayer = [CAShapeLayer layer];
    borderLayer.frame = CGRectMake(0, 0, self.frame.size.width, self.frame.size.height);
    borderLayer.lineWidth = rimWidth;
    borderLayer.strokeColor = color.CGColor;
    borderLayer.fillColor = [UIColor clearColor].CGColor;
    
    UIBezierPath *bezierPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, self.frame.size.width, self.frame.size.height) cornerRadius:roundWidth>0?roundWidth:self.frame.size.height/2];
    maskLayer.path = bezierPath.CGPath;
    borderLayer.path = bezierPath.CGPath;
    
    [self.layer insertSublayer:borderLayer atIndex:0];
    [self.layer setMask:maskLayer];
}

@end
