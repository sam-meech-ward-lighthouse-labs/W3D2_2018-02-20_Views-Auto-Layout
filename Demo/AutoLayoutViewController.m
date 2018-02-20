//
//  AutoLayoutViewController.m
//  Demo
//
//  Created by Sam Meech-Ward on 2018-02-20.
//  Copyright © 2018 lighthouse-labs. All rights reserved.
//

#import "AutoLayoutViewController.h"

@interface AutoLayoutViewController ()

@end

@implementation AutoLayoutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
  
  UIView *colorView = [[UIView alloc] init];
  colorView.backgroundColor = [UIColor magentaColor];
  [self.view addSubview:colorView];
  
  colorView.translatesAutoresizingMaskIntoConstraints = NO;
  
  NSLayoutConstraint * topConstraint =
  [NSLayoutConstraint
   constraintWithItem:colorView
   attribute:NSLayoutAttributeTop
   relatedBy:NSLayoutRelationEqual
   toItem:self.view
   attribute:NSLayoutAttributeTop
   multiplier:1.0
   constant:20.0];
  
  NSLayoutConstraint * leftConstraint =
  [NSLayoutConstraint
   constraintWithItem:colorView
   attribute:NSLayoutAttributeLeft
   relatedBy:NSLayoutRelationEqual
   toItem:self.view
   attribute:NSLayoutAttributeLeft
   multiplier:1.0
   constant:20.0];
  
  NSLayoutConstraint * rightConstraint =
  [NSLayoutConstraint
   constraintWithItem:colorView
   attribute:NSLayoutAttributeRight
   relatedBy:NSLayoutRelationEqual
   toItem:self.view
   attribute:NSLayoutAttributeRight
   multiplier:1.0
   constant:-20.0];
  
  NSLayoutConstraint * bottomConstraint =
  [NSLayoutConstraint
   constraintWithItem:colorView
   attribute:NSLayoutAttributeBottom
   relatedBy:NSLayoutRelationEqual
   toItem:self.view
   attribute:NSLayoutAttributeBottom
   multiplier:1.0
   constant:-20.0];
  
  NSLayoutConstraint * heightConstraint =
  [NSLayoutConstraint
   constraintWithItem:colorView
   attribute:NSLayoutAttributeHeight
   relatedBy:NSLayoutRelationEqual
   toItem:nil
   attribute:NSLayoutAttributeNotAnAttribute
   multiplier:1.0
   constant:200.0];
  
  
  leftConstraint.active = YES;
  rightConstraint.active = YES;
  
  bottomConstraint.active = YES;
  topConstraint.active = NO;
  heightConstraint.active = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
