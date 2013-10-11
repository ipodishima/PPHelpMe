//
//  NSSet+HelpMe.m
//  PPHelpMe
//
//  Created by Marian Paul on 11/09/13.
//
//

#import "NSSet+HelpMe.h"

@implementation NSSet (HelpMe)

- (id)pickObjectRandomly
{
    if ([self count] != 0) {
        NSArray *allObjects = [self allObjects];
        return allObjects[arc4random()%[allObjects count]];
    }
    return nil;
}

@end
