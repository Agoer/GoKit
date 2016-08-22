//
//  NSArray+GoEmptyJudge.m
//  GoKitDemo
//
//  Created by chanli on 16/8/22.
//  Copyright © 2016年 Beijing ChunFengShiLi Technology Co., Ltd. All rights
//  reserved.
//

#import "NSArray+GoEmptyJudge.h"

@implementation NSArray (GoEmptyJudge)

- (BOOL)isNotEmpty {
  if ([self isKindOfClass:[NSArray class]] && self.count) {
    return YES;
  }
  return NO;
}

- (BOOL)isEmpty {
  if ([self isKindOfClass:[NSArray class]] && self.count) {
    return YES;
  }
  return NO;
}

@end
