//
//  ViewController.m
//  DesignCodeDemo
//
//  Created by 王贵彬 on 2018/2/23.
//  Copyright © 2018年 王贵彬. All rights reserved.
//

#import "ViewController.h"

///- 简单工厂模式~
#import "ProductPhoneProtocol.h"
#import "PhoneFactory.h" //制造手机
#import "TakePhotoFactory.h"//选择手机拍照
#import "Phone.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	// 简单工厂 ~ 对对象的创建过程进行封装 相当于一个盒子
	PhoneFactory *samsungFactory = [PhoneFactory createPhoneFactoryWithPhoneType:SamsungType];
	Phone *samsung = [samsungFactory createPhone];
	NSLog(@"%@",samsung.description);

	PhoneFactory *xiaomiFactory = [PhoneFactory createPhoneFactoryWithPhoneType:XiaoMiTYpe];
	Phone *xiaomi = [xiaomiFactory createPhone];
	NSLog(@"%@",xiaomi.description);

		/// 抽象工厂~  即对工厂再次抽象
	TakePhotoFactory *takeFactory = [TakePhotoFactory craeateWithPhoneType: SamsungType];
	[takeFactory takePhoto];

	TakePhotoFactory *takeFactory1 = [TakePhotoFactory craeateWithPhoneType: XiaoMiTYpe];
	[takeFactory1 takePhoto];

}



@end
