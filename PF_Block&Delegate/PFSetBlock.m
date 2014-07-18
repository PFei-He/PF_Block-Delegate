//
//  PFSetBlock.m
//  PF_Block&Delegate
//
//  Created by PFei_He on 14-6-20.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFSetBlock.h"

@interface PFSetBlock ()

///设置块的值
@property (nonatomic, copy) NSString *string;

@end

@implementation PFSetBlock

@synthesize string = _string;//自Objective-C的属性进入3.0时代，这句话可写可不写，系统会在编译时自动补全

//设置块
- (void)setBlock:(void (^)(NSString *string))string
{
    //如果块的对象被调用，则返回块的结果
    if (string) string(self.string);
}

///获取块的值
- (NSString *)string
{
    return @"输出块的结果";
}

@end
