//
//  Cat.h
//  No_Strategy
//
//  Created by 侯森魁 on 2020/3/21.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CatComparable.h"
NS_ASSUME_NONNULL_BEGIN

@interface Cat : NSObject<CatComparable>
@property (nonatomic,assign)int hair; //发量
@property (nonatomic,assign)int tail;//尾巴长度

@property (nonatomic,assign)int intelligence;//智商
@property (nonatomic,assign)int age;//年龄

- (instancetype)initWithHair:(int)hair tail:(int)tail intelligence:(int)intelligence age:(int)age;
- (int)compare:(Cat<CatComparable> *)cat WithParamter:(CatComparableParamter )paramter;
- (void)description;
@end

NS_ASSUME_NONNULL_END
