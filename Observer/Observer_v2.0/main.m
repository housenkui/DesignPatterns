//
//  main.m
//  Observer_v2.0
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//
/*
 面向对象的傻等
 */
#import <Foundation/Foundation.h>
#import "Child.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@" 面向对象的傻等");
        Child *child = [[Child alloc]init];
        while (!child.isCry) {
            @try {
                [NSThread sleepForTimeInterval:1];
            } @catch (NSException *exception) {
                
            }
            NSLog(@"observing....");
        }
        
    }
    return 0;
}
