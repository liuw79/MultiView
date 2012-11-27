//
//  SwitchViewController.h
//  MultiView
//
//  Created by liuwei on 12-11-27.
//  Copyright (c) 2012年 liuwei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FirstViewController.h"
#import "SecondViewController.h"

@interface SwitchViewController : UIViewController

@property (strong, nonatomic) FirstViewController *firstViewController;
@property (strong, nonatomic) SecondViewController *secondViewController;

-(IBAction)switchToFirst:(id)sender;
-(IBAction)switchToSecond:(id)sender;
-(IBAction)switchToHome:(id)sender;

@end
