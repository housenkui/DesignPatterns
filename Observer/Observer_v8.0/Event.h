//
//  Event.h
//  Observer_v8.0
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
//使用泛型 因为返回值不确定
@interface Event <T>: NSObject
- (T)getSource;
@end

NS_ASSUME_NONNULL_END
