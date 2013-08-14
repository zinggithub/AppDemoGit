//
//  ModelDetailViewController.m
//  AppDemo
//
//  Created by Sidney on 13-8-13.
//  Copyright (c) 2013年 BH. All rights reserved.
//

#import "ModelDetailViewController.h"
#import "SpecialOffersViewController.h"
#import "Show360ViewController.h"

@interface ModelDetailViewController ()

@end

@implementation ModelDetailViewController

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
    int offsetY = 0;
    for (int i = 0; i < 5; i ++) {
        if (i < 3) {
            offsetY -= 10;
        }else{
            offsetY += 10;
        }
        UIButton * menuBtn = [[UIButton alloc] initWithFrame:CGRectMake(15 + 60 * i, 340 - offsetY, 45, 45)];
        NSString * imgName = [NSString stringWithFormat:@"icon_%d.png",i + 1];
        [menuBtn setBackgroundImage:[UIImage imageNamed:imgName] forState:UIControlStateNormal];
        menuBtn.tag = i;
        [menuBtn addTarget:self action:@selector(menuBtnPressed:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:menuBtn];
    }
}

- (void)menuBtnPressed:(UIButton *)sender
{
    int index = sender.tag;
    switch (index) {
        case 0:
        {
            
        }
            break;
        case 1:
        {
            
            
            
            [[ConfigData shareInstance] setNeedRotation:YES];
            if ([[UIDevice currentDevice] respondsToSelector:@selector(setOrientation:)]) {
                [[UIDevice currentDevice] performSelector:@selector(setOrientation:)
                                               withObject:(id)UIInterfaceOrientationLandscapeLeft];
            }
            [UIViewController attemptRotationToDeviceOrientation];
            
            Show360ViewController * show360 = [[Show360ViewController alloc] init];
            [self.navigationController pushViewController:show360 animated:YES];
            
        }
            break;
        case 2:
        {
            
        }
            break;
        case 3:
        {
            
        }
            break;
        case 4:
        {
          
            SpecialOffersViewController * specialOffersViewCtrller = [[SpecialOffersViewController alloc] init];
            [self.navigationController pushViewController:specialOffersViewCtrller animated:YES];

            
        }
            break;
        default:
            break;
    }
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
