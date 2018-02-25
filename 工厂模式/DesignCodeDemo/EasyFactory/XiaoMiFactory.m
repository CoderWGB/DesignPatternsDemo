//
//  XiaoMiFactory.m
//  DesignCodeDemo
//
//  Created by 王贵彬 on 2018/2/23.
//  Copyright © 2018年 王贵彬. All rights reserved.
//

#import "XiaoMiFactory.h"
#import "Phone.h"

/// 雷布斯工厂制造小米发烧机
@implementation XiaoMiFactory
- (Phone *)createPhone{
	 Phone *xiaomi = [Phone new];
	xiaomi.name = @"小米发烧机!!!";
	xiaomi.price = [self factoryPrice];
	return xiaomi;
}
- (void)takePhoto{
	NSLog(@"小米手机发烧了!");
}
- (NSString *)factoryPrice{
	return @"¥666";
}

@end
