//
//  PFGetDelegate.m
//  PF_Block&Delegate
//
//  Created by PFei_He on 14-6-20.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFGetDelegate.h"
#import "PFSetDelegate.h"

@implementation PFGetDelegate

//获取代理
- (void)getDelegate
{
    //创建代理对象
    PFSetDelegate *obj = [[PFSetDelegate alloc] init];

    //设置代理（必须执行，否则代理方法不会实现。此设置常被初学者遗忘）
    obj.delegate = self;

    //执行回调代理的方法
    [obj callbackDelegate];
}

//代理必须执行的方法
- (void)setDelegateRequired:(PFSetDelegate *)obj
{
    //输出代理的值
    NSLog(@"%@", obj);
}

//代理可选执行的方法
- (void)setDelegateOptional:(PFSetDelegate *)obj
{
    //输出代理的值
    NSLog(@"%@", obj);
}

@end
