//
//  main.m
//  Composite
//
//  Created by 侯森魁 on 2020/3/23.
//  Copyright © 2020 侯森魁. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BranchNode.h"
#import "LeafNode.h"

static void tree(Node *b,int depth) {
    for (int i = 0; i< depth; i++) {printf("--");}
        
        [b p];
        if([b isKindOfClass:[BranchNode class]]){
            for (Node *n in ((BranchNode *)b).nodes) {
                tree(n,depth + 1);
            }
        }
    
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Composite 树状结构专用模式");
        BranchNode *root = [[BranchNode alloc]initWithBranchNode:@"root"];
        BranchNode *chapter1 = [[BranchNode alloc]initWithBranchNode:@"chapter1"];
        BranchNode *chapter2 = [[BranchNode alloc]initWithBranchNode:@"chapter2"];
        
        Node * c11 = [[LeafNode alloc]initWithLeafNode:@"c11"];
        Node * c12 = [[LeafNode alloc]initWithLeafNode:@"c12"];
        BranchNode *b21 = [[BranchNode alloc]initWithBranchNode:@"section21"];
        
        Node *c211 = [[LeafNode alloc]initWithLeafNode:@"c211"];
        Node *c212 = [[LeafNode alloc]initWithLeafNode:@"c212"];
        
        [root add:chapter1];
        [root add:chapter2];
        
        
        [chapter1 add:c11];
        [chapter1 add:c12];
        [chapter2 add:b21];
        
        [b21 add:c211];
        [b21 add:c212];
        
        tree(root,0);
        
    }
    return 0;
}
