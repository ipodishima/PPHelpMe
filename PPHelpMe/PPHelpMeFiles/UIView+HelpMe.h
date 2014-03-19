//
//  UIView+HelpMe.h
//  PPHelpMe
//
//  Created by Marian Paul on 10/04/13.
//  Copyright (c) 2013 iPuP. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

extern const CGFloat kDefaultCornerRadius;

void apply_corner_radius(UIView *view, CGFloat radius);
void apply_default_corner_radius(UIView *view);

@interface UIView (HelpMe)
+ (id) newWithFrame:(CGRect)frame;
+ (id) newWithZeroFrame;

- (void)setOrigin:(CGPoint)origin;
- (void)setXOrigin:(CGFloat)xOrigin;
- (void)setYOrigin:(CGFloat)yOrigin;
- (void)setWidth:(CGFloat)width;
- (void)setHeight:(CGFloat)height;
- (void)setSize:(CGSize)size;
- (void)roundFrame;

- (UIView*)findFirstViewInHierarchyOfClass:(Class)classToLookFor;
- (UIImage *)image;
- (void)printSubviewsWithIndentation:(int)indentation;

@end
