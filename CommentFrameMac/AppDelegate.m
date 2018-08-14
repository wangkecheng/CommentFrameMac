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
    //让显示的位置居于屏幕的中心
//    [[_homeVC window] center];
    //前置显示窗口
    [_homeWC.window orderFront:nil];
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
} 
@end
