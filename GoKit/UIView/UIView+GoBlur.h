//
//  UIView+GoBlur.h
//  GoKitDemo
//
//  Created by chanli on 16/8/19.
//  Copyright © 2016年 Beijing ChunFengShiLi Technology Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (GoBlur)


- (UIView *)go_addBlurWithEffectWithStyle:(UIBlurEffectStyle)style;

- (UIView *)go_addBlurWithEffectWithStyle:(UIBlurEffectStyle)style frame:(CGRect)frame;


@end
