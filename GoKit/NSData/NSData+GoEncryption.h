//
//  NSData+GoEncryption.h
//  GoKitDemo
//
//  Created by chanli on 16/8/19.
//  Copyright © 2016年 Beijing ChunFengShiLi Technology Co., Ltd. All rights
//  reserved.
//

#import <Foundation/Foundation.h>

@interface NSData (GoEncryption)
- (NSString *)go_Md5;
- (NSString *)go_Sha1;
- (NSString *)go_Sha256;
- (NSString *)go_Sha512;
@end
