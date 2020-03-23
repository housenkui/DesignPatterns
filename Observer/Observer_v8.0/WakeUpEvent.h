//
//  WakeUpEvent.h
//  Observer_v8.0
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Event.h"
#import "Child.h"
NS_ASSUME_NONNULL_BEGIN

@interface WakeUpEvent : Event
@property(nonatomic,assign)long timestamp;
@property(nonatomic,copy)NSString *loc;
@property(nonatomic,strong)Child *source;
- (void)wakeUpEvent:(long)timestamp loc:(NSString *)loc child:(Child *)source;
- (Child *)getSource;
@end

NS_ASSUME_NONNULL_END
