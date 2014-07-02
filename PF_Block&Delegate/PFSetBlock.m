//
//  PFSetBlock.m
//  PF_Block&Delegate
//
//  Created by PFei_He on 14-6-20.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFSetBlock.h"

@implementation PFSetBlock

- (void)setBlock:(void (^)(NSString *string))string
{
    NSString *str = @"输出";

    if (string)
        string(str);
}

@end
