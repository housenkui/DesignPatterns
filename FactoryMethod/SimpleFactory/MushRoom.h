//
//  MushRoom.h
//  SimpleFactory
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Food.h"
NS_ASSUME_NONNULL_BEGIN

@interface MushRoom : NSObject<Food>
- (void)printName;

@end

NS_ASSUME_NONNULL_END
