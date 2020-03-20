//
//  Cat.m
//  Strategy
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Cat.h"

@implementation Cat

- (instancetype)initWithHeight:(int)height
                        weight:(int)weight {
    if (self = [super init]) {
        self.height = height;
        self.weight = weight;
    }
    return self;
}

- (int)compareTo:(Cat *)c {
    if(self.weight < c.weight) return -1;
    else if(self.weight > c.weight) return 1;
    return 0;
}
@end
