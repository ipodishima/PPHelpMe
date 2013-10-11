//
//  UIImageView+HelpMe.m
//  PPHelpMe
//
//  Created by Marian Paul on 09/04/13.
//  Copyright (c) 2013 iPuP. All rights reserved.
//

#import "UIImageView+HelpMe.h"

@implementation UIImageView (HelpMe)

- (id)initWithImageName:(NSString *)imageName
{
    return [self initWithImage:[UIImage imageNamed:imageName]];
}

+ (id)newWithImageName:(NSString *)imageName
{
    return [[self alloc] initWithImageName:imageName];
}

+ (id)newWithImage:(UIImage *)image
{
    return [[self alloc] initWithImage:image];
}

+ (id) newResizableWithImageName:(NSString*)imageName capInsets:(UIEdgeInsets)insets
{
    return [self newResizableWithImage:[UIImage imageNamed:imageName] capInsets:insets];
}

+ (id) newResizableWithImage:(UIImage*)image capInsets:(UIEdgeInsets)insets
{
    return [[self alloc] initWithImage:[image resizableImageWithCapInsets:insets]];
}

@end
