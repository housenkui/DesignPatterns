//
//  BulletPool.m
//  FlyWeight
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "BulletPool.h"

@implementation BulletPool

- (instancetype)init{
    if (self = [super init]) {
        for (int i = 0; i < 5; i++) {
            NSString *uuid = [NSString stringWithFormat:@"%ld",random()];
            Bullet *b = [[Bullet alloc]initWithUUID:uuid];
            [self.bullets addObject:b];
        }
    }
    return self;
}
- (NSMutableArray *)bullets {
    if (!_bullets) {
        _bullets = [NSMutableArray array];
    }
    return _bullets;
}
- (Bullet *)getBullet {
    for (int i = 0; i < self.bullets.count; i++) {
        Bullet *b = [self.bullets objectAtIndex:i];
        if (b.living) {
            return b;
        }
    }
    NSString *uuid = [NSString stringWithFormat:@"%ld",random()];
    Bullet *b = [[Bullet alloc]initWithUUID:uuid];
    return b;
}
@end
