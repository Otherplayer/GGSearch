//
//  KVCMutableArrayProxy.h
//  GGSearch
//
//  Created by __无邪_ on 15/9/9.
//  Copyright © 2015年 __无邪_. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KVCMutableArrayProxy : NSObject

- (NSUInteger)count;

- (void)insertObject:(id)anObject atIndex:(NSUInteger)index;
- (void)removeObjectAtIndex:(NSUInteger)index;
- (void)addObject:(id)anObject;
- (void)removeLastObject;
- (void)insertObjects:(NSArray *)objects atIndexes:(NSIndexSet *)indexes;
//- (void)replaceObjectAtIndex:(NSUInteger)index withObject:(id)anObject;

//…


@end
