//
//  FoodProtocol.h
//  DecorateCode
//
//  Created by 王贵彬 on 2018/2/23.
//  Copyright © 2018年 王贵彬. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol FoodProtocol <NSObject>
@optional
- (NSString *)foodName; //什么食物
- (double)totalCountMoney; //算钱💰
@end
