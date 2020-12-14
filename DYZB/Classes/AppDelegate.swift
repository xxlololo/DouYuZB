//
//  AppDelegate.swift
//  DYZB
//
//  Created by xIang on 2020/12/10.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow.init()
        window?.frame = UIScreen.main.bounds
        window?.rootViewController = MainTabBarController()
        window?.makeKeyAndVisible()
        return true
    }
    
}

