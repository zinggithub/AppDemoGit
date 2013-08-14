//
//  RightSideViewController.m
//  AppDemo
//
//  Created by Sidney on 13-8-7.
//  Copyright (c) 2013年 BH. All rights reserved.
//

#import "RightSideViewController.h"

@interface RightSideViewController ()

@end

@implementation RightSideViewController

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
    self.view.backgroundColor = RGBACOLOR(65,65,65,1);
    self.mm_drawerController.shouldStretchDrawer = NO;
    float offsetY = 92;
    for (int i = 0; i < 6; i ++) {
        UIButton * btn = [[UIButton alloc] initWithFrame:CGRectMake(0, offsetY * i, 116, offsetY)];
        UIImage * image = [UIImage imageNamed:[NSString stringWithFormat:@"image_%d.png",i + 1]];
        [btn setBackgroundImage:image forState:UIControlStateNormal];
        [self.view addSubview:btn];
    }

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
