//
//  TestUI.h
//  Adapter
//
//  Created by 王贵彬 on 2018/2/25.
//  Copyright © 2018年 王贵彬. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomAdapter.h"

@interface TestUI : UIView

// 假设有三个控件
@property (strong,nonatomic) UILabel *nameLabel ;
@property (strong,nonatomic) UILabel *descLabel ;
@property (strong,nonatomic) UIImageView *imageView ;

@property (strong,nonatomic) CustomAdapter *adapter ;


@end
