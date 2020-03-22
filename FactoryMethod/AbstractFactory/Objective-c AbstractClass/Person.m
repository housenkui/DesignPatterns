//
//  Person.m
//  FactoryMethod
//
//  Created by 侯森魁 on 2020/3/22.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    NSLog(@"%@",NSStringFromClass([self class]));
    NSLog(@"%d",[self  isMemberOfClass:[Person class]]);
    NSLog(@"%d",[[self class] isMemberOfClass:[Person class]]);
    //我不理解,使用[Person alloc] 为什么isMemberOfClass一直是0,现在没时间纠结😖。
    if([NSStringFromClass([self class]) isEqualToString:@"Person"])
    {
        NSLog(@"Person 类属于抽象类，无法进行实例化，务必使用子类来进行实例的创建");
        return nil;
    }
    else
    {
        return [super allocWithZone:zone];
    }
}

- (id)doSomething:(id)arg
{
    return nil;
}
@end
