//
//  main.m
//  HTTPChainOfResponsibility
//
//  Created by 侯森魁 on 2020/3/22.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "HTMLFilter.h"
#import "SensitiveFilter.h"
#import "FilterChain.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        
        NSLog(@"ChainOfResponsibility_v3.0");
        Request *req = [[Request alloc]init];
        req.str = [NSMutableString stringWithString:@"大家好:),<script>,欢迎访问 github.com/housenkui, 大家都是996 "];
        Response *res = [[Response alloc]init];
        res.str = [NSMutableString stringWithString:@"response"];
        
        FilterChain *chain = [FilterChain new];
        
        [[chain add:[HTMLFilter new]]add:[SensitiveFilter new]];
        [chain doFilter:req response:res];
        
        NSLog(@"%@",req.str);
        NSLog(@"%@",res.str);
    }
    return 0;
}
