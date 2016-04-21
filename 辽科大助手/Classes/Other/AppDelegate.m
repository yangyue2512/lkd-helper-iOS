//
//  AppDelegate.m
//  辽科大助手
//
//  Created by DongAn on 15/11/24.
//  Copyright © 2015年 DongAn. All rights reserved.
//

#import "AppDelegate.h"
#import "ZSTabBarController.h"
#import "ZSNewFeatureController.h"
#import "ZSNavigationController.h"
#import "ZSLoginViewController.h"

#import "ZSRootTool.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    
//    if ([UIDevice currentDevice].systemVersion.doubleValue >= 8.0) {
//        
//        UIUserNotificationType type = UIUserNotificationTypeAlert | UIUserNotificationTypeBadge | UIUserNotificationTypeSound;
//        
//        UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:type categories:nil];
//        
//        //注册通知类型
//        [application registerUserNotificationSettings:settings];
//    }
    
    
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];

    
    [UIApplication sharedApplication].statusBarStyle = UIStatusBarStyleLightContent;
    
//    //判断当前是否有新的版本，如果有，进入新特性界面
//    ZSNewFeatureController *newFeatureVC = [[ZSNewFeatureController alloc] init];
//    
//    self.window.rootViewController = newFeatureVC;
    
//    ZSTabBarController *tabBarVC = [[ZSTabBarController alloc] init];
//    
//    self.window.rootViewController = tabBarVC;
    
    //登录界面
//    ZSLoginViewController *loginVC = [[ZSLoginViewController alloc] init];
//    
//    ZSNavigationController *loginNavigationVC = [[ZSNavigationController alloc] initWithRootViewController:loginVC];
//    
//    self.window.rootViewController = loginNavigationVC;
    
    [ZSRootTool chooseRootViewController:self.window];
    
    [self.window makeKeyAndVisible];
    
    
//    [NSThread sleepForTimeInterval:2.0];//设置启动页面时间
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
