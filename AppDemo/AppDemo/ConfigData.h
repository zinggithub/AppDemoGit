//
//  ConfigData.h
//  AppDemo
//
//  Created by Sidney on 13-8-13.
//  Copyright (c) 2013年 BH. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ConfigData : NSObject

@property(nonatomic,assign)BOOL needRotation;

- (void)setNeedRotation:(BOOL)status;
- (BOOL)getNeedRotation;
+ (id)shareInstance;

@end
