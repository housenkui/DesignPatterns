//
//  MM.m
//  State
//
//  Created by 侯森魁 on 2020/3/25.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "MM.h"

@implementation MM

- (void)smile{
    [self.state smile];
}
- (void)cry {
    [self.state cry];
}
- (void)say {
    [self.state say];
}
-(MMHappyState *)state {
    if (!_state) {
        _state = [[MMHappyState alloc]init];
    }
    return _state;
}
@end
