//
//  Child.h
//  Observer_v2.0
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Child : NSObject

@property (nonatomic,assign)BOOL cry;
- (instancetype)init;
- (BOOL)isCry;
- (void)wakeUp;
@end

NS_ASSUME_NONNULL_END
