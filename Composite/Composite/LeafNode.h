//
//  LeafNode.h
//  Composite
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import "Node.h"

NS_ASSUME_NONNULL_BEGIN

@interface LeafNode : Node
@property (nonatomic,copy)NSString *content;
- (instancetype)initWithLeafNode:(NSString *)content;
- (void)LeafNode:(NSString *)content;
@end

NS_ASSUME_NONNULL_END
