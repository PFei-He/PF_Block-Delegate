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
- (void)setBlock:(void (^)(PFSetBlock *object))object
{
    //如果块的对象被调用，则返回块的结果
    if (object) object(self);
}

//输出代理结果
- (NSString *)description
{
    return @"输出块的结果";
}

@end
