//
//  UIImage+GoAverageColor.m
//  GoKitDemo
//
//  Created by chanli on 16/8/19.
//  Copyright © 2016年 Beijing ChunFengShiLi Technology Co., Ltd. All rights
//  reserved.
//

#import "UIImage+GoAverageColor.h"

@implementation UIImage (GoAverageColor)

- (UIColor *)go_mostColor {
#if __IPHONE_OS_VERSION_MAX_ALLOWED > __IPHONE_6_1
  int bitmapInfo = kCGBitmapByteOrderDefault | kCGImageAlphaPremultipliedLast;
#else
  int bitmapInfo = kCGImageAlphaPremultipliedLast;
#endif

  //第一步 先把图片缩小 加快计算速度. 但越小结果误差可能越大
  CGSize thumbSize = CGSizeMake(50, 50);

  CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
  CGContextRef context =
      CGBitmapContextCreate(NULL, thumbSize.width, thumbSize.height,
                            8, // bits per component
                            thumbSize.width * 4, colorSpace, bitmapInfo);

  CGRect drawRect = CGRectMake(0, 0, thumbSize.width, thumbSize.height);
  CGContextDrawImage(context, drawRect, self.CGImage);
  CGColorSpaceRelease(colorSpace);

  //第二步 取每个点的像素值
  unsigned char *data = CGBitmapContextGetData(context);

  if (data == NULL)
    return nil;

  NSCountedSet *cls =
      [NSCountedSet setWithCapacity:thumbSize.width * thumbSize.height];

  for (int x = 0; x < thumbSize.width; x++) {
    for (int y = 0; y < thumbSize.height; y++) {

      int offset = 4 * (x * y);

      int red = data[offset];
      int green = data[offset + 1];
      int blue = data[offset + 2];
      int alpha = data[offset + 3];

      NSArray *clr = @[ @(red), @(green), @(blue), @(alpha) ];
      [cls addObject:clr];
    }
  }
  CGContextRelease(context);

  //第三步 找到出现次数最多的那个颜色
  NSEnumerator *enumerator = [cls objectEnumerator];
  NSArray *curColor = nil;

  NSArray *MaxColor = nil;
  NSUInteger MaxCount = 0;

  while ((curColor = [enumerator nextObject]) != nil) {
    NSUInteger tmpCount = [cls countForObject:curColor];

    if (tmpCount < MaxCount)
      continue;

    MaxCount = tmpCount;
    MaxColor = curColor;
  }

  return [UIColor colorWithRed:([MaxColor[0] intValue] / 255.0f)
                         green:([MaxColor[1] intValue] / 255.0f)
                          blue:([MaxColor[2] intValue] / 255.0f)
                         alpha:([MaxColor[3] intValue] / 255.0f)];
}

- (NSArray *)go_colors {
#if __IPHONE_OS_VERSION_MAX_ALLOWED > __IPHONE_6_1
  int bitmapInfo = kCGBitmapByteOrderDefault | kCGImageAlphaPremultipliedLast;
#else
  int bitmapInfo = kCGImageAlphaPremultipliedLast;
#endif

  //第一步 先把图片缩小 加快计算速度. 但越小结果误差可能越大
  CGSize thumbSize = CGSizeMake(50, 50);

  CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
  CGContextRef context =
      CGBitmapContextCreate(NULL, thumbSize.width, thumbSize.height,
                            8, // bits per component
                            thumbSize.width * 4, colorSpace, bitmapInfo);

  CGRect drawRect = CGRectMake(0, 0, thumbSize.width, thumbSize.height);
  CGContextDrawImage(context, drawRect, self.CGImage);
  CGColorSpaceRelease(colorSpace);

  //第二步 取每个点的像素值
  unsigned char *data = CGBitmapContextGetData(context);

  if (data == NULL)
    return nil;

  NSCountedSet *cls =
      [NSCountedSet setWithCapacity:thumbSize.width * thumbSize.height];

  for (int x = 0; x < thumbSize.width; x++) {
    for (int y = 0; y < thumbSize.height; y++) {

      int offset = 4 * (x * y);

      int red = data[offset];
      int green = data[offset + 1];
      int blue = data[offset + 2];
      int alpha = data[offset + 3];

      NSArray *clr = @[ @(red), @(green), @(blue), @(alpha) ];
      [cls addObject:clr];
    }
  }
  CGContextRelease(context);

  //第三步 找到出现次数最多的那个颜色
  NSEnumerator *enumerator = [cls objectEnumerator];
  NSArray *curColor = nil;

  NSArray *MaxColor = nil;
  NSUInteger MaxCount = 0;

  while ((curColor = [enumerator nextObject]) != nil) {
    NSUInteger tmpCount = [cls countForObject:curColor];

    if (tmpCount < MaxCount)
      continue;

    MaxCount = tmpCount;
    MaxColor = curColor;
  }

  UIColor *startColor =
      [UIColor colorWithRed:([MaxColor[0] intValue] / 255.0f)
                      green:([MaxColor[1] intValue] / 255.0f)
                       blue:([MaxColor[2] intValue] / 255.0f)
                      alpha:([MaxColor[3] intValue] / 255.0f)];
  UIColor *endColor = [UIColor colorWithRed:([MaxColor[0] intValue] / 255.0f)
                                      green:([MaxColor[1] intValue] / 255.0f)
                                       blue:([MaxColor[2] intValue] / 255.0f)
                                      alpha:0];
  return @[ startColor, endColor ];
}

- (UIColor *)go_averageColor {

  CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();

  unsigned char rgba[4];

  CGContextRef context = CGBitmapContextCreate(rgba, 1, 1, 8, 4, colorSpace,
                                               kCGImageAlphaPremultipliedLast |
                                                   kCGBitmapByteOrder32Big);

  CGContextDrawImage(context, CGRectMake(0, 0, 1, 1), self.CGImage);

  CGColorSpaceRelease(colorSpace);

  CGContextRelease(context);

  if (rgba[3] > 0) {

    CGFloat alpha = ((CGFloat)rgba[3]) / 255.0;

    CGFloat multiplier = alpha / 255.0;

    return [UIColor colorWithRed:((CGFloat)rgba[0]) * multiplier

                           green:((CGFloat)rgba[1]) * multiplier

                            blue:((CGFloat)rgba[2]) * multiplier

                           alpha:alpha];

  }

  else {

    return [UIColor colorWithRed:((CGFloat)rgba[0]) / 255.0

                           green:((CGFloat)rgba[1]) / 255.0

                            blue:((CGFloat)rgba[2]) / 255.0

                           alpha:((CGFloat)rgba[3]) / 255.0];
  }
}

@end
