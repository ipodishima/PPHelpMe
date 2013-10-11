//
//  UILabel+HelpMe.m
//  PPHelpMe
//
//  Created by Marian Paul on 11/10/13.
//  Copyright (c) 2013 Marian Paul. All rights reserved.
//

#import "UILabel+HelpMe.h"

@implementation UILabel (HelpMe)

- (id)initWithText:(NSString *)text textColor:(UIColor *)textColor font:(UIFont *)font
{
    return [self initWithText:text textColor:textColor font:font textAlignment:NSTextAlignmentLeft numberOfLines:1];
}

- (id)initWithText:(NSString *)text textColor:(UIColor *)textColor font:(UIFont *)font textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines
{
    if (self = [super init]) {
        self.text = text;
        self.textColor = textColor;
        self.backgroundColor = [UIColor clearColor];
        self.font = font;
        self.textAlignment = textAlignment;
        self.numberOfLines = numberOfLines;
        [self sizeToFit];
    }
    return self;
}

+ (id)newWithText:(NSString *)text textColor:(UIColor *)textColor font:(UIFont *)font
{
    return [[self alloc] initWithText:text
                            textColor:textColor
                                 font:font];
}

+ (id)newWithText:(NSString *)text textColor:(UIColor *)textColor font:(UIFont *)font textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines
{
    return [[self alloc] initWithText:text
                            textColor:textColor
                                 font:font
                        textAlignment:textAlignment
                        numberOfLines:numberOfLines];
}
@end
