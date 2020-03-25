//
//  F.m
//  TemplateMethod
//
//  Created by 侯森魁 on 2020/3/25.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "F.h"

@implementation F
+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
   
    if([NSStringFromClass([self class]) isEqualToString:@"F"])
    {
        NSLog(@"F类属于抽象类，无法进行实例化，务必使用子类来进行实例的创建!!!");
        return nil;
    }
    else
    {
        return [super allocWithZone:zone];
    }
}
- (void)m {
    [self op1];
    [self op2];
}
- (void)op1 {
    
}
- (void)op2 {
    
}
@end
