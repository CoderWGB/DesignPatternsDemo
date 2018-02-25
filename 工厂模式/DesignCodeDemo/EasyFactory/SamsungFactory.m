//
//  SamsungFactory.m
//  DesignCodeDemo
//
//  Created by 王贵彬 on 2018/2/23.
//  Copyright © 2018年 王贵彬. All rights reserved.
//

#import "SamsungFactory.h"
#import "Phone.h"

	//三星手机的工厂只生产三星手机!!!
@implementation SamsungFactory
- (Phone *)createPhone{
	Phone *samsung =	[Phone new];
	samsung.name = @"三星手机galaXXXX";
	samsung.price = [self factoryPrice];
	return samsung;
}
- (void)takePhoto{
	NSLog(@"三星手机照亮你的美!");
}
- (NSString *)factoryPrice{
	return @"¥6666";
}

@end
