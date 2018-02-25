//
//  Phone.m
//  DesignCodeDemo
//
//  Created by 王贵彬 on 2018/2/23.
//  Copyright © 2018年 王贵彬. All rights reserved.
//

#import "Phone.h"

@implementation Phone

- (instancetype)init
{
	self = [super init];
	if (self) {
		self.name = @"XX不知名手机📱";
	}
	return self;
}

- (NSString *)description{
	return [NSString stringWithFormat:@"%@", self.name];
}

@end
