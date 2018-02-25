//
//  TakePhotoFactory.h
//  DesignCodeDemo
//
//  Created by 王贵彬 on 2018/2/23.
//  Copyright © 2018年 王贵彬. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TakePhotoProtocol.h"

@interface TakePhotoFactory : NSObject<TakePhotoProtocol>

+ (TakePhotoFactory *)craeateWithPhoneType:(PhoneType)phoneType;

@end
