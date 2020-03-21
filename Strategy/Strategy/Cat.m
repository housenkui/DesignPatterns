//
//  Cat.m
//  Strategy
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Cat.h"

@implementation Cat

- (instancetype)initWithHair:(int)hair tail:(int)tail intelligence:(int)intelligence age:(int)age {
    if (self = [super init]) {
        self.hair = hair;
        self.tail = tail;
        self.intelligence = intelligence;
        self.age = age;
    }
    return self;
}

- (void)description {
    NSLog(@"%@",[NSString stringWithFormat:@"cat hair = %d  tail = %d intelligence = %d age = %d ",
                 self.hair,
                 self.tail,
                 self.intelligence,
                 self.age]);
}

@end
