//
//  Dog.m
//  Strategy
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Dog.h"

@implementation Dog

- (instancetype)initWithFood:(int)food {
    if (self = [super init]) {
        self.food = food;
    }
    return self;
}

- (int)compareTo:(Dog <Comparable> *)dog {

    if(self.food < dog.food) return -1;
    else if(self.food > dog.food) return 1;
    return 0;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"dog %d ",self.food];
}
@end
