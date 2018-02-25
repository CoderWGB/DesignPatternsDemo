//
//  ViewController.m
//  Adapter
//
//  Created by 王贵彬 on 2018/2/25.
//  Copyright © 2018年 王贵彬. All rights reserved.
//

#import "ViewController.h"

	/// 适配器模式: 解决复用痛点, 一套UI支持多套数据结构,解耦合更彻底, 就是说碰到数据形式的不同,通过一个黑盒转换之后成为一套统一的数据结构形式进行UI赋值~  对于UI来说是无痛无侵入的~

#import "TestUI.h"
#import "CustomAdapter.h"

#import "OneModel.h"
#import "TwoModel.h"
#import "ThreeModel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
	[super viewDidLoad];
///随便创建一个固定模板样式的UI  数据结构来源不同  由适配器去协调转化
	TestUI *testView = [[TestUI alloc] initWithFrame:CGRectMake(100, 100, 100, 100)];
	[self.view addSubview: testView];
	///创建三种数据结构实体
	OneModel *one = [OneModel new];
	one.name = @"one";
	one.desc = @"适配器模式么";
	one.image = @"imageUrl://www.baidu.com/1.jpg";

	TwoModel *two = [TwoModel new];
	two.nickName = @"two";
	two.desc = @"适配器模式-专注黑盒三十年-转换数据如同喝茶饮水";
	two.pic = @"imageUrl://www.baidu.com/2.jpg";

	ThreeModel *three = [ThreeModel new];
	three.title = @"three";
	three.tipMsg = @"本质上是为了提供一种解耦合的方案,减少重复判断以及大量的if-else逻辑分析";
	three.img = @"imageUrl://www.baidu.com/3.jpg";

	///实例化创建适配器
	CustomAdapter *adapter = [[CustomAdapter alloc] initWithData: one];
	NSLog(@"%@",adapter.description);

	adapter = [[CustomAdapter alloc] initWithData: two];
	NSLog(@"%@",adapter.description);

  adapter = [[CustomAdapter alloc] initWithData: three];
	NSLog(@"%@",adapter.description);

	/// 在赋值UI方面 可以只依赖于一个适配器类即可  无需写三个model类进行赋值,可以说是UI赋值这里 有一定的解耦作用  不至于依赖绑的死死的~  如果某一个model数据结构不能用了直接删掉,报错的地方有model自身创建 - model赋值 - , 之前绑定UI的方式,所以UI部分的引用得去除, 如果是适配器里写的, 就直接屏蔽适配器该model的相关代码即可 方便调试测试~

//	testView.nameLabel.text = adapter.adapterName;
//	testView.descLabel.text = adapter.desc;
//	testView.imageView.image = [UIImage imageNamed: adapter.image];

	[testView setAdapter: adapter];
}


@end
