//
//  UIBarButtonItem+HelpMe.m
//  PPHelpMe
//
//  Created by Jérémy Lagrue on 22/10/13.
//  Copyright (c) 2013 Wasappli. All rights reserved.
//

#import "UIBarButtonItem+HelpMe.h"

@implementation UIBarButtonItem (HelpMe)

+ (UIBarButtonItem*) buildBarButtonImageName:(NSString *)imageName target:(id)target action:(SEL)action
{
    UIButton *button = [UIButton buttonWithBackgroundImageName:imageName];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *buttonItem = [[UIBarButtonItem alloc] initWithCustomView:button];
    return buttonItem;
}

@end
