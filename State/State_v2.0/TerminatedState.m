//
//  TerminatedState.m
//  State_v2.0
//
//  Created by 侯森魁 on 2020/3/25.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "TerminatedState.h"
@interface TerminatedState()

@property (nonatomic,strong)Thread_ *t;

@end
@implementation TerminatedState
- (Thread_ *)t {
    if (!_t) {
        _t = [Thread_ new];
    }
    return _t;
}
- (void)TerminatedState:(Thread_ *)t {
    self.t = t;
}
- (void)move:(Action *)input {
    if ([input.msg isEqualToString:@"terminated"]) {
//           self.t.state = [RunningState new];
       }
    
}
- (void)run {
    [self.t.state run];
}
@end
