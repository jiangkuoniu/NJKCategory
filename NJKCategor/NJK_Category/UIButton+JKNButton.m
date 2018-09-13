//
//  UIButton+ImageTitleFrame.m
//  circle
//
//  Created by NJK on 2018/8/29.
//  Copyright © 2018年 NJK. All rights reserved.
//

#import "UIButton+JKNButton.h"
#import <objc/runtime.h>

@implementation UIButton (JKNButton)

/**  改变button的图片和文字的位置  *///以图为主转动
- (void)ChangeImageTitlePlaceWith:(NSInteger)number With:(NSInteger)spaceNumber
{
    CGFloat imageWidth = self.imageView.bounds.size.width;
    CGFloat imageHeight = self.imageView.bounds.size.height;
    CGFloat labelWidth = self.titleLabel.bounds.size.width;
    CGFloat labeHeight = self.titleLabel.bounds.size.height;
    
    if (number == 0) {
        
    }
    else if (number == 1)
    {
        [self setTitleEdgeInsets:UIEdgeInsetsMake(-imageHeight/2, -imageWidth/2, imageHeight/2 +spaceNumber, imageWidth/2)];
        [self setImageEdgeInsets:UIEdgeInsetsMake(labeHeight/2, labelWidth/2, -labeHeight/2, -labelWidth/2)];
    }
    else if (number == 2)
    {
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0, -imageWidth-spaceNumber, 0, imageWidth)];
        [self setImageEdgeInsets:UIEdgeInsetsMake(0, labelWidth, 0, -labelWidth)];
    }
    else if (number == 3)
    {
        [self setTitleEdgeInsets:UIEdgeInsetsMake(imageHeight/2, -imageWidth/2, -imageHeight/2 -spaceNumber, imageWidth/2)];
        [self setImageEdgeInsets:UIEdgeInsetsMake(-labeHeight/2, labelWidth/2, labeHeight/2, -labelWidth/2)];
    }
    else if (number == 4)
    {
        [self setTitleEdgeInsets:UIEdgeInsetsMake(0,  -(self.titleLabel.frame.origin.x+spaceNumber), 0, 0)];
        [self setImageEdgeInsets:UIEdgeInsetsMake(0, (self.frame.size.width - self.imageView.frame.origin.x - self.imageView.frame.size.width), 0, -(self.frame.size.width - self.imageView.frame.origin.x - self.imageView.frame.size.width))];
//        [self setImageEdgeInsets:UIEdgeInsetsMake(0, labelWidth, 0, -labelWidth)];
    }
//    top : 为正数的时候,是往下偏移,为负数的时候往上偏移;
//    left : 为正数的时候往右偏移,为负数的时候往左偏移;
//    bottom : 为正数的时候往上偏移,为负数的时候往下偏移;
//    right :为正数的时候往左偏移,为负数的时候往右偏移;
}
static char topNameKey;
static char rightNameKey;
static char bottomNameKey;
static char leftNameKey;

- (void)setEnlargeEdgeWithTop:(CGFloat)top right:(CGFloat)right bottom:(CGFloat)bottom left:(CGFloat)left
{
    objc_setAssociatedObject(self, &topNameKey, [NSNumber numberWithFloat:top], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &rightNameKey, [NSNumber numberWithFloat:right], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &bottomNameKey, [NSNumber numberWithFloat:bottom], OBJC_ASSOCIATION_COPY_NONATOMIC);
    objc_setAssociatedObject(self, &leftNameKey, [NSNumber numberWithFloat:left], OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (UIButton *(^)(NSString *,CGFloat ,UIColor *))titleParams {
    return ^UIButton *(NSString *title,CGFloat fountSize,UIColor *textColor){
        [self setTitle:title forState:UIControlStateNormal];
        [self.titleLabel setFont:[UIFont systemFontOfSize:fountSize]];
        [self.titleLabel setTextColor:textColor];
        return self;
    };
}

- (UIButton *(^)(UIColor *))blackGroundColor {
    return ^UIButton *(UIColor *blackGroundColor) {
        self.backgroundColor = blackGroundColor;
        return self;
    };
}

#pragma mark - setter
- (void)setTitleParams:(UIButton *(^)(NSString *, CGFloat, UIColor *))titleParams {
    
}

- (void)setBlackGroundColor:(UIButton *(^)(UIColor *))blackGroundColor {
    
}

@end
