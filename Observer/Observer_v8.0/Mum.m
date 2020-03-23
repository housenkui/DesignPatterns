//
//  Mum.m
//  Observer_v4.0
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Mum.h"

@implementation Mum
- (void)actionOnWakeUp:(WakeUpEvent *)event {
    [self hug];
}
- (void)hug {
    NSLog(@"mum hugging ....");
}
@end
