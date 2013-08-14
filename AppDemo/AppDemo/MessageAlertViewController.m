//
//  MessageAlertViewController.m
//  AppDemo
//
//  Created by issuser on 13-7-18.
//  Copyright (c) 2013年 BH. All rights reserved.
//

#import "MessageAlertViewController.h"

@interface MessageAlertViewController ()

@end

@implementation MessageAlertViewController

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
    [self setTitle:@"消息提醒"];
    
    self.bgImgView.frame = CGRectMake(0, SCREEN_HEIGHT - 425, 320, 425);
    self.bgImgView.image = [UIImage imageNamed:@"msg_alert_bg.png"];
    [self.view addSubview:self.bgImgView];
	// Do any additional setup after loading the view.
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
