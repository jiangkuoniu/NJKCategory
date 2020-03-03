//
//  UIView+JKNViewModel.h
//  circle
//
//  Created by NJK on 2018/8/28.
//  Copyright © 2018年 NJK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (JKNViewModel)
//圆角 + 边框
/*
 color 边框颜色 默认黑色
 rimWidth 边框宽度 默认1
 roundWidth 圆角大小 为0则是当前的高度一半
 */
-(void)RoundWith:(UIColor *)color with:(CGFloat)rimWidth with:(CGFloat)roundWidth;

@end
