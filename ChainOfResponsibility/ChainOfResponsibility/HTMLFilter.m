//
//  HTMLFilter.m
//  ChainOfResponsibility
//
//  Created by 侯森魁 on 2020/3/22.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "HTMLFilter.h"

@implementation HTMLFilter
- (BOOL)doFilter:(Msg *)m {
    NSString *s = [NSMutableString stringWithString:[m getMsg]];
    s = [s stringByReplacingOccurrencesOfString:@"<" withString:@"["];
    s = [s stringByReplacingOccurrencesOfString:@">" withString:@"]"];
    [m setMsg:s];
    return true;
}
@end
