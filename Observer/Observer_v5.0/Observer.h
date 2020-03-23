//
//  Observer.h
//  Observer_v5.0
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Observer <NSObject>
- (void)actionOnWakeUp;
@end

NS_ASSUME_NONNULL_END
