//
//  main.m
//  Singleton
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //单例模式:线程安全、支持copy、mutableCopy操作
        NSLog(@"单例模式");
        for (UInt8 i = 0 ; i < 100; i ++) {
            [NSThread detachNewThreadWithBlock:^{
                Singleton *singleton = [[Singleton alloc]init];
                NSLog(@"singleton = %p,%@",singleton,[NSThread currentThread]);
            }];
           
        }
        Singleton *singleton0 = [Singleton alloc];
        Singleton *singleton1 = [Singleton sharedInstance];
        Singleton *singleton2 = [singleton0 copy];
        Singleton *singleton3 = [singleton0 mutableCopy];
        NSLog(@"singleton0 = %p,%@",singleton0,[NSThread currentThread]);
        NSLog(@"singleton1 = %p,%@",singleton1,[NSThread currentThread]);
        NSLog(@"singleton2 = %p,%@",singleton2,[NSThread currentThread]);
        NSLog(@"singleton3 = %p,%@",singleton3,[NSThread currentThread]);
        
    }
    return 0;
}
