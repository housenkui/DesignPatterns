//
//  BulletPool.h
//  FlyWeight
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Bullet.h"
NS_ASSUME_NONNULL_BEGIN

@interface BulletPool : NSObject
@property (nonatomic,strong)NSMutableArray *bullets;
- (Bullet *)getBullet;
- (instancetype)init;
@end

NS_ASSUME_NONNULL_END
