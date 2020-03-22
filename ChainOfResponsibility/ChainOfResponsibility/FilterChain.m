//
//  FilterChain.m
//  ChainOfResponsibility
//
//  Created by 侯森魁 on 2020/3/22.
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
- (BOOL)doFilter:(Msg *)m {
    for (id<Filter> filter in self.filters) {
        if(![filter doFilter:m]) { //核心逻辑 如果链条中的一环 返回false 就能终止链条的继续调用
            return false;
        }
    }
    return true;
}
@end
