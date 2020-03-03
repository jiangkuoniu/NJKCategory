//
//  UIButton+ImageTitleFrame.h
//  circle
//
//  Created by NJK on 2018/8/29.
//  Copyright © 2018年 NJK. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (JKNButton)

/**  改变button的图片和文字的位置  */
- (void)ChangeImageTitlePlaceWith:(NSInteger)number With:(NSInteger)spaceNumber;
/**  扩大buuton点击范围  */
- (void)setEnlargeEdgeWithTop:(CGFloat)top right:(CGFloat)right bottom:(CGFloat)bottom left:(CGFloat)left;


/**
 设置Button.TextLabel的文字 字体大小 文字颜色
 */
@property (copy, nonatomic) UIButton* (^titleParams)(NSString *title,CGFloat fountSize,UIColor *textColor);

/**
 设置按钮的背景颜色
 */
@property (copy, nonatomic) UIButton* (^blackGroundColor)(UIColor *blackGroundColor);



@end
