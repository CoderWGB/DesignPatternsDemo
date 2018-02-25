//
//  WGBAdapter.h
//  Adapter
//
//  Created by 王贵彬 on 2018/2/25.
//  Copyright © 2018年 王贵彬. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol AdapterProtocol <NSObject>

- (NSString *)adapterName;
- (NSString *)image;
- (NSString *)desc;

@end

@interface WGBAdapter : NSObject<AdapterProtocol>

@property (weak, nonatomic) id  data;
- (instancetype)initWithData:(id)data;

@end
