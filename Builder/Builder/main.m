//
//  main.m
//  Builder
//
//  Created by 侯森魁 on 2020/3/24.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ComplexTerrainBuilder.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"构建复杂对象");
        id <TerrainBuilder> builder = [ComplexTerrainBuilder new];
        Terrain *t = [[[[builder buildFort]buildWall]buildMine] build];
        
        //真像
//        [view1 makeConstraints:^(MASConstraintMaker *make) {
//            make.left.equalTo(10);
//            make.top.equalTo(100);
//            make.height.equalTo(viewWidth);
//            make.width.equalTo(screenWidth).priorityLow();
//        }];
        //如何使用点语法
//        Person p = new Person.PersonBuilder()
//                       .basicInfo(1, "zhangsan", 18)
//                       //.score(20)
//                       .weight(200)
//                       //.loc("bj", "23")
//                       .build();
    }
    return 0;
}
