//
//  Dog.m
//  Observer_v4.0
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Dog.h"

@implementation Dog

- (void)actionOnWakeUp {
    [self wang];
}
- (void)wang {
    NSLog(@"dog wang wang ......");
}
@end
