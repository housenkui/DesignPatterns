//
//  WakeUpEvent.m
//  Observer_v6.0
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "WakeUpEvent.h"

@implementation WakeUpEvent

- (void)wakeUpEvent:(long)timestamp loc:(NSString *)loc child:(Child *)child {
    self.timestamp = timestamp;
    self.loc = loc;
    self.child = child;
}
@end
