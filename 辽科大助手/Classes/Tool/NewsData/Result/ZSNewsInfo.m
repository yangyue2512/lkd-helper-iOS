//
//  ZSNewsInfo.m
//  辽科大助手
//
//  Created by DongAn on 15/12/9.
//  Copyright © 2015年 DongAn. All rights reserved.
//

#import "ZSNewsInfo.h"
#import "MJExtension.h"

@implementation ZSNewsInfo
MJCodingImplementation

+ (NSDictionary *)replacedKeyFromPropertyName
{
    return @{
             @"ID" : @"id"
             };
}

@end
