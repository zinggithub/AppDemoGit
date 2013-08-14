//
//  CustomSpeakerView.h
//  AppDemo
//
//  Created by Sidney on 13-8-10.
//  Copyright (c) 2013年 BH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FTAnimation.h"

@protocol CustomSpeakerViewDelegate;

@interface CustomSpeakerView : UIView


@property(nonatomic,assign)id <CustomSpeakerViewDelegate>delegate;
@property (nonatomic,strong) UILabel * tipLabel;


@end

@protocol CustomSpeakerViewDelegate <NSObject>
@optional

- (void)touchBegan:(CustomSpeakerView *)view;
- (void)touchEnded:(CustomSpeakerView *)view;
- (void)touchMoved:(CustomSpeakerView *)view;
- (void)touchCanceled:(CustomSpeakerView *)view;

@end