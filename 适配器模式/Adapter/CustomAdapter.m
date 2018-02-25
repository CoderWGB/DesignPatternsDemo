//
//  CustomAdapter.m
//  Adapter
//
//  Created by 王贵彬 on 2018/2/25.
//  Copyright © 2018年 王贵彬. All rights reserved.
//

#import "CustomAdapter.h"
#import "OneModel.h"
#import "TwoModel.h"
#import "ThreeModel.h"

@implementation CustomAdapter

- (NSString *)adapterName {
	if ([self.data isKindOfClass:[OneModel class]]) {
		OneModel *oneModel = self.data;
		return oneModel.name;
	}else if ([self.data isKindOfClass:[TwoModel class]]){
		TwoModel *twoModel = self.data;
		return twoModel.nickName;
	}else if ([self.data isKindOfClass:[ThreeModel class]]){
		ThreeModel *threeModel = self.data;
		return threeModel.title;
	}
	return nil;
}

- (NSString *)desc {
	if ([self.data isKindOfClass:[OneModel class]]) {
		OneModel *oneModel = self.data;
		return oneModel.desc;
	}else if ([self.data isKindOfClass:[TwoModel class]]){
		TwoModel *twoModel = self.data;
		return twoModel.desc;
	}else if ([self.data isKindOfClass:[ThreeModel class]]){
		ThreeModel *threeModel = self.data;
		return threeModel.tipMsg;
	}
	return nil;
}

- (NSString *)image {
	if ([self.data isKindOfClass:[OneModel class]]) {
		OneModel *oneModel = self.data;
		return oneModel.image;
	}else if ([self.data isKindOfClass:[TwoModel class]]){
		TwoModel *twoModel = self.data;
		return twoModel.pic;
	}else if ([self.data isKindOfClass:[ThreeModel class]]){
		ThreeModel *threeModel = self.data;
		return threeModel.img;
	}
	return nil;
}

@end
