//
//  HTMLFilter.m
//  HTTPChainOfResponsibility
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "HTMLFilter.h"

@implementation HTMLFilter
- (BOOL)doFilter:(Request *)request response:(Response *)response {
    
    NSMutableString *s = [NSMutableString string];
    s = [NSMutableString stringWithString:[request.str stringByReplacingOccurrencesOfString:@"<" withString:@"["]];
    s = [NSMutableString stringWithString:[s stringByReplacingOccurrencesOfString:@">" withString:@"]"]];
    request.str = s;
    [response.str appendString:[NSMutableString stringWithString:@"--HTMLFilter"]];
    return true;
}
@end
