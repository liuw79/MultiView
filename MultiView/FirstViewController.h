//
//  FirstViewController.h
//  MultiView
//
//  Created by liuwei on 12-11-25.
//  Copyright (c) 2012年 liuwei. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TouchesView.h"


@interface FirstViewController : UIViewController

@property (nonatomic, retain) IBOutlet UIImageView * imageView;
@property (nonatomic, retain) UIButton *btn;

-(IBAction)addAction:(id)sender;
-(IBAction)moveAction:(id)sender;

@end
