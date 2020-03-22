//
//  SensitiveFilter.m
//  ChainOfResponsibility
//
//  Created by 侯森魁 on 2020/3/22.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "SensitiveFilter.h"

@implementation SensitiveFilter
- (BOOL)doFilter:(Msg *)m {
    NSString *s = [NSMutableString stringWithString:[m getMsg]];
    s = [s stringByReplacingOccurrencesOfString:@"996" withString:@"955"];
    [m setMsg:s];
    return false;
}
@end
