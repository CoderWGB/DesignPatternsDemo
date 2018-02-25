//
//  ProductPhoneProtocol.h
//  DesignCodeDemo
//
//  Created by 王贵彬 on 2018/2/23.
//  Copyright © 2018年 王贵彬. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Phone ;
@protocol ProductPhoneProtocol <NSObject>
- (Phone *)createPhone;
- (NSString *)factoryPrice; //厂家建议售价
@end
