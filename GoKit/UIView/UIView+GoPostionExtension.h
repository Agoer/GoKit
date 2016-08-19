//
//  UIView+GoPostionExtension.h
//  GoKitDemo
//
//  Created by chanli on 16/8/19.
//  Copyright © 2016年 Beijing ChunFengShiLi Technology Co., Ltd. All rights
//  reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (GoPostionExtension)

@property(nonatomic, assign) CGFloat go_x;
@property(nonatomic, assign) CGFloat go_y;

@property(nonatomic, assign) CGFloat go_width;
@property(nonatomic, assign) CGFloat go_height;

@property(nonatomic, assign) CGSize go_size;
@property(nonatomic, assign) CGPoint go_origin;

@property(nonatomic, assign) CGFloat go_centerX;
@property(nonatomic, assign) CGFloat go_centerY;

@property(nonatomic, assign, readonly) CGFloat go_MaxX;
@property(nonatomic, assign, readonly) CGFloat go_MaxY;

@end
