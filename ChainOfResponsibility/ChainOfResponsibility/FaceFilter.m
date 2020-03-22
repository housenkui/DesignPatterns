//
//  FaceFilter.m
//  ChainOfResponsibility
//
//  Created by 侯森魁 on 2020/3/22.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "FaceFilter.h"

@implementation FaceFilter
- (BOOL)doFilter:(Msg *)m {
    NSString *s = [NSMutableString stringWithString:[m getMsg]];
    s = [s stringByReplacingOccurrencesOfString:@":)" withString:@"^V^"];
    [m setMsg:s];
    return true;
}
@end
