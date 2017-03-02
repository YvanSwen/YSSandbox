//
//  ViewController.m
//  YSSandbox
//
//  Created by Yvan on 2017/3/2.
//  Copyright © 2017年 Yvan. All rights reserved.
//

#import "ViewController.h"
#import "YSSandbox.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"homepath : %@", [YSSandbox homePath]);
    NSLog(@"apppath  : %@", [YSSandbox appPath]);
    NSLog(@"docpath  : %@", [YSSandbox docPath]);
    NSLog(@"prefpath : %@", [YSSandbox libPrefPath]);
    NSLog(@"cachpath : %@", [YSSandbox libCachePath]);
    NSLog(@"tmppath  : %@", [YSSandbox tmpPath]);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
