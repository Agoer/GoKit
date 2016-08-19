//
//  UIView+GoPostionExtension.m
//  GoKitDemo
//
//  Created by chanli on 16/8/19.
//  Copyright © 2016年 Beijing ChunFengShiLi Technology Co., Ltd. All rights
//  reserved.
//

#import "UIView+GoPostionExtension.h"

@implementation UIView (GoPostionExtension)

- (void)setGo_x:(CGFloat)go_x {
  CGRect frame = self.frame;
  frame.origin.x = go_x;
  self.frame = frame;
}

- (void)setGo_y:(CGFloat)go_y {
  CGRect frame = self.frame;
  frame.origin.y = go_y;
  self.frame = frame;
}

- (CGFloat)go_x {
  return self.frame.origin.x;
}

- (CGFloat)go_y {
  return self.frame.origin.y;
}

- (void)setGo_width:(CGFloat)go_width {
  CGRect frame = self.frame;
  frame.size.width = go_width;
  self.frame = frame;
}

- (void)setGo_height:(CGFloat)go_height {
  CGRect frame = self.frame;
  frame.size.height = go_height;
  self.frame = frame;
}

- (CGFloat)go_height {
  return self.frame.size.height;
}

- (CGFloat)go_width {
  return self.frame.size.width;
}

- (void)setGo_size:(CGSize)go_size {
  CGRect frame = self.frame;
  frame.size = go_size;
  self.frame = frame;
}

- (CGSize)go_size {
  return self.frame.size;
}

- (void)setGo_origin:(CGPoint)go_origin {
  CGRect frame = self.frame;
  frame.origin = go_origin;
  self.frame = frame;
}

- (CGPoint)go_origin {
  return self.frame.origin;
}

- (void)setGo_centerX:(CGFloat)go_centerX {
  CGPoint center = self.center;
  center.x = go_centerX;
  self.center = center;
}
- (CGFloat)go_centerX {
  return self.center.x;
}
- (void)setGo_centerY:(CGFloat)go_centerY {
  CGPoint center = self.center;
  center.y = go_centerY;
  self.center = center;
}
- (CGFloat)go_centerY {
  return self.center.y;
}

- (CGFloat)go_MaxX {
  return CGRectGetMaxX(self.frame);
}
- (CGFloat)go_MaxY {
  return CGRectGetMaxY(self.frame);
}

@end
