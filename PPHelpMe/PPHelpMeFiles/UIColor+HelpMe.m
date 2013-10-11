//
//  UIColor+HelpMe.m
//  PPHelpMe
//
//  Created by Marian Paul on 12/06/13.
//
//

#import "UIColor+HelpMe.h"

@implementation UIColor (HelpMe)
+ (id)colorWithHexa:(NSUInteger)hexa
{
    return [UIColor colorWithRed:((float)((hexa & 0xFF0000) >> 16)) / 255.0
                           green:((float)((hexa & 0xFF00) >> 8)) / 255.0
                            blue:((float)((hexa & 0xFF))) / 255.0
                           alpha:1.0];
}
@end
