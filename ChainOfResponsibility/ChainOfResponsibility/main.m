//
//  main.m
//  ChainOfResponsibility
//
//  Created by 侯森魁 on 2020/3/22.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Msg.h"
#import "Filter.h"
#import "HTMLFilter.h"
#import "SensitiveFilter.h"
#import "FilterChain.h"
#import "FaceFilter.h"
#import "URLFilter.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"责任链模式");
        Msg *msg = [[Msg alloc]init];
        [msg setMsg:@"大家好:),<script>,欢迎访问 github.com/housenkui, 大家都是996 "];

        
        FilterChain *filterChain = [FilterChain new];
        [[filterChain add:[HTMLFilter new]] add:[SensitiveFilter new]];
        
        FilterChain *filterChain2 = [FilterChain new];
        [[filterChain2 add:[FaceFilter new]]add:[URLFilter new]];
        
        
        [filterChain add:filterChain2];//将filterChain2直接放在filterChain上
        [filterChain doFilter:msg];
    
        [msg description];
        
        
    }
    return 0;
}
