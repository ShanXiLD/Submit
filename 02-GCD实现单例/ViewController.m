//
//  ViewController.m
//  02-GCD实现单例
//
//  Created by heima on 16/7/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import "ViewController.h"
#import "NetworkTools.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 单例: 在内存中只有一个实例
    // 都是类方法去获取的实例
    // 全局很多地方都可能会被使用到
    /**
     [UIApplication sharedApplication];
     // 通知中心
     [NSNotificationCenter defaultCenter];
     // 偏好设置
     [NSUserDefaults standardUserDefaults];
     */
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSLog(@"%@", [NSNotificationCenter defaultCenter]);
    NSLog(@"%@", [[NSNotificationCenter alloc] init]);
    
    // NSLog(@"%@ %@ %@", [UIApplication sharedApplication], [NSNotificationCenter defaultCenter],[NSUserDefaults standardUserDefaults])
    NSLog(@"%@", [NetworkTools sharedTools]);
    NSLog(@"%@", [NetworkTools sharedTools]);
    NSLog(@"%@", [NetworkTools sharedTools]);
    NSLog(@"%@", [NetworkTools sharedTools]);
    
    NSLog(@"%@", [[NetworkTools alloc] init]);
    
}

@end
