//
//  UINavigationController+rotation.m
//  Mazda
//
//  Created by binfo on 12-11-16.
//  Copyright (c) 2012年 B.H. Tech Co.Ltd. All rights reserved.
//

#import "UINavigationController+rotation.h"
#import "ConfigData.h"

@implementation UINavigationController (rotation)

- (NSUInteger)supportedInterfaceOrientations
{
    //NSLog(@"self.topViewController:%@",[self.topViewController description]);
    
    if ([[ConfigData shareInstance] getNeedRotation])
    {
        return UIInterfaceOrientationMaskLandscapeLeft;
    }else{
        return UIInterfaceOrientationMaskPortrait;
    }
}

- (BOOL)shouldAutorotate
{
    return YES;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
//    if ([[ConfigData shareInstance] getNeedRotation]) {
//        if(interfaceOrientation == UIInterfaceOrientationLandscapeLeft){
//            return YES;
//        }
//    }else{
//        if(interfaceOrientation == UIInterfaceOrientationPortrait){
//            return YES;
//        }
//    }
    return NO;

}
@end
