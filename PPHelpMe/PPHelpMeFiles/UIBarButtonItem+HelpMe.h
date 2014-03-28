//
//  UIBarButtonItem+HelpMe.h
//  PPHelpMe
//
//  Created by Jérémy Lagrue on 22/10/13.
//  Copyright (c) 2013 Wasappli. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (HelpMe)

+ (UIBarButtonItem*) buildBarButtonImageName:(NSString *)imageName target:(id)target action:(SEL)action;

@end
