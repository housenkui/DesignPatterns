//
//  VehicleFactory.h
//  SimpleFactory
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Moveable.h"
NS_ASSUME_NONNULL_BEGIN

@interface VehicleFactory : NSObject
- (id <Moveable>)createCar;
- (id <Moveable>)createBroom;
@end

NS_ASSUME_NONNULL_END
