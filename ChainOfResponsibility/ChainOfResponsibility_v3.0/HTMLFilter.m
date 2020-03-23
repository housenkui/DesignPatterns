//
//  HTMLFilter.m
//  HTTPChainOfResponsibility
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "HTMLFilter.h"

@implementation HTMLFilter
- (BOOL)doFilter:(Request *)request response:(Response *)response filterChain:(FilterChain *)chain {
    
    NSMutableString *s = [NSMutableString string];
    s = [NSMutableString stringWithString:[request.str stringByReplacingOccurrencesOfString:@"<" withString:@"["]];
    s = [NSMutableString stringWithString:[s stringByReplacingOccurrencesOfString:@">" withString:@"]"]];
    [s appendString:@"--HTMLFilter"];
    request.str = s;
    [chain doFilter:request response:response filterChain:chain];//核心逻辑
    [response.str appendString:[NSMutableString stringWithString:@"--HTMLFilter"]];
    NSLog(@"111");
    return true;
}
@end
