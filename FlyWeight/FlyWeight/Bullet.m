//
//  Bullet.m
//  FlyWeight
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Bullet.h"

@implementation Bullet
- (instancetype)initWithUUID:(NSString *)uuid
{
    if (self = [super init]) {
        _uuid = uuid;
        _living = true;
    }
    return self;
}

- (void)description
{
    NSLog(@"uuid = %@  living = %d",_uuid,_living);
}
@end
