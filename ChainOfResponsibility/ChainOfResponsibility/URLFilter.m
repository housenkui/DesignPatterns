//
//  URLFilter.m
//  ChainOfResponsibility
//
//  Created by 侯森魁 on 2020/3/22.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "URLFilter.h"

@implementation URLFilter
- (BOOL)doFilter:(Msg *)m {
    NSString *s = [NSMutableString stringWithString:[m getMsg]];
    s = [s stringByReplacingOccurrencesOfString:@"github.com/housenkui" withString:@"https://github.com/housenkui/"];
    [m setMsg:s];
    return true;
}
@end
