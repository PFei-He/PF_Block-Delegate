//
//  PFSetBlock.h
//  PF_Block&Delegate
//
//  Created by PFei_He on 14-6-20.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PFSetBlock : NSObject

/**
 *  @brief 设置块
 */
- (void)setBlock:(void (^)(NSString *string))string;

@end
