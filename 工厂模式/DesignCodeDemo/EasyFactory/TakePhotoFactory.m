//
//  TakePhotoFactory.m
//  DesignCodeDemo
//
//  Created by 王贵彬 on 2018/2/23.
//  Copyright © 2018年 王贵彬. All rights reserved.
//

#import "TakePhotoFactory.h"
#import "SamsungFactory.h"
#import "XiaoMiFactory.h"

@implementation TakePhotoFactory

+ (TakePhotoFactory *)craeateWithPhoneType:(PhoneType)phoneType{
	switch (phoneType) {
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

@end
