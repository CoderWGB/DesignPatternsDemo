//
//  PhoneFactory.h
//  DesignCodeDemo
//
//  Created by 王贵彬 on 2018/2/23.
//  Copyright © 2018年 王贵彬. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ProductPhoneProtocol.h"
#import "TakePhotoFactory.h"

/// 手机工厂生产手机
@interface PhoneFactory : TakePhotoFactory<ProductPhoneProtocol>

+ (PhoneFactory *)createPhoneFactoryWithPhoneType:(PhoneType)type;

@end
