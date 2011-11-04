//
//  NSArray+Iteration.m
//  MobileXcode
//
//  Created by Bruno Bilescky on 04/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import "NSArray+Iteration.h"

@implementation NSArray (Iteration)

- (NSArray *)each:(void (^)(id obj))block
{
    for (id item in self) {
        block(item);
    }
    return self;
}

- (NSArray *)eachWithIndex:(void (^)(id obj, int index))block
{
    int index = 0;
    for (id item in self) {
        block(item, index);
        index++;
    }
    return self;
}

- (NSArray *)map:(id (^)(id obj))block
{
    // We initialize mutable array for storage of changed items
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:[self count]];
    for (id item in self) {
        // Then while iterating - we add 
        // the changed items to that mutable array
        [array addObject:block(item)];
    }
    
    // In the end we return immutable copy of the resulting array
    return [NSArray arrayWithArray:array];
}

@end
