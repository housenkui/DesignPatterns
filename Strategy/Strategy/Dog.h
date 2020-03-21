//
//  Dog.h
//  Strategy
//
//  Created by 侯森魁 on 2020/3/20.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Comparable.h"
#import "DogComparable.h"
NS_ASSUME_NONNULL_BEGIN

@interface Dog : NSObject<Comparable,DogComparable>
@property (nonatomic,assign)int food;
@property (nonatomic,assign)int height;
@property (nonatomic,assign)int weight;

@property (nonatomic,assign)int price;
@property (nonatomic,assign)int color;

- (instancetype)initWithFood:(int)food;
- (instancetype)initWithHeight:(int)height weight:(int)weight price:(int)price color:(int)color;

- (instancetype)initWithPrice:(int)price color:(int)color;

- (int)compareTo:(Dog <Comparable>*)dog;//这里实现了Comparable协议，并且把协议方法的参数改成当前类的对象

-(NSString *)description;

- (int)compareWithHeigth:(Dog <DogComparable> *)dog;
- (int)compareWithWeigth:(Dog <DogComparable> *)dog;

- (int)compareWithPrice:(Dog <DogComparable> *)dog;
- (int)compareWithColor:(Dog <DogComparable> *)dog;

@end

NS_ASSUME_NONNULL_END
