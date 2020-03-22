//
//  Food.m
//  FactoryMethod
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Food.h"

@implementation Food
+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
   
    if([NSStringFromClass([self class]) isEqualToString:@"Food"])
    {
        NSLog(@"Food类属于抽象类，无法进行实例化，务必使用子类来进行实例的创建!!!");
        return nil;
    }
    else
    {
        return [super allocWithZone:zone];
    }
}
- (void)printName {
    
}
@end
