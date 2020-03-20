//
//  Singleton.m
//  Singleton
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//  https://blog.csdn.net/hanhailong18/article/details/71024251 mutableCopy与copy在面试中的那些坑

#import "Singleton.h"

@implementation Singleton

static Singleton *instance = nil;
+ (instancetype)allocWithZone:(struct _NSZone *)zone
{
    if (instance == nil) {
        static dispatch_once_t onceToken;
        dispatch_once(&onceToken, ^{
            instance = [super allocWithZone:zone];
        });
    }
    return instance;
}

- (id)init
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [super init];
    });
    return instance;
}

+ (instancetype)sharedInstance
{
    return [[self alloc]init];
}

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    return instance;
}

- (nonnull id)mutableCopyWithZone:(nullable NSZone *)zone {
    return instance;
}

@end
