//
//  BranchNode.h
//  Composite
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Node.h"

NS_ASSUME_NONNULL_BEGIN

@interface BranchNode : Node
@property (nonatomic,strong)NSMutableArray <Node *> *nodes;
@property (nonatomic,copy)NSString *name;
- (void)BranchNode:(NSString *)name;
- (instancetype)initWithBranchNode:(NSString *)name;
- (void)p;
- (void)add:(Node *)n;
@end

NS_ASSUME_NONNULL_END
