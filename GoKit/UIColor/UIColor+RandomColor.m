//
//  UIColor+RandomColor.m
//  GoKitDemo
//
//  Created by chanli on 16/8/19.
//  Copyright © 2016年 Beijing ChunFengShiLi Technology Co., Ltd. All rights
//  reserved.
//

#import "UIColor+RandomColor.h"

@implementation UIColor (RandomColor)

+ (UIColor *)go_RandomColor {
  CGFloat hue = (arc4random() % 256 / 256.0); // 0.0 to 1.0
  CGFloat saturation =
      (arc4random() % 128 / 256.0) + 0.5; // 0.5 to 1.0,away from white
  CGFloat brightness =
      (arc4random() % 128 / 256.0) + 0.5; // 0.5 to 1.0,away from black
  return [UIColor colorWithHue:hue
                    saturation:saturation
                    brightness:brightness
                         alpha:1];
}

@end
