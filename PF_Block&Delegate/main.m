//
//  main.m
//  PF_Block&Delegate
//
//  Created by PFei_He on 14-6-20.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PFGetBlock.h"
#import "PFGetDelegate.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        //块
        PFGetBlock *block = [[PFGetBlock alloc] init];
        [block getBlock];

        //代理
        PFGetDelegate *delegate = [[PFGetDelegate alloc] init];
        [delegate getDelegate];
    }
    return 0;
}

