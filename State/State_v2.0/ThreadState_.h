//
//  ThreadState_.h
//  State_v2.0
//
//  Created by 侯森魁 on 2020/3/25.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Action.h"
NS_ASSUME_NONNULL_BEGIN

@interface ThreadState_ : NSObject
- (void)move:(Action *)input;
- (void)run;
@end

NS_ASSUME_NONNULL_END
