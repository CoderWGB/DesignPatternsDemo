//
//  ViewController.m
//  DecorateCode
//
//  Created by 王贵彬 on 2018/2/23.
//  Copyright © 2018年 王贵彬. All rights reserved.
//

#import "ViewController.h"
///装饰者模式
//类对象之间的组合行为 而不是继承或者是扩展新功能
/// 实例:  蛋炒饭 = 煎蛋 + 炒饭      煎饼果子 = 煎蛋 + 饼 + 果子
#import "JianDan.h"
#import "ChaoFan.h"
#import "Bing.h"
#import "Guozi.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];

	JianDan *jiandan = [JianDan new];//煎蛋 1块钱
	ChaoFan *fan = [ChaoFan new];//饭 3块钱
	Guozi *guozi = [Guozi new]; //果子 4块钱
	Bing *bing = [Bing new]; //饼 5块钱

		/// 黑暗系料理 ~  自由组合

	//煎蛋+炒饭
	ChaoFan *danChaoFan  = [[ChaoFan alloc] initWithFood: jiandan];//煎蛋炒饭
	NSLog(@"%@-%.2f",danChaoFan.foodName,danChaoFan.totalCountMoney);

	JianDan *jiandanFan = [[JianDan alloc] initWithFood:fan];
	NSLog(@"%@-%.2f",jiandanFan.foodName,jiandanFan.totalCountMoney);

	//饼 + 炒饭
	ChaoFan *bingChaofan = [[ChaoFan alloc] initWithFood: bing];
	NSLog(@"%@-%.2f",bingChaofan.foodName,bingChaofan.totalCountMoney);

	//煎蛋 + 饼
	Bing *jiandanBing = [[Bing alloc] initWithFood: jiandan];
	NSLog(@"%@-%.2f",jiandanBing.foodName,jiandanBing.totalCountMoney);

	//煎饼果子 = 煎蛋 + 饼 + 果子 = 煎蛋饼 + 果子
	Guozi *jianbingGuozi  =[[Guozi alloc] initWithFood: jiandanBing];
	NSLog(@"%@-%.2f",jianbingGuozi.foodName,jianbingGuozi.totalCountMoney);

	// 煎饼果子炒饭 = 炒饭 + 煎饼果子
	ChaoFan *xiaFan = [[ChaoFan alloc] initWithFood: jianbingGuozi];
	NSLog(@"%@-%.2f",xiaFan.foodName,xiaFan.totalCountMoney);

	//煎蛋+果子
	Guozi *jiandanGuozi = [[Guozi alloc] initWithFood: jiandan];
	NSLog(@"%@-%.2f",jiandanGuozi.foodName,jiandanGuozi.totalCountMoney);
	//双份煎蛋
	JianDan *jiandanDouble = [[JianDan alloc] initWithFood: jiandan];
	NSLog(@"%@-%.2f",jiandanDouble.foodName,jiandanDouble.totalCountMoney);

		//果子饼
	Bing *guoziBing = [[Bing alloc] initWithFood: guozi];
	NSLog(@"%@-%.2f",guoziBing.foodName,guoziBing.totalCountMoney);

 //果子炒饭
	ChaoFan *guoziChaoFan  = [[ChaoFan alloc] initWithFood: guozi];//煎蛋炒饭
	NSLog(@"%@-%.2f",guoziChaoFan.foodName,guoziChaoFan.totalCountMoney);

	//煎蛋+饼+炒饭
	ChaoFan *jianbingFan  = [[ChaoFan alloc] initWithFood:jiandanBing];
	NSLog(@"%@-%.2f",jianbingFan.foodName,jianbingFan.totalCountMoney);
}

- (void)didReceiveMemoryWarning {
	[super didReceiveMemoryWarning];
	// Dispose of any resources that can be recreated.
}


@end
