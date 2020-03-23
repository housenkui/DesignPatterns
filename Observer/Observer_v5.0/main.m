//
//  main.m
//  Observer_v5.0
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Child.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"分离观察者与被观察者");
        Child *child = [[Child alloc]init];
        
        //do sth
        [child wakeUp];
    }
    return 0;
}
