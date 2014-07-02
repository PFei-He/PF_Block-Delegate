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

- (void)getBlock
{
    PFSetBlock *block = [[PFSetBlock alloc] init];
    [block setBlock:^(NSString *string) {
        NSLog(@"%@", string);
    }];
}

@end
