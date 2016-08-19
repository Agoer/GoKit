//
//  UIView+GoGradientColor.m
//  GoKitDemo
//
//  Created by chanli on 16/8/19.
//  Copyright © 2016年 Beijing ChunFengShiLi Technology Co., Ltd. All rights
//  reserved.
//

#import "UIImage+GoAverageColor.h"
#import "UIView+GoGradientColor.h"

#define kgo_LayerName @"name"

@implementation UIView (GoGradientColor)

- (void)go_addGradientColorWithImage:(UIImage *)image {
  //移除当前的 layer
  for (CALayer *layer in self.layer.sublayers) {
    if ([[layer name] isEqualToString:kgo_LayerName]) {
      [layer removeFromSuperlayer];
    }
  }

  // 创建渐变色图层
  UIColor *mianColor = image.go_averageColor;
  CAGradientLayer *gradientLayer = [CAGradientLayer layer];
  gradientLayer.name = kgo_LayerName;

  gradientLayer.frame = self.bounds;
  gradientLayer.colors =
      @[ (id)[UIColor clearColor].CGColor, (id)mianColor.CGColor ];
  // 设置渐变方向(0~1)
  gradientLayer.startPoint = CGPointMake(0, 0);
  gradientLayer.endPoint = CGPointMake(0, 1);

  // 设置渐变色的起始位置和终止位置(颜色的分割点)
  gradientLayer.locations = @[ @(0.5f), @(1.0f) ];
  gradientLayer.borderWidth = 0.0;
  // 添加图层

  [self.layer addSublayer:gradientLayer];
}

@end
