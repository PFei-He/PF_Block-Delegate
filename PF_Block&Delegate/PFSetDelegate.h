
//  PFSetDelegate.h
//  PF_Block&Delegate
//
//  Created by PFei_He on 14-6-20.
//  Copyright (c) 2014年 PFei_He. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PFDelegate;

@interface PFSetDelegate : NSObject

///代理
@property (nonatomic, assign) id<PFDelegate> delegate;

/**
 * @brief 回调代理
 */
- (void)callbackDelegate;

/**
 * @brief 输出代理结果
 */
- (NSString *)log;

@end

@protocol PFDelegate <NSObject>

@required
/**
 *  @brief 设置代理方法（必须执行）
 */
- (void)setDelegateRequired:(PFSetDelegate *)delegate;

@optional
/**
 *  @brief 设置代理方法（可选执行）
 */
- (void)setDelegateOptional:(PFSetDelegate *)delegate;

@end
