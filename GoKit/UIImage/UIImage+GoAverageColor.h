//
//  UIImage+GoAverageColor.h
//  GoKitDemo
//
//  Created by chanli on 16/8/19.
//  Copyright © 2016年 Beijing ChunFengShiLi Technology Co., Ltd. All rights
//  reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (GoAverageColor)

//获取图片主题色
- (UIColor *)go_mostColor;
- (NSArray *)go_colors;
- (UIColor *)go_averageColor;

@end
