//
//  NewState.m
//  State_v2.0
//
//  Created by 侯森魁 on 2020/3/25.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "NewState.h"
#import "RunningState.h"
@interface NewState()

@property (nonatomic,strong)Thread_ *t;

@end

@implementation NewState
- (Thread_ *)t {
    if (!_t) {
        _t = [Thread_ new];
    }
    return _t;
}
- (void )NewState:(Thread_ *)t {
    
    self.t = t;
}
- (void)move:(Action *)input {
    
    if ([input.msg isEqualToString:@"start"]) {
        self.t.state = [RunningState new];
    }
}
- (void)run {
    
}
@end
