//
//  NSURL+Additions.m
//  PPHelpMe
//
//  Created by Marian Paul on 14/12/12.
//  Copyright (c) 2012 iPuP SARL. All rights reserved.
//

#import "NSURL+HelpMe.h"

@implementation NSURL (HelpMe)
-(NSDictionary *)queryParameters
{
    NSArray *parameters = [[self query] componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"=&"]];
    NSMutableDictionary *keyValueParam = [NSMutableDictionary dictionary];
    
    for (int i = 0; i < [parameters count]; i=i+2) {
        [keyValueParam setObject:[parameters objectAtIndex:i+1] forKey:[parameters objectAtIndex:i]];
    }
    return keyValueParam;
}
@end
