
	//
//  WGBAdapter.m
//  Adapter
//
//  Created by 王贵彬 on 2018/2/25.
//  Copyright © 2018年 王贵彬. All rights reserved.
//

#import "WGBAdapter.h"

@implementation WGBAdapter

- (instancetype)initWithData:(id)data{
	self = [super init];
	if (self) {
		self.data = data;
	}
	return self;
}

- (NSString *)adapterName {
	return nil;
}

- (NSString *)desc {
	return nil;
}

- (NSString *)image {
	return nil;
}

- (NSString *)description
{
	return [NSString stringWithFormat:@"%@-%@-%@", self.adapterName,self.desc,self.image];
}

@end
