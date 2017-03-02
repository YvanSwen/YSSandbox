//
//  YSSandBox.h
//  02-沙盒路径
//
//  Created by Yvan on 2017/3/2.
//  Copyright © 2017年 heima. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YSSandbox : NSObject


/**
 程序主目录，可见子目录(3个):Documents、Library、tmp

 @return 程序主目录
 */
+ (NSString *)homePath;

/**
 程序目录，不能存任何东西

 @return 程序目录
 */
+ (NSString *)appPath;

/**
 文档目录，需要iTunes同步备份的数据存在这里，可存放用户数据

 @return 文档目录
 */
+ (NSString *)docPath;

/**
 配置目录，配置文件存在这里

 @return 配置目录
 */
+ (NSString *)libPrefPath;

/**
 缓存目录，系统不会删除这里的文件，iTunes会删除
 
 @return 缓存目录
 */
+ (NSString *)libCachePath;

/**
 临时缓存目录，App退出后，系统可能会删除这里的内容

 @return 临时缓存目录
 */
+ (NSString *)tmpPath;

/**
 判断目录是否存在，不存在则创建
 
 @param path
 @return
 */
+ (BOOL)hasLive:(NSString *)path;

@end
