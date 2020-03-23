//
//  SensitiveFilter.m
//  HTTPChainOfResponsibility
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "SensitiveFilter.h"

@implementation SensitiveFilter
- (BOOL)doFilter:(Request *)request response:(Response *)response filterChain:(FilterChain *)chain {
    
    NSMutableString *s = [NSMutableString string];
    s = [NSMutableString stringWithString:[request.str stringByReplacingOccurrencesOfString:@"996" withString:@"955"]];
    [s appendString:@"--SensitiveFilter"];
    request.str = s;
    [chain doFilter:request response:response];
    [response.str appendString:[NSMutableString stringWithString:@"--SensitiveFilter"]];
    NSLog(@"22222");
    return true;
}
@end
