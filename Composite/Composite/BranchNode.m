//
//  BranchNode.m
//  Composite
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "BranchNode.h"

@implementation BranchNode

- (instancetype)initWithBranchNode:(NSString *)name {
    if (self = [super init]) {
        _name = name;
    }
    return self;
}
- (void)BranchNode:(NSString *)name {
    self.name = name;
}
- (void)p {
     printf("%s\n",[_name UTF8String]);
}
- (NSMutableArray<Node *> *)nodes {
    if (!_nodes) {
        _nodes = [NSMutableArray array];
    }
    return _nodes;
}
- (void)add:(Node *)n {
    [self.nodes addObject:n];
}
@end
