//
//  AppDelegate.h
//  MultiView
//
//  Created by liuwei on 12-11-25.
//  Copyright (c) 2012年 liuwei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"

@class FirstViewController;   //.m 中用 import
@class SecondViewController;


@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) FirstViewController *firstController;
@property (strong, nonatomic) SecondViewController *secondController;


@end
