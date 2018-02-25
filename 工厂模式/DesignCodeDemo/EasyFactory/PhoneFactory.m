//
//  PhoneFactory.m
//  DesignCodeDemo
//
//  Created by 王贵彬 on 2018/2/23.
//  Copyright © 2018年 王贵彬. All rights reserved.
//

#import "PhoneFactory.h"
#import "SamsungFactory.h"
#import "XiaoMiFactory.h"

@implementation PhoneFactory

+ (PhoneFactory *)createPhoneFactoryWithPhoneType:(PhoneType)type{
	switch (type) {
		case SamsungType:
			{
		return [SamsungFactory new];
			}
			break;
		case XiaoMiTYpe:
			{
		return [XiaoMiFactory new];
			}
			break;
		default:
			break;
	}
}


- (void)takePhoto{
}

- (NSString *)factoryPrice{
	return @"¥998";
}

- (Phone *)createPhone {
		return nil ;
}


@end
