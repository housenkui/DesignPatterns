//
//  Dad.h
//  Observer_v3.0
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"
NS_ASSUME_NONNULL_BEGIN

@interface Dad : NSObject<Observer>
- (void)actionOnWakeUp:(WakeUpEvent *)event;
- (void)feed;
@end

NS_ASSUME_NONNULL_END
