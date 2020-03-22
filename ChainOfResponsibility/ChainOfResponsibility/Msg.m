//
//  Msg.m
//  ChainOfResponsibility
//
//  Created by 侯森魁 on 2020/3/22.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Msg.h"

@implementation Msg
- (NSString *)getMsg {
    return _msg;
}
- (void)setMsg:(NSString * _Nonnull)msg {
    if (_msg != msg) {
        _msg = msg;
    }
}
- (void)description {
    NSLog(@"%@",[NSString stringWithFormat:@"self.msg = %@",self.msg]);
}
@end
