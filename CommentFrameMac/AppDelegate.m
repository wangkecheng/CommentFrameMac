//
//  AppDelegate.m
//  CommentFrameMac
//
//  Created by 王帅 on 2018/8/14.
//  Copyright © 2018年 王帅. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeWC.h"
@interface AppDelegate ()


@property(nonatomic,strong)HomeWC * homeWC;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    
     _homeWC = [[HomeWC alloc]initWithWindowNibName:@"HomeVC"]; 
    [_homeWC.window orderFront:nil]; //前置显示窗口
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
} 
@end
