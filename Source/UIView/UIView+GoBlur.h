//
//  UIView+GoBlur.h
//  GoKitDemo
//
//  Created by chanli on 16/8/19.
//  Copyright © 2016年 Beijing ChunFengShiLi Technology Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (GoBlur)


- (UIView *)addBlurWithEffectWithStyle:(UIBlurEffectStyle)style;

- (UIView *)addBlurWithEffectWithStyle:(UIBlurEffectStyle)style frame:(CGRect)frame;


@end
