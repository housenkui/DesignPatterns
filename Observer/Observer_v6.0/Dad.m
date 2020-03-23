//
//  Dad.m
//  Observer_v3.0
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Dad.h"

@implementation Dad
- (void)actionOnWakeUp:(WakeUpEvent *)event;{
    [self feed];
}
- (void)feed {
    NSLog(@"dad feeding....");
}
@end
