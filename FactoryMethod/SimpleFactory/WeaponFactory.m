//
//  WeaponFactory.m
//  SimpleFactory
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "WeaponFactory.h"
#import "AK47.h"
#import "MigicStick.h"
@implementation WeaponFactory
- (id <Weapon>)createAK47 {
    return [AK47 new];
}
- (id <Weapon>)createMigicStick {
    return [MigicStick new];
}
@end
