//
//  UINavigationController+HelpMe.m
//  PPHelpMe
//
//  Created by Marian Paul on 16/04/13.
//  Copyright (c) 2013 iPuP. All rights reserved.
//

#import "UINavigationController+HelpMe.h"

@implementation UINavigationController (HelpMe)

- (UIViewController *)popToFirstControllerOfClass:(Class)cClass animated:(BOOL)animated
{
    UIViewController *foundedController = nil;
    for (int i = [self.viewControllers count] - 1 ; i >= 0 ; i--)
    {
        id controller = self.viewControllers[i];
        if ([controller isKindOfClass:cClass]) {
            foundedController = controller;
            break;
        }
    }
    if (foundedController)
        [self popToViewController:foundedController animated:animated];
    
    return foundedController;
}

- (void)popViewControllerBy:(NSInteger)numberToPop animated:(BOOL)animated
{
    if ([self.viewControllers count] > numberToPop) {
        UIViewController *toReach = self.viewControllers[[self.viewControllers count] - numberToPop - 1];
        [self popToViewController:toReach animated:animated];
    }
    else
        [self popToRootViewControllerAnimated:animated];
}

@end
