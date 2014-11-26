//
//  PFSetBlock.m
//  PF_Block&Delegate
//
//  Created by PFei_He on 14-6-20.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFSetBlock.h"

@implementation PFSetBlock

//设置块
- (void)setBlock:(void (^)(PFSetBlock *))block
{
    //如果块的对象被调用，则返回块的结果
    if (block) block(self);
}

//输出块结果
- (NSString *)description
{
    return @"输出块的结果";
}

@end
