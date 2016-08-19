//
//  UIView+GoGradientColor.h
//  GoKitDemo
//
//  Created by chanli on 16/8/19.
//  Copyright © 2016年 Beijing ChunFengShiLi Technology Co., Ltd. All rights
//  reserved.
//

#import <UIKit/UIKit.h>



@interface UIView (GoGradientColor)

//根据图片的主题色，添加 layer
- (void)go_addGradientColorWithImage:(UIImage *)image;

@end
