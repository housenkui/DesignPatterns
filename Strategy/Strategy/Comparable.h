//
//  Comparaable.h
//  Strategy
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Comparable <NSObject>

- (int)compareTo:(id<Comparable>)obj;

@end

NS_ASSUME_NONNULL_END
