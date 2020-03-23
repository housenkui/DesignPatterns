//
//  main.m
//  Observer_v4.0
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//
/*
 加入多个观察者
 */
#import <Foundation/Foundation.h>
#import "Child.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"加入多个观察者");
        Child *child = [[Child alloc]init];
        
        //do sth
        [child wakeUp];
    }
    return 0;
}
