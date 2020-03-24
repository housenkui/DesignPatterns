//
//  main.m
//  FlyWeight
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BulletPool.h"
#import "Bullet.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"简单享元模式/线程池，连接池，都是这种模式");
        BulletPool *bp= [BulletPool new];
        
        for (int i = 0; i < 2; i++) {
            Bullet *b = [bp getBullet];
            [b description];
        }
    }
    return 0;
}
