//
//  WeaponFactory.h
//  SimpleFactory
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weapon.h"
NS_ASSUME_NONNULL_BEGIN

@interface WeaponFactory : NSObject
- (id <Weapon>)createAK47;
- (id <Weapon>)createMigicStick;
@end

NS_ASSUME_NONNULL_END
