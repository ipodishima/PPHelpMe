//
//  UIButton+HelpMe.h
//  PPHelpMe
//
//  Created by Marian Paul on 09/04/13.
//  Copyright (c) 2013 iPuP. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (HelpMe)
+ (id)buttonWithImage:(UIImage*)image;
+ (id)buttonWithImageName:(NSString*)imageName;
+ (id)buttonWithImage:(UIImage*)image highlightedImage:(UIImage*)highlightedImage;
+ (id)buttonWithImageName:(NSString*)imageName highlightedImageName:(NSString*)highlightedImageName;

+ (id)buttonWithBackgroundImage:(UIImage*)image;
+ (id)buttonWithBackgroundImageName:(NSString*)imageName;
+ (id)buttonWithBackgroundImage:(UIImage*)image highlightedImage:(UIImage*)highlightedImage;
+ (id)buttonWithBackgroundImageName:(NSString*)imageName highlightedImageName:(NSString*)highlightedImageName;

- (void) setImageName:(NSString*)imageName forState:(UIControlState)state;
- (void) setBackgroundImageName:(NSString*)imageName forState:(UIControlState)state;
- (void) setSizeFromImageState:(UIControlState)state;
- (void) setSizeFromBackgroundImageState:(UIControlState)state;
@end
