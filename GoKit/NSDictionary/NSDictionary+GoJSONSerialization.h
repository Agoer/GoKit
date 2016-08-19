//
//  NSDictionary+GoJSONSerialization.h
//  GoKitDemo
//
//  Created by chanli on 16/8/19.
//  Copyright © 2016年 Beijing ChunFengShiLi Technology Co., Ltd. All rights
//  reserved.
//

#import <Foundation/Foundation.h>

@interface NSDictionary (GoJSONSerialization)

- (NSData *)go_JSONData;
- (NSString *)go_JSONString;

+ (NSDictionary *)go_DictionaryFromJSONString:(NSString *)jsonStr;
+ (NSDictionary *)go_DictionaryFromJSONData:(NSData *)jsonData;

//文件转字典
+ (NSDictionary *)go_DictionaryFromJSONStringWithFileName:(NSString *)fileName
                                                     type:(NSString *)type;

@end
