//
//  WakeUpEvent.m
//  Observer_v8.0
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "WakeUpEvent.h"

@implementation WakeUpEvent
- (void)wakeUpEvent:(long)timestamp loc:(NSString *)loc child:(Child *)source {
    self.timestamp = timestamp;
    self.loc = loc;
    self.source = source;
}

- (Child *)getSource {
    return self.source;
}
@end
