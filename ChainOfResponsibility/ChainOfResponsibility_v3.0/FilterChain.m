//
//  FilterChain.m
//  HTTPChainOfResponsibility
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "FilterChain.h"

@implementation FilterChain
- (instancetype)init {
    if (self = [super init]) {
        _index = 0;
        _filters = [NSMutableArray array];
    }
    return self;
}

- (FilterChain *)add:(id<Filter>)filter {
    [_filters addObject:filter];
    return self;
}

- (BOOL)doFilter:(Request *)request response:(Response *)response filterChain:(FilterChain *)chain{
    if (self.index == self.filters.count) {
        return false;
    }
    id <Filter> f = [self.filters objectAtIndex:self.index];
    self.index ++;
    
    return [f doFilter:request response:response filterChain:chain];
}
@end
