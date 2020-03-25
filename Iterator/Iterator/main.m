//
//  main.m
//  Iterator
//
//  Created by 侯森魁 on 2020/3/24.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SKArray.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"用在容器和容器遍历");
        NSArray *array1 = [[NSArray alloc]initWithObjects:@"1",@"2", nil];
        
        NSArray *array2 = [[NSArray alloc]initWithArray:array1];
        
        
//          SKArray1 * skArray1 = [[SKArray1 alloc]init];
        
        NSLog(@"array1 = %@ %p,array2 = %@  %p",array1,array1,array2,array2);
    }
    return 0;
}
