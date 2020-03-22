//
//  AbstractFactory.h
//  FactoryMethod
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Food.h"
#import "Weapon.h"
#import "Vehicle.h"
NS_ASSUME_NONNULL_BEGIN

@interface AbstractFactory : NSObject
- (id)createFood;
- (id)createVehicle;
- (id)createWeapon;
@end

NS_ASSUME_NONNULL_END
