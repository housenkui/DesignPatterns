//
//  Cat.h
//  Strategy
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Cat : NSObject
@property (nonatomic,assign)int hair; //发量
@property (nonatomic,assign)int tail;//尾巴长度

@property (nonatomic,assign)int intelligence;//智商
@property (nonatomic,assign)int age;//年龄

- (instancetype)initWithHair:(int)hair tail:(int)tail intelligence:(int)intelligence age:(int)age;

- (void)description;
@end

NS_ASSUME_NONNULL_END
