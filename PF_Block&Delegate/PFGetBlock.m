//
//  PFGetBlock.m
//  PF_Block&Delegate
//
//  Created by PFei_He on 14-6-20.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFGetBlock.h"
#import "PFSetBlock.h"

@implementation PFGetBlock

//获取块
- (void)getBlock
{
    //创建块对象
    PFSetBlock *block = [[PFSetBlock alloc] init];

    //调用块方法
    [block setBlock:^(NSString *string) {

        //输出快的结果
        NSLog(@"%@", string);
    }];
}

@end
