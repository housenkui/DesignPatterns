//
//  Thread_.m
//  State_v2.0
//
//  Created by 侯森魁 on 2020/3/25.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Thread_.h"

@implementation Thread_

- (ThreadState_ *)state {
    if (!_state) {
        _state = [ThreadState_ new];
    }
    return _state;
}
- (void)move:(Action *)input {
    [self.state move:input];
}
- (void)run {
    [self.state run];
}
@end
