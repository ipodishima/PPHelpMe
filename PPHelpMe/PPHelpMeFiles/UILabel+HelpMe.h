//
//  UILabel+HelpMe.h
//  PPHelpMe
//
//  Created by Marian Paul on 11/10/13.
//  Copyright (c) 2013 Marian Paul. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UILabel (HelpMe)
- (id) initWithText:(NSString *)text textColor:(UIColor*)textColor font:(UIFont*)font;
- (id) initWithText:(NSString *)text textColor:(UIColor*)textColor font:(UIFont*)font textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines;

+ (id) newWithText:(NSString *)text textColor:(UIColor*)textColor font:(UIFont*)font;
+ (id) newWithText:(NSString *)text textColor:(UIColor*)textColor font:(UIFont*)font textAlignment:(NSTextAlignment)textAlignment numberOfLines:(NSInteger)numberOfLines;

@end
