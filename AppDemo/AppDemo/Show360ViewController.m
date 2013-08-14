//
//  Show360ViewController.m
//  AppDemo
//
//  Created by Sidney on 13-8-14.
//  Copyright (c) 2013年 BH. All rights reserved.
//

#import "Show360ViewController.h"

@interface Show360ViewController ()

@end

@implementation Show360ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [UIView animateWithDuration:0.1f animations:^{
        CGRect frame = self.navImgView.frame;
        frame.size.width = 480;
        self.navImgView.frame = frame;
        
        CGRect tframe = self.homeBtn.frame;
        tframe.origin.x = 450;
        self.homeBtn.frame = tframe;
    }];
    
    
//    [[ConfigData shareInstance] setNeedRotation:YES];

//    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
//        [[UIDevice currentDevice] performSelector:@selector(setOrientation:)
//                                       withObject:(id)UIInterfaceOrientationLandscapeLeft];
//    }
//    [UIViewController attemptRotationToDeviceOrientation];


}

- (void)backBtnPressed:(UIButton *)sender
{
    [[ConfigData shareInstance] setNeedRotation:NO];
    if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
        [[UIDevice currentDevice] performSelector:@selector(setOrientation:)
                                       withObject:(id)UIDeviceOrientationPortrait];
    }
    
    [UIViewController attemptRotationToDeviceOrientation];
    
    
    [super backBtnPressed:sender];

}

- (NSUInteger)supportedInterfaceOrientations
{
    return UIInterfaceOrientationMaskPortrait;
}


- (BOOL)shouldAutorotate
{
    return YES;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    if(interfaceOrientation == UIInterfaceOrientationLandscapeLeft){
        return YES;
    }
    return NO;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
