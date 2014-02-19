//
//  NSDictionary+NullAware.m
//  PPHelpMe
//
//  Created by Marian PAUL on 21/09/12.
//  Copyright (c) 2012 iPuP SARL. All rights reserved.
//

#import "NSDictionary+HelpMe.h"

@implementation NSDictionary (HelpMe)
- (id) nullAwareObjectForKey:(id)key
{
    id object = [self objectForKey:key];
    if ([object isEqual:[NSNull null]]) object = nil;
    return object;
}
@end
