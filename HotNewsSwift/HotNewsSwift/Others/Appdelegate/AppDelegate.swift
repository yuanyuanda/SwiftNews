//
//  AppDelegate.swift
//  HotNewsSwift
//
//  Created by 邢媛媛 on 17/7/14.
//  Copyright © 2017年 邢媛媛. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let bar = UINavigationBar.appearance()
        bar.tintColor = UIColor.black
        bar.titleTextAttributes = [NSFontAttributeName : UIFont.systemFont(ofSize: 15), NSForegroundColorAttributeName : UIColor.black]
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
//        let nav = UINavigationController(rootViewController: RACRegisterViewController())
        window?.rootViewController = MainTabbarController()
        
        return true
    }

    // 首先要明确一点: swift里面是没有宏定义的概念
    // 自定义内容输入格式: 文件名[行号]函数名: 输入内容
    // 需要在info.plist的other swift flag的Debug中添加DEBUG
    func ALinLog<T>(_ message: T, fileName: String = #file, lineNum: Int = #line, funcName: String = #function){
        #if DEBUG
            print("\((fileName as NSString).lastPathComponent)[\(lineNum)] \(funcName): \(message)")
        #endif
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

