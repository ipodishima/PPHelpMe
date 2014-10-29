//
//  ViewController.m
//  PPHelpMe
//
//  Created by Marian Paul on 29/10/2014.
//  Copyright (c) 2014 Marian Paul. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)didRotateFromInterfaceOrientation:(UIInterfaceOrientation)fromInterfaceOrientation {
    [super didRotateFromInterfaceOrientation:fromInterfaceOrientation];
    
    NSLog(@"PPScreenBounds: %@", NSStringFromCGRect(PPScreenBounds()));
    NSLog(@"PPNavigationFrame: %@", NSStringFromCGRect(PPNavigationFrame()));
    NSLog(@"PPFixedScreenBounds: %@", NSStringFromCGRect(PPFixedScreenBounds()));
    NSLog(@"PPToolBarHeight: %f", PPToolBarHeight());
    NSLog(@"PPStatusBarHeight: %f", PPStatusBarHeight());
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
