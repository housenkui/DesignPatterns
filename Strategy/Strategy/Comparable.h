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

- (int)compareTo:(__kindof NSObject<Comparable> *) obj;
//- (int)compareTo:(id <Comparable>)obj;

/*
 遵从的是SOLID中的L即里氏替换原则，大概可以描述为： 程序中的对象应该是可以在不改变程序正确性的前提下被它的子类所替换的[1]
 - (int)compareTo:(__kindof NSObject<Comparable> *) obj;
 - (int)compareTo:(id <Comparable>) obj;
 上面有什么区别? 
 */

@end

NS_ASSUME_NONNULL_END
