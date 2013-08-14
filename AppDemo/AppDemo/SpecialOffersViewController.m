//
//  SpecialOffersViewController.m
//  AppDemo
//
//  Created by Sidney on 13-8-10.
//  Copyright (c) 2013年 BH. All rights reserved.
//

#import "SpecialOffersViewController.h"

@interface SpecialOffersViewController ()

@end

@implementation SpecialOffersViewController

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
    [self setTitle:@"优惠信息"];
    self.bgImgView.frame = CGRectMake(0, SCREEN_HEIGHT - 425, 320, 425);
    self.bgImgView.image = [UIImage imageNamed:@"specil_offers_bg.png"];
    [self.view addSubview:self.bgImgView];

    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
