//
//  SecondLevelViewController.h
//  AppDemo
//
//  Created by sun pan on 13-7-18.
//  Copyright (c) 2013年 BH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FTUtils.h"
#import "ConfigData.h"

@interface SecondLevelViewController : UIViewController
<UIAlertViewDelegate>
{
    
}

@property(nonatomic,assign)CGRect childFrame;
@property(nonatomic,strong)UIImageView * navImgView;
@property(nonatomic,strong)UIButton * homeBtn;


@property(nonatomic,strong)UILabel *titleLabel;
@property(nonatomic,strong)UIImageView *bgImgView;
@property(nonatomic,strong)UIScrollView * bgScrollView;
- (void)showAlertView:(NSString *)title message:(NSString *)msg;
- (void)setTitle:(NSString *)title;
- (void)backBtnPressed:(UIButton *)sender;

@end
