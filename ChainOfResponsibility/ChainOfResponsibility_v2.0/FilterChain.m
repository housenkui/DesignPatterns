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
        _filters = [NSMutableArray array];
    }
    return self;
}

- (FilterChain *)add:(id<Filter>)filter {
    [_filters addObject:filter];
    return self;
}

- (BOOL)doFilter:(Request *)request response:(Response *)response {
    
    for (id<Filter> filter in _filters) {
        [filter doFilter:request response:response];
    }
    return true;
}
@end
