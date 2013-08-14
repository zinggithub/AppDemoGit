//
//  CalculatorViewController.m
//  AppDemo
//
//  Created by Sidney on 13-8-10.
//  Copyright (c) 2013年 BH. All rights reserved.
//

#import "CalculatorViewController.h"

@interface CalculatorViewController ()

@end

@implementation CalculatorViewController

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
    [self setTitle:@"购车计算器"];
    
    [self.view addSubview:self.bgScrollView];
    
    UIImage * img = [UIImage imageNamed:@"calculator_1_bg.png"];
    self.bgImgView.frame = CGRectMake(0, 0, SCREEN_WIDTH, 1338/2);
    self.bgImgView.image = img;
    self.bgImgView.userInteractionEnabled = YES;
    [self.view addSubview:self.bgImgView];
    
    
    UIButton * touchBtn = [[UIButton alloc] initWithFrame:CGRectMake(274, 220, 30, 30)];
    [touchBtn setBackgroundColor:[UIColor clearColor]];
    
    [touchBtn addTarget:self action:@selector(touchBtnPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.bgImgView addSubview:touchBtn];

    
    [self.bgScrollView addSubview:self.bgImgView];
    [self.bgScrollView setContentSize:CGSizeMake(SCREEN_WIDTH, 1338/2)];
}

- (void)touchBtnPressed:(UIButton *)sender
{
    if (!sender.selected) {
        UIImage * img = [UIImage imageNamed:@"calculator_2_bg.png"];
        self.bgImgView.frame = CGRectMake(0, 1.5, SCREEN_WIDTH, 1420/2);
        self.bgImgView.image = img;
        [self.bgScrollView setContentSize:CGSizeMake(SCREEN_WIDTH, 1420/2)];
    }else{
        UIImage * img = [UIImage imageNamed:@"calculator_1_bg.png"];
        self.bgImgView.frame = CGRectMake(0, 0, SCREEN_WIDTH, 1338/2);
        self.bgImgView.image = img;
        [self.bgScrollView setContentSize:CGSizeMake(SCREEN_WIDTH, 1338/2)];
    }
    sender.selected = !sender.selected;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
