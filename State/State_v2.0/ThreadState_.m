//
//  ThreadState_.m
//  State_v2.0
//
//  Created by 侯森魁 on 2020/3/25.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "ThreadState_.h"

@implementation ThreadState_
+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
   
    if([NSStringFromClass([self class]) isEqualToString:@"ThreadState_"])
    {
        NSLog(@"ThreadState_类属于抽象类，无法进行实例化，务必使用子类来进行实例的创建!!!");
        return nil;
    }
    else
    {
        return [super allocWithZone:zone];
    }
}
- (void)move:(Action *)input{}
- (void)run {}
@end
