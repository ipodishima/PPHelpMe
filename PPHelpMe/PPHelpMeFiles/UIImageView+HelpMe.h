//
//  UIImageView+HelpMe.h
//  PPHelpMe
//
//  Created by Marian Paul on 09/04/13.
//  Copyright (c) 2013 iPuP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (HelpMe)

- (id) initWithImageName:(NSString*)imageName;
+ (id) newWithImageName:(NSString*)imageName;
+ (id) newWithImage:(UIImage*)image;

+ (id) newResizableWithImageName:(NSString*)imageName capInsets:(UIEdgeInsets)insets;
+ (id) newResizableWithImage:(UIImage*)image capInsets:(UIEdgeInsets)insets;

@end
