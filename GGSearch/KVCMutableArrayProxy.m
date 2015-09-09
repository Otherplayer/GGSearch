//
//  KVCMutableArrayProxy.m
//  GGSearch
//
//  Created by __无邪_ on 15/9/9.
//  Copyright © 2015年 __无邪_. All rights reserved.
//

#import "KVCMutableArrayProxy.h"

@implementation KVCMutableArrayProxy{
    NSMutableArray *_innerArray;
}

- (instancetype)init{
    self = [super init];
    if (self) {
        _innerArray = [[NSMutableArray alloc] init];
    }
    return self;
}

//…

- (NSUInteger)count {
    return _innerArray.count;
}

- (void)addObject:(id)anObject {
    [self willChangeValueForKey:@"count"];
    [_innerArray addObject:anObject];
    [self didChangeValueForKey:@"count"];
}

- (void)removeLastObject {
    [self willChangeValueForKey:@"count"];
    [_innerArray removeLastObject];
    [self didChangeValueForKey:@"count"];
}

- (void)insertObject:(id)anObject atIndex:(NSUInteger)index{
    [self willChangeValueForKey:@"count"];
    [_innerArray insertObject:anObject atIndex:index];
    [self didChangeValueForKey:@"count"];
}

- (void)removeObjectAtIndex:(NSUInteger)index{
    [self willChangeValueForKey:@"count"];
    [_innerArray removeObjectAtIndex:index];
    [self didChangeValueForKey:@"count"];
}

- (void)insertObjects:(NSArray *)objects atIndexes:(NSIndexSet *)indexes{
    [self willChangeValueForKey:@"count"];
    [_innerArray insertObjects:objects atIndexes:indexes];
    [self didChangeValueForKey:@"count"];
}


@end
