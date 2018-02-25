//
//  TestUI.m
//  Adapter
//
//  Created by 王贵彬 on 2018/2/25.
//  Copyright © 2018年 王贵彬. All rights reserved.
//

#import "TestUI.h"

@implementation TestUI

- (void)setAdapter:(CustomAdapter *)adapter{
	_adapter = adapter;
	self.nameLabel.text = adapter.adapterName;
	self.descLabel.text = adapter.desc;
	self.imageView.image = [UIImage imageNamed: adapter.image];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
