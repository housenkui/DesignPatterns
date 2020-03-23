//
//  Mum.h
//  Observer_v4.0
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"
NS_ASSUME_NONNULL_BEGIN

@interface Mum : NSObject <Observer>
- (void)actionOnWakeUp;
- (void)hug;
@end

NS_ASSUME_NONNULL_END
