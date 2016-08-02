//
//  NetworkTools.h
//  02-GCD实现单例
//
//  Created by heima on 16/7/29.
//  Copyright © 2016年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NetworkTools : NSObject

/**
 *  单例的全局访问点
 *
 *  @return <#return value description#>
 */
+ (instancetype)sharedTools;

@end
