//
//  SwitchViewController.m
//  MultiView
//
//  Created by liuwei on 12-11-27.
//  Copyright (c) 2012年 liuwei. All rights reserved.
//

#import "SwitchViewController.h"

@interface SwitchViewController ()

@end

@implementation SwitchViewController

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
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)switchToFirst:(id)sender
{
    if (self.secondViewController.view != nil)
    {
        [self.secondViewController.view removeFromSuperview];
    }
    
    if (self.firstViewController.view.superview == nil)
    {
        if (self.firstViewController.view == nil)
        {
            self.firstViewController = [[FirstViewController alloc] initWithNibName:@"FirstView" bundle:nil];
        }
        [self.view insertSubview:self.firstViewController.view atIndex:0];
    }
}

- (void)switchToSecond:(id)sender
{
    if (self.firstViewController.view != nil)
    {
        [self.firstViewController.view removeFromSuperview];
    }
    
    if (self.secondViewController.view.superview == nil)
    {
        if (self.secondViewController.view == nil)
        {
            self.secondViewController = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
        }
        [self.view insertSubview:self.secondViewController.view atIndex:0];
    }
}

-(void)switchToHome:(id)sender
{
    if (self.firstViewController.view != nil)
    {
        [self.firstViewController.view removeFromSuperview];
    }
    if (self.secondViewController.view != nil)
    {
        [self.secondViewController.view removeFromSuperview];
    }
}

@end






