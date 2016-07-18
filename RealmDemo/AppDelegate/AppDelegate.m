//
//  AppDelegate.m
//  RealmDemo
//
//  Created by lottak_mac2 on 16/6/20.
//  Copyright © 2016年 com.luohaifang. All rights reserved.
//

#import "AppDelegate.h"
#import "AppCustoms.h"
#import "MainViewController.h"
#import "IdentityManager.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    RLMRealmConfiguration *config = [RLMRealmConfiguration defaultConfiguration];
    config.schemaVersion = 2;
    [RLMRealmConfiguration setDefaultConfiguration:config];
    //百度地图注册
    [AMapServices sharedServices].apiKey = @"812f92db9078841bddb73919f07e8d15";
    //对应用进行全局的初始化
    [AppCustoms customs];
    //连接融云
    [[RYChatManager shareInstance] registerRYChat];
    //创建根视图控制器
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.rootViewController = [MainViewController new];
    [self.window makeKeyAndVisible];
    //重新登录
//    IdentityManager *identityManager = [IdentityManager manager];
//    [identityManager readAuthorizeData];
//    [identityManager showLogin];
    return YES;
}

@end
