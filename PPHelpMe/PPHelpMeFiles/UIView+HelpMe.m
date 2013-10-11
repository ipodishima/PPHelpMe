//
//  UIView+HelpMe.m
//  PPHelpMe
//
//  Created by Marian Paul on 10/04/13.
//  Copyright (c) 2013 iPuP. All rights reserved.
//

#import "UIView+HelpMe.h"

@implementation UIView (HelpMe)

+ (id)newWithFrame:(CGRect)frame
{
    return [[self alloc] initWithFrame:frame];
}

+ (id)newWithZeroFrame
{
    return [self newWithFrame:CGRectZero];
}

- (void)setOrigin:(CGPoint)origin {
    CGRect newFrame = self.frame;
    newFrame.origin = origin;
    self.frame = newFrame;
}

- (void)setXOrigin:(CGFloat)xOrigin {
    CGRect newFrame = self.frame;
    newFrame.origin.x = xOrigin;
    self.frame = newFrame;
}

- (void)setYOrigin:(CGFloat)yOrigin {
    CGRect newFrame = self.frame;
    newFrame.origin.y = yOrigin;
    self.frame = newFrame;
}

- (void)setWidth:(CGFloat)width {
    CGRect newFrame = self.frame;
    newFrame.size.width = width;
    self.frame = newFrame;
}

- (void)setHeight:(CGFloat)height {
    CGRect newFrame = self.frame;
    newFrame.size.height = height;
    self.frame = newFrame;
}

- (void)setSize:(CGSize)size {
    CGRect newFrame = self.frame;
    newFrame.size = size;
    self.frame = newFrame;
}

- (void)roundFrame {
    self.frame = [self roundFrame:self.frame];
}

- (CGRect)roundFrame:(CGRect)frame {
    CGRect newFrame = frame;
    newFrame.origin.x = ceilf(newFrame.origin.x);
    newFrame.origin.y = ceilf(newFrame.origin.y);
    newFrame.size.width = ceilf(newFrame.size.width);
    newFrame.size.height = ceilf(newFrame.size.height);
    
    return newFrame;
}
@end
