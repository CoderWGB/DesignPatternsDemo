//
//  Bing.m
//  DecorateCode
//
//  Created by 王贵彬 on 2018/2/23.
//  Copyright © 2018年 王贵彬. All rights reserved.
//

#import "Bing.h"

@implementation Bing
{
	NSString *_name;
}

- (instancetype)init
{
	self = [super init];
	if (self) {
		_name = @"饼";
	}
	return self;
}
- (instancetype)initWithFood:(id<FoodProtocol>)food{
	self = [super init];
	if (self) {
		_name = @"饼";
		self.food = food;
	}
	return self;
}

- (NSString *)foodName{
	if (self.food.foodName.length==0||!self.food.foodName) {
		return _name;
	}
	return [NSString stringWithFormat:@"%@%@",self.food.foodName,_name];
}

- (double)totalCountMoney{
	return 5.00f + self.food.totalCountMoney;
}
@end
