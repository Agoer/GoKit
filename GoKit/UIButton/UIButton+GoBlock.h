//
//  UIButton+GoBlock.h
//  GoKitDemo
//
//  Created by chanli on 16/8/19.
//  Copyright © 2016年 Beijing ChunFengShiLi Technology Co., Ltd. All rights
//  reserved.
//

#import <UIKit/UIKit.h>
typedef void (^ButtonBlock)(UIButton *btn);

@interface UIButton (GoBlock)

- (void)go_AddAction:(ButtonBlock)block
  forControlEvent:(UIControlEvents)controlEvent;

/* does not support remove one specific block*/

- (void)go_RemoveAllActionForControlEvent:(UIControlEvents)controlEvent;

@end
