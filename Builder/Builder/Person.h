//
//  Person.h
//  Builder
//
//  Created by 侯森魁 on 2020/3/25.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Loction.h"
NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject
@property (nonatomic,assign)int Id;
@property (nonatomic,copy)NSString *name;
@property (nonatomic,assign)int age;
@property (nonatomic,assign)double weight;
@property (nonatomic,assign)int score;
@property (nonatomic,strong)Loction *loc;

@end

NS_ASSUME_NONNULL_END
