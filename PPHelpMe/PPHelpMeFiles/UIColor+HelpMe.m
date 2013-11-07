//
//  UIColor+HelpMe.m
//  PPHelpMe
//
//  Created by Marian Paul on 12/06/13.
//
//

#import "UIColor+HelpMe.h"

@implementation UIColor (HelpMe)

+ (UIColor*)colorWithHexa:(NSUInteger)hexa alpha:(CGFloat) alpha
{
    return [UIColor colorWithRed:((float)((hexa & 0xFF0000) >> 16)) / 255.0
                           green:((float)((hexa & 0xFF00) >> 8)) / 255.0
                            blue:((float)((hexa & 0xFF))) / 255.0
                           alpha:alpha];
}

+ (UIColor*)colorWithHexa:(NSUInteger)hexa
{
    return [self colorWithHexa:hexa alpha:1.0];
}

@end
