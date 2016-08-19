//
//  NSDictionary+GoJSONSerialization.m
//  GoKitDemo
//
//  Created by chanli on 16/8/19.
//  Copyright © 2016年 Beijing ChunFengShiLi Technology Co., Ltd. All rights
//  reserved.
//

#import "NSDictionary+GoJSONSerialization.h"

@implementation NSDictionary (GoJSONSerialization)

- (NSData *)go_JSONData {
  return [NSJSONSerialization dataWithJSONObject:self options:0 error:NULL];
}

- (NSString *)go_JSONString {
  NSData *data = [self go_JSONData];
  if (data == nil) {
    return nil;
  }

  return [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
}

+ (NSDictionary *)go_DictionaryFromJSONString:(NSString *)jsonStr {
  return [NSDictionary
      go_DictionaryFromJSONData:[jsonStr
                                    dataUsingEncoding:NSUTF8StringEncoding]];
}

+ (NSDictionary *)go_DictionaryFromJSONData:(NSData *)jsonData {
  return [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:NULL];
}

//文件转字典
+ (NSDictionary *)go_DictionaryFromJSONStringWithFileName:(NSString *)fileName
                                                     type:(NSString *)type {

  NSString *plistPath =
      [[NSBundle mainBundle] pathForResource:fileName ofType:type];
  NSString *str = [[NSString alloc] initWithContentsOfFile:plistPath
                                                  encoding:NSUTF8StringEncoding
                                                     error:nil];
  return [NSDictionary go_DictionaryFromJSONString:str];
}

@end
