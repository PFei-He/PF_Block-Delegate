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

- (void)getDelegate
{
    PFSetDelegate *delegate = [[PFSetDelegate alloc] init];
    delegate.delegate = self;
    [delegate callbackDelegate];
}

//delegate必须执行的方法
- (void)setDelegateRequired:(NSString *)string
{
    NSLog(@"%@", string);
}

//delegate可选执行的方法
- (void)setDelegateOptional:(NSString *)string
{
    NSLog(@"%@", string);
}

@end
