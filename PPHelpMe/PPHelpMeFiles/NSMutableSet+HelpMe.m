//
//  NSMutableSet+HelpMe.m
//  PPHelpMe
//
//  Created by Marian Paul on 18/07/13.
//
//

#import "NSMutableSet+HelpMe.h"

@implementation NSMutableSet (HelpMe)

- (void)removeObjectIfNotNil:(id)object
{
    if (object) {
        [self removeObject:object];
    }
}

@end
