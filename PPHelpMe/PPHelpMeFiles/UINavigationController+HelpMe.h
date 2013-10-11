//
//  UINavigationController+HelpMe.h
//  PPHelpMe
//
//  Created by Marian Paul on 16/04/13.
//  Copyright (c) 2013 iPuP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UINavigationController (HelpMe)
- (UIViewController*)popToFirstControllerOfClass:(Class)cClass animated:(BOOL)animated;
- (void)popViewControllerBy:(NSInteger)numberToPop animated:(BOOL)animated;
@end
