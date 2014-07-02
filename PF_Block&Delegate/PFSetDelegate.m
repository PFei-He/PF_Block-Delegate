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

- (void)callbackDelegate
{
    //监听setDelegateRequired:是否被实现，返回是则执行方法
    if ([self.delegate respondsToSelector:@selector(setDelegateRequired:)]) {
        [self.delegate setDelegateRequired:@"输出"];
    }

    //监听setDelegateOptional:是否被实现，返回是则执行方法
    if ([self.delegate respondsToSelector:@selector(setDelegateOptional:)]) {
        [self.delegate setDelegateOptional:@"输出"];
    }
}

@end
