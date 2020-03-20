//
//  Singleton.h
//  Singleton
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
/// https://blog.csdn.net/hanhailong18/article/details/71024251 mutableCopy与copy在面试中的那些坑

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Singleton : NSObject<NSCopying,NSMutableCopying>
+ (Singleton *) sharedInstance;
@end

NS_ASSUME_NONNULL_END
