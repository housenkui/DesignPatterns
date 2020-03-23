//
//  main.m
//  Observer_v6.0
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Child.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"有很多时候，观察者需要根据事件的具体情况来进行处理");
        NSLog(@"大多数时候，我们处理事件的时候，需要事件源对象");
        
        Child *child = [[Child alloc]init];
        
        //do sth
        [child wakeUp];
    }
    return 0;
}
