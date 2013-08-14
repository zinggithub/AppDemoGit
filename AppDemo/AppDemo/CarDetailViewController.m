//
//  CarDetailViewController.m
//  AppDemo
//
//  Created by Sidney on 13-8-12.
//  Copyright (c) 2013年 BH. All rights reserved.
//

#import "CarDetailViewController.h"
#import "RNExpandingButtonBar.h"
#import "TestDrivingViewController.h"
#import "BookingCarViewController.h"

@interface CarDetailViewController ()
<RNExpandingButtonBarDelegate>

@property(nonatomic,strong)RNExpandingButtonBar * expandingBar;

@end

@implementation CarDetailViewController

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
    [self setTitle:@"澎湃动力"];
    
    int count = 5;
    for (int i = 0; i < count; i ++) {
        UIImageView * engineImg = [[UIImageView alloc] initWithFrame:CGRectMake((SCREEN_WIDTH - 214) / 2 + 320 * i, 60, 214, 186)];
        engineImg.image = [UIImage imageNamed:@"image_engine.png"];
        [self.bgScrollView addSubview:engineImg];
        
        UIImageView * introText = [[UIImageView alloc] initWithFrame:CGRectMake((SCREEN_WIDTH - 256) / 2 + 320 * i, 300, 256, 110)];
        introText.image = [UIImage imageNamed:@"imaeg_intro_txt.png"];
        [self.bgScrollView addSubview:introText];
    }
    self.bgScrollView.pagingEnabled = YES;
    [self.bgScrollView setContentSize:CGSizeMake(SCREEN_WIDTH * count, CGRectGetHeight(self.bgScrollView.frame))];
    [self.view addSubview:self.bgScrollView];
    
    UIButton * leftBtn = [[UIButton alloc] initWithFrame:CGRectMake(10, 135, 15, 24)];
    [leftBtn setImage:[UIImage imageNamed:@"image_left_arrow.png"] forState:UIControlStateNormal];
    [leftBtn addTarget:self action:@selector(leftBtnPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:leftBtn];
    
    UIButton * rightBtn = [[UIButton alloc] initWithFrame:CGRectMake(290, 135, 15, 24)];
    [rightBtn setImage:[UIImage imageNamed:@"image_right_arrow.png"] forState:UIControlStateNormal];
    [rightBtn addTarget:self action:@selector(rightBtnPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:rightBtn];
    
    [self initMenuBtns];
}

- (void)leftBtnPressed:(UIButton *)btn
{
    int curPage = self.bgScrollView.contentOffset.x / SCREEN_WIDTH;
    curPage --;
    if (curPage >= 0) {
        [self.bgScrollView setContentOffset:CGPointMake(SCREEN_WIDTH * curPage, 0) animated:YES];
    }
    
}

- (void)rightBtnPressed:(UIButton *)btn
{
    int curPage = self.bgScrollView.contentOffset.x / SCREEN_WIDTH;
    curPage ++;
    if (curPage < 5 ) {
        [self.bgScrollView setContentOffset:CGPointMake(SCREEN_WIDTH * curPage, 0) animated:YES];
    }
    
}

- (void)initMenuBtns
{
    CGRect frame = CGRectMake(0, 0, 35.0f, 35.0f);
    
    NSMutableArray * btns = [[NSMutableArray alloc] init];
    for (int i = 0; i < 2; i ++) {
        UIButton * btn = [[UIButton alloc] initWithFrame:frame];
        btn.tag = i;
        [btn setImage:[UIImage imageNamed:[NSString stringWithFormat:@"icon_1_%d.png",i + 1]] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(btnPressed:) forControlEvents:UIControlEventTouchUpInside];
        [btns addObject:btn];
    }
    
    _expandingBar = [[RNExpandingButtonBar alloc] initWithImage:[UIImage imageNamed:@"iamge_open_btn.png"] selectedImage:nil toggledImage:[UIImage imageNamed:@"image_close_btn.png"] toggledSelectedImage:nil buttons:btns center:CGPointMake(20.0f, 80.0f)];
    [_expandingBar setDelegate:self];
    [_expandingBar setSpin:YES];
    [_expandingBar setHorizontal:YES];
    [_expandingBar setExplode:YES];
    [self.view addSubview:_expandingBar];
    
}

- (void)btnPressed:(UIButton *)sender
{
    int index = sender.tag;
    NSLog(@"index:%d",index);
    [_expandingBar hideButtonsAnimated:YES];
    
    if (index == 0) {
        TestDrivingViewController * testDriving = [[TestDrivingViewController alloc] init];
        [self.navigationController pushViewController:testDriving animated:YES];
    }else{
        BookingCarViewController * bookingCar = [[BookingCarViewController alloc] init];
        [self.navigationController pushViewController:bookingCar animated:YES];
        
    }
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
