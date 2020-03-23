//
//  LeafNode.m
//  Composite
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "LeafNode.h"

@implementation LeafNode
- (instancetype)initWithLeafNode:(NSString *)content {
    if (self = [super init]) {
        _content = content;
    }
    return self;
}

- (void)LeafNode:(NSString *)content {
    self.content = content;
}
- (void)p {
    printf("%s\n",[_content UTF8String]);
   
}
@end
