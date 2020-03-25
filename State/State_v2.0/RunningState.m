//
//  RunningState.m
//  State_v2.0
//
//  Created by 侯森魁 on 2020/3/25.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "RunningState.h"
@interface RunningState ()
@property (nonatomic,strong)Thread_ *t;
@end
@implementation RunningState

- (void)RunningState:(Thread_ *)t {
    self.t = t;
}
- (void)move:(Action *)input {
    
}
- (void)run {
    
}
@end
