//
//  PFSetDelegate.m
//  PF_Block&Delegate
//
//  Created by PFei_He on 14-6-20.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import "PFSetDelegate.h"

@implementation PFSetDelegate

@synthesize delegate = _delegate;

//回调代理
- (void)callbackDelegate
{
    //监听setDelegateRequired:是否被实现，返回是则执行方法
    //第一种写法，直接调用代理方法
    if (self.delegate && [self.delegate respondsToSelector:@selector(setDelegateRequired:)]) {
        [self.delegate setDelegateRequired:self];
    }
    //第二种写法，通过系统方法来调用代理方法
    if (self.delegate && [self.delegate respondsToSelector:@selector(setDelegateRequired:)]) {
        [self.delegate performSelector:@selector(setDelegateRequired:) withObject:self];
    }


    //监听setDelegateOptional:是否被实现，返回是则执行方法
    //第一种写法，直接调用代理方法
    if (self.delegate && [self.delegate respondsToSelector:@selector(setDelegateOptional:)]) {
        [self.delegate setDelegateOptional:self];
    }
    //第二种写法，通过系统方法来调用代理方法
    if (self.delegate && [self.delegate respondsToSelector:@selector(setDelegateOptional:)]) {
        [self.delegate performSelector:@selector(setDelegateOptional:) withObject:self];
    }
}

//输出代理结果
- (NSString *)log
{
    return @"输出代理的结果";
}

@end
