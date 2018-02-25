//
//  Guozi.h
//  DecorateCode
//
//  Created by 王贵彬 on 2018/2/23.
//  Copyright © 2018年 王贵彬. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CookFoodProtocol.h"

@interface Guozi : NSObject<CookFoodProtocol>
	// 准备的食材
@property (strong,nonatomic) id<FoodProtocol> food;
- (instancetype)initWithFood:(id<FoodProtocol>)food;

@end
