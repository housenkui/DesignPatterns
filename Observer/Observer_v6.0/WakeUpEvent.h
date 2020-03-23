//
//  WakeUpEvent.h
//  Observer_v6.0
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
//事件类 fire event
@interface WakeUpEvent : NSObject
@property(nonatomic,assign)long timestamp;
@property(nonatomic,copy)NSString *loc;
- (void)wakeUpEvent:(long)timestamp loc:(NSString *)loc;
@end

NS_ASSUME_NONNULL_END
