//
//  UIView+GoBlur.m
//  GoKitDemo
//
//  Created by chanli on 16/8/19.
//  Copyright © 2016年 Beijing ChunFengShiLi Technology Co., Ltd. All rights
//  reserved.
//

#import "UIView+GoBlur.h"

#define go_iOS(x)                                                              \
  ([[[UIDevice currentDevice] systemVersion] floatValue] >= x ? YES : NO)

@implementation UIView (GoBlur)

- (UIView *)go_addBlurWithEffectWithStyle:(UIBlurEffectStyle)style {
  return [self go_addBlurWithEffectWithStyle:style frame:self.frame];
}

- (UIView *)go_addBlurWithEffectWithStyle:(UIBlurEffectStyle)style
                                    frame:(CGRect)frame {
  if (go_iOS(8)) {

    UIVisualEffectView *view = [self effectviewWithframe:frame];

    [self addSubview:view];

    return view;
  } else {

    UIView *view = [self effectviewForiOS7Withframe:frame];
    [self addSubview:view];

    return view;
  }
}

- (UIVisualEffectView *)effectviewWithframe:(CGRect)frame {
  UIBlurEffect *blur = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
  UIVisualEffectView *effectview =
      [[UIVisualEffectView alloc] initWithEffect:blur];
  effectview.frame = frame;
  return effectview;
}

- (UIView *)effectviewForiOS7Withframe:(CGRect)frame {

  UIView *view = [[UIView alloc] initWithFrame:frame];
  view.backgroundColor = [UIColor whiteColor];
  view.alpha = 0.7;
  return view;
}

@end
