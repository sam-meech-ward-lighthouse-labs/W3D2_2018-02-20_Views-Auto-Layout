//
//  ViewController.m
//  Demo
//
//  Created by Sam Meech-Ward on 2018-02-20.
//  Copyright © 2018 lighthouse-labs. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIView *concreteView;

@end

@implementation ViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
//  CGRect frame = CGRectMake(0.0, self.view.frame.size.width, self.view.frame.size.height-80.0, 80.0);
//  UIView *concreteView = [[UIView alloc] initWithFrame:frame];
//  concreteView.backgroundColor = [UIColor grayColor];
//
//  [self.view addSubview:concreteView];
  
//  NSLog(@"subviews: %@", concreteView.subviews);
//  NSLog(@"superview: %@", concreteView.superview);
//
//  [concreteView removeFromSuperview];
//  self.view.subviews;
//  concreteView.superview;
  
  UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100.0, 100.0)];
  [self.view addSubview:button];
  [button setTitle:@"Animate" forState:UIControlStateNormal];
  [button addTarget:self action:@selector(animate) forControlEvents:UIControlEventTouchUpInside];
}

- (void)animate {
  [UIView animateWithDuration:2.0 animations:^{
    self.concreteView.backgroundColor = [UIColor colorWithRed:0.7 green:0.8 blue:0.11 alpha:0.0];
    self.concreteView.center = CGPointMake(0, 0);
  }];
}

- (void)viewDidAppear:(BOOL)animated {
  [super viewDidAppear:animated];
  
  CGRect frame =  CGRectMake(0.0, self.view.frame.size.height-80.0, self.view.frame.size.width, 80.0);
  self.concreteView = [[UIView alloc] initWithFrame:frame];
  self.concreteView.backgroundColor = [UIColor grayColor];
  
  self.concreteView.center = self.view.center;
  
//  self.concreteView.alpha = 0.5;
//  self.concreteView.hidden = YES;
  
//  self.concreteView.layer;
//
//  self.concreteView.layer.shadowRadius;
  
  self.concreteView.backgroundColor = [UIColor grayColor];
  self.concreteView.layer.backgroundColor = [UIColor grayColor].CGColor;
  
  [self.view addSubview:self.concreteView];
}


- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


@end
