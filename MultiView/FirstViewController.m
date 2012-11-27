//
//  FirstViewController.m
//  MultiView
//
//  Created by liuwei on 12-11-25.
//  Copyright (c) 2012年 liuwei. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

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
	// Do any additional setup after loading the view.
    self.btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.btn setFrame:CGRectMake(150, 250, 72, 37)];
    [self.btn setTitle:@"移动" forState:UIControlStateNormal];
    [self.btn addTarget:self action:@selector(moveAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.btn];
    
    TouchesView *tv = [[TouchesView alloc] initWithFrame:self.view.frame];
    [self.view insertSubview:tv atIndex:0];
    [tv release];
}

- (void)addAction:(id)sender
{
    if (self.imageView == nil) {
        self.imageView = [[UIImageView alloc] initWithFrame:CGRectMake(50, 50, 100, 100)];
        [self.imageView setBackgroundColor:[UIColor redColor]];
        [self.view addSubview:self.imageView];
    }
    else
    {
        [self.imageView setFrame:CGRectMake(50, 50, 100, 100)];
    }
    
}

- (void)moveAction:(id)sender
{
    [UIView beginAnimations:nil context:nil];
    [UIView setAnimationDuration:1.5];
    CGRect testFrame = self.imageView.frame;
    testFrame.origin.x += 70;
    self.imageView.frame = testFrame;
    [UIView commitAnimations];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc
{
    [_imageView release];
    _imageView = nil;
    
    [_btn release];
    _btn = nil;
    
    [super dealloc];
}

@end
