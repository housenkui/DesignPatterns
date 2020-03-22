//
//  Person.h
//  FactoryMethod
//
//  Created by 侯森魁 on 2020/3/22.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
//抽象类,不能直接实例化,需要子类继承才能初始化
@interface Person : NSObject
//抽象方法,不能直接调用,需要子类重写方法
- (id)doSomething:(id)arg;
@end

NS_ASSUME_NONNULL_END
