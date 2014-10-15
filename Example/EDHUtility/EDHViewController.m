//
//  EDHViewController.m
//  EDHUtility
//
//  Created by tnantoka on 10/14/2014.
//  Copyright (c) 2014 tnantoka. All rights reserved.
//

#import "EDHViewController.h"

#import "EDHUtility.h"

@interface EDHViewController ()

@end

@implementation EDHViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *errorButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [errorButton setTitle:@" Show error " forState:UIControlStateNormal];
    [errorButton sizeToFit];
    [errorButton setBackgroundImage:[EDHUtility imageWithColor:[UIColor lightGrayColor] size:CGSizeMake(1.0f, 1.0f)] forState:UIControlStateNormal];
    [errorButton setBackgroundImage:[EDHUtility imageWithColor:[UIColor grayColor] size:CGSizeMake(1.0f, 1.0f)] forState:UIControlStateHighlighted];
    errorButton.center = CGPointMake(CGRectGetMidX(self.view.bounds), CGRectGetMidY(self.view.bounds));
    [errorButton addTarget:self action:@selector(errorButtonDidTap:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:errorButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)errorButtonDidTap:(id)sender {
    [EDHUtility showErrorWithMessage:@"Test" controller:self];
}

@end
