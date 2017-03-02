//
//  YSSandBox.m
//  02-沙盒路径
//
//  Created by Yvan on 2017/3/2.
//  Copyright © 2017年 heima. All rights reserved.
//

#import "YSSandbox.h"

@implementation YSSandbox

+ (NSString *)homePath {
    return NSHomeDirectory();
}

+ (NSString *)appPath {
    return [self pathWithIdentifier:NSApplicationDirectory];
}

+ (NSString *)docPath {
    return [self pathWithIdentifier:NSDocumentDirectory];
}

+ (NSString *)libPrefPath {
    NSString *libPath = [self pathWithIdentifier:NSLibraryDirectory];
    return [libPath stringByAppendingString:@"/Preference"];
}

+ (NSString *)libCachePath {
    NSString *libPath = [self pathWithIdentifier:NSLibraryDirectory];
    return [libPath stringByAppendingString:@"/Cache"];
}

+ (NSString *)tmpPath {
    return [NSHomeDirectory() stringByAppendingString:@"/tmp"];
}

+ (BOOL)hasLive:(NSString *)path
{
    if ([[NSFileManager defaultManager] fileExistsAtPath:path] == NO)
    {
        return [[NSFileManager defaultManager] createDirectoryAtPath:path
                                         withIntermediateDirectories:YES
                                                          attributes:nil
                                                               error:NULL];
    }
    
    return NO;
}

#pragma mark - Private Methods
+ (NSString *)pathWithIdentifier:(NSSearchPathDirectory)sender {
    NSArray *paths = NSSearchPathForDirectoriesInDomains(sender, NSUserDomainMask, YES);
    return paths.firstObject;
}

@end
