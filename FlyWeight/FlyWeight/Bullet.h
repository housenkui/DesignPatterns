//
//  Bullet.h
//  FlyWeight
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Bullet : NSObject
@property (nonatomic,strong)NSString *uuid;
@property (nonatomic,assign)BOOL living;
- (instancetype)initWithUUID:(NSString *)uuid;
- (void)description;
@end

NS_ASSUME_NONNULL_END
