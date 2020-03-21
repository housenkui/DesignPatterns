//
//  MagicFactory.m
//  FactoryMethod
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "MagicFactory.h"
#import "MagicStick.h"
#import "MushRoom.h"
#import "Broom.h"
@implementation MagicFactory
- (id)createFood {
    return [MushRoom new];
}
- (id )createVehicle {
    return [Broom new];
}
- (id )createWeapon {
    return [MagicStick new];
}
@end
