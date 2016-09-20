//
//  UIView+CellIndetifier.m
//  GoKitDemo
//
//  Created by chanli on 16/9/20.
//  Copyright © 2016年 Beijing ChunFengShiLi Technology Co., Ltd. All rights reserved.
//

#import "UIView+CellIndetifier.h"

@implementation UIView (CellIndetifier)

+ (NSString *)go_CellIndetifier {
    
    return [NSString stringWithFormat:@"%@_goIdentifier",NSStringFromClass([self class])];
    
}

@end
