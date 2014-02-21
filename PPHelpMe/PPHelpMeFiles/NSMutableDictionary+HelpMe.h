//
//  NSMutableDictionary+NilAware.h
//  PPWordPress
//
//  Created by Marian PAUL on 18/05/12.
//  Copyright (c) 2012 iPuP SARL. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (HelpMe)
- (void) setObject:(id)object forNilAwareKey:(id)key;
@end
