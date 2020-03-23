//
//  SensitiveFilter.m
//  HTTPChainOfResponsibility
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "SensitiveFilter.h"

@implementation SensitiveFilter
- (BOOL)doFilter:(Request *)request response:(Response *)response {
    
    NSMutableString *s = [NSMutableString string];
    s = [NSMutableString stringWithString:[request.str stringByReplacingOccurrencesOfString:@"996" withString:@"955"]];
    request.str = s;
    [response.str appendString:[NSMutableString stringWithString:@"--SensitiveFilter"]];
    return true;
}
@end
