//
//  iFlyMSC.h
//  AppDemo
//
//  Created by issuser on 13-7-18.
//  Copyright (c) 2013年 BH. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "iflyMSC/IFlySpeechRecognizer.h"
#import "iflyMSC/IFlyDataUploader.h"
#import "iflyMSC/IFlySpeechSynthesizerDelegate.h"
#import "iflyMSC/IFlySpeechRecognizer.h"
#import "iflyMSC/IFlySpeechSynthesizer.h"


@protocol iFlyMSCDelegate;

@protocol iFlyMSCDelegate <NSObject>
@optional


//语音识别回调
//输入语音的音量大小实时回调
- (void)volumeChanged:(int)volume;
//开始识别
- (void)beginOfSpeech;
//结束识别
- (void)endOfSpeech;
//错误信息
- (void)errorOfSpeech:(IFlySpeechError *)error;
//识别信息
- (void)recognizeResults:(NSString *)result;

//语音合成回调
//开始播放
- (void)speakBegin;
//缓冲进度
- (void)bufferProgress:(int)progress;
//播发进度
- (void)speakProgress:(int)progress;
//播放完成
- (void)speakCompleted:(NSString *)errorString;
//播放取消
- (void)speakCancel;
@end

@interface iFlyMSC : NSObject

@property(weak,nonatomic)id<iFlyMSCDelegate> delegate;


+ (id)shareInstance;

//开始语音识别
- (BOOL)startRecongnizer;
//结束语音识别
- (void)stopRecongnizer;
//取消语音识别
- (void)cancelRecongnizer;


//开始语音合成
- (BOOL)startSynthesizer:(NSString *)txt;
//取消语音合成
- (void)cancelSynthesizer;
//暂停语音合成
- (void)pauseSynthesizer;
//继续语音合成
- (void)resumeSynthesizer;

@end

