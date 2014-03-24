//
//  UIButton+HelpMe.m
//  PPHelpMe
//
//  Created by Marian Paul on 09/04/13.
//  Copyright (c) 2013 iPuP. All rights reserved.
//

#import "UIButton+HelpMe.h"
#import "UIView+HelpMe.h"

@implementation UIButton (HelpMe)

+ (id)buttonWithImage:(UIImage*)image
{
    return [self buttonWithImage:image highlightedImage:nil];
}

+ (id)buttonWithImageName:(NSString*)imageName
{
    return [self buttonWithImageName:imageName highlightedImageName:nil];
}

+ (id)buttonWithImage:(UIImage*)image highlightedImage:(UIImage *)highlightedImage
{
    UIButton *button = [self buttonWithType:UIButtonTypeCustom];
    [button setImage:image forState:UIControlStateNormal];
    if (highlightedImage)
        [button setImage:highlightedImage forState:UIControlStateHighlighted];
    [button setSizeFromImageState:UIControlStateNormal];
    return button;
}

+ (id)buttonWithImageName:(NSString *)imageName highlightedImageName:(NSString *)highlightedImageName
{
    return [self buttonWithImage:[UIImage imageNamed:imageName] highlightedImage:highlightedImageName ? [UIImage imageNamed:highlightedImageName] : nil];
}

+ (id)buttonWithBackgroundImage:(UIImage*)image
{
    return [self buttonWithBackgroundImage:image highlightedImage:nil];
}

+ (id)buttonWithBackgroundImageName:(NSString*)imageName
{
    return [self buttonWithBackgroundImageName:imageName highlightedImageName:nil];
}

+ (id)buttonWithBackgroundImage:(UIImage*)image highlightedImage:(UIImage *)highlightedImage
{
    UIButton *button = [self buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:image forState:UIControlStateNormal];
    [button setBackgroundImage:highlightedImage forState:UIControlStateHighlighted];
    [button setSizeFromBackgroundImageState:UIControlStateNormal];
    return button;
}

+ (id)buttonWithBackgroundImageName:(NSString *)imageName highlightedImageName:(NSString *)highlightedImageName
{
    return [self buttonWithBackgroundImage:[UIImage imageNamed:imageName] highlightedImage:[UIImage imageNamed:highlightedImageName]];
}

- (void)setImageName:(NSString *)imageName forState:(UIControlState)state
{
    [self setImage:[UIImage imageNamed:imageName] forState:state];
}

- (void)setBackgroundImageName:(NSString *)imageName forState:(UIControlState)state
{
    [self setBackgroundImage:[UIImage imageNamed:imageName] forState:state];
}

- (void)setSizeFromImageState:(UIControlState)state
{
    [self setSize:[self imageForState:state].size];
}

- (void)setSizeFromBackgroundImageState:(UIControlState)state
{
    [self setSize:[self backgroundImageForState:state].size];
}

@end
