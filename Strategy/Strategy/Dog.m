//
//  Dog.m
//  Strategy
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Dog.h"
@implementation Dog
- (instancetype)initWithHeight:(int)height weight:(int)weight price:(int)price color:(int)color {
    if (self = [super init]) {
        self.height = height;
        self.weight = weight;
        self.price = price;
        self.color = color;
    }
    return self;
}

- (void)description {
    NSLog(@"%@",[NSString stringWithFormat:@"dog height = %d  weight = %d  price = %d color = %d",
                 self.height,
                 self.weight,
                 self.price,
                 self.color]);
}
@end
