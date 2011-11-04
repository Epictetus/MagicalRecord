//
//  NSArray+Iteration.h
//  MobileXcode
//
//  Created by Bruno Bilescky on 04/11/11.
//  Copyright (c) 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Iteration)

- (NSArray *)each:(void (^)(id obj))block;
- (NSArray *)eachWithIndex:(void (^)(id obj, int index))block;
- (NSArray *)map:(id (^)(id obj))block;

@end
