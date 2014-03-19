//
//  UIView+HelpMe.m
//  PPHelpMe
//
//  Created by Marian Paul on 10/04/13.
//  Copyright (c) 2013 iPuP. All rights reserved.
//

#import "UIView+HelpMe.h"

const CGFloat kDefaultCornerRadius = 5.0f;

void apply_corner_radius(UIView *view, CGFloat radius) {
    view.layer.cornerRadius = radius;
    view.layer.masksToBounds = YES;
    view.layer.shouldRasterize = YES;
}

void apply_default_corner_radius(UIView *view) {
    apply_corner_radius(view, kDefaultCornerRadius);
}

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

- (UIView*)findFirstViewInHierarchyOfClass:(Class)classToLookFor
{
    UIView *sView = self.superview;
    while (sView) {
        if ([sView isKindOfClass:classToLookFor]) {
            return sView;
        }
        sView = [sView superview];
    }
    return sView;
}

- (UIImage *)image {
    UIGraphicsBeginImageContext(self.bounds.size);
    if([self respondsToSelector:@selector(drawViewHierarchyInRect:afterScreenUpdates:)]){
        [self drawViewHierarchyInRect:self.bounds afterScreenUpdates:NO];
    }
    else{
        [self.layer renderInContext:UIGraphicsGetCurrentContext()];
    }
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    NSData *imageData = UIImageJPEGRepresentation(image, 1.0);
    image = [UIImage imageWithData:imageData];
    return image;
}

- (void)printSubviewsWithIndentation:(int)indentation {
    
    // Get all the subviews of the current view
    NSArray *subviews = [self subviews];
    
    // Loop through the whole subviews array. We are using the plain-old C-like for loop,
    // just for its simplicity and also to be provided with the iteration number
    for (int i = 0; i < [subviews count]; i++) {
        
        // Get the subview at current index
        UIView *currentSubview = [subviews objectAtIndex:i];
        
        // We will create our description using this mutable string
        NSMutableString *currentViewDescription = [[NSMutableString alloc] init];
        
        // Indent the actual description to provide visual clue of  how deeply is the current view nested
        for (int j = 0; j <= indentation; j++) {
            [currentViewDescription appendString:@"   "];
        }
        
        // Construct the actual description string. Note that we are using just index of the current view
        // and name of its class, but it's up to you to print anything you are interested in
        // (for example the frame property using the NSStringFromCGRect(currentSubview.frame) )
        [currentViewDescription appendFormat:@"[%d]: class: '%@' - %@", i, NSStringFromClass([currentSubview class]), [currentSubview description]];
        
        NSString *inset = nil;
        if ([currentSubview respondsToSelector:@selector(contentInset)]) {
            inset = NSStringFromUIEdgeInsets([(UIScrollView*)currentSubview contentInset]);
        }
        // Log the description string to the console
        NSLog(@"%@ - %@", currentViewDescription, inset);
        
        // the 'recursiveness' nature of this method. Call it on the current subview, with greater indentation
        [currentSubview printSubviewsWithIndentation:indentation+1];
    }
}


@end
