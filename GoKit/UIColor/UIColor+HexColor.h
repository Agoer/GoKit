//
//  UIColor+HexColor.h
//  GoKitDemo
//
//  Created by chanli on 16/8/19.
//  Copyright © 2016年 Beijing ChunFengShiLi Technology Co., Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (HexColor)

+ (UIColor *)go_ColorWithHex:(NSInteger)rgbHexValue;
+ (UIColor *)go_ColorWithHex:(NSInteger)rgbHexValue alpha:(CGFloat)alpha;
+ (UIColor *)go_ColorWithHexString:(NSString *)hexStr;
+ (UIColor *)go_ColorRgbWithHexString:(NSString *)hexStr alpha:(float)alpha;

@end
