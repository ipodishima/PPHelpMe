//
//  NSMutableDictionary+NilAware.m
//  PPWordPress
//
//  Created by Marian PAUL on 18/05/12.
//  Copyright (c) 2012 iPuP SARL. All rights reserved.
//

#import "NSMutableDictionary+HelpMe.h"

@implementation NSMutableDictionary (HelpMe)
- (void) setObject:(id)object forNilAwareKey:(id)key
{
    if (key)
        [self setObject:object forKey:key];
}
@end
