//
//  TakePhotoProtocol.h
//  DesignCodeDemo
//
//  Created by 王贵彬 on 2018/2/23.
//  Copyright © 2018年 王贵彬. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef NS_ENUM(NSInteger,PhoneType) {
	SamsungType = 0,
	XiaoMiTYpe
};


@protocol TakePhotoProtocol <NSObject>

- (void)takePhoto;

@end
