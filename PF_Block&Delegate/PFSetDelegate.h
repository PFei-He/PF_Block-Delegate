
//  PFSetDelegate.h
//  PF_Block&Delegate
//
//  Created by PFei_He on 14-6-20.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PFDelegate;

@interface PFSetDelegate : NSObject

@property (nonatomic, assign) id<PFDelegate> delegate;

/**
 * @brief 回调代理
 */
- (void)callbackDelegate;

@end

@protocol PFDelegate <NSObject>

//必须执行
@required
- (void)setDelegateRequired:(NSString *)string;

//可选执行
@optional
- (void)setDelegateOptional:(NSString *)string;

@end
