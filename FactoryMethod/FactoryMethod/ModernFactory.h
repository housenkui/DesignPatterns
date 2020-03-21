//
//  ModernFactory.h
//  FactoryMethod
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "AbstractFactory.h"

NS_ASSUME_NONNULL_BEGIN

@interface ModernFactory : AbstractFactory
- (id)createFood;
- (id )createVehicle;
- (id )createWeapon;
@end

NS_ASSUME_NONNULL_END
