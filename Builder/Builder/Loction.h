//
//  Loction.h
//  Builder
//
//  Created by 侯森魁 on 2020/3/25.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Loction : NSObject
@property (nonatomic,copy)NSString *street;
@property (nonatomic,copy)NSString *roomNo;
- (instancetype)initWithLocation:(NSString *)street roomNo:(NSString *)roomNo;
@end

NS_ASSUME_NONNULL_END
