//
//  NetworkTools.m
//  02-GCD实现单例
//
//  Created by heima on 16/7/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "NetworkTools.h"

@implementation NetworkTools

// 1. 将对象存于静态区
static NetworkTools *instance;
+ (instancetype)sharedTools {
    // 2. 一次执行去创建当前单例对象
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    // 3. 返回当前对象
    return instance;
}

// 以下代码建议不写.因为如果写了的话,就代表没有机会让程序员再初始化一个对象出来了.
+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        // 如果要写,一定要注意下面是使用的是 super
        instance = [super allocWithZone:zone];
    });
    return instance;
}

@end
