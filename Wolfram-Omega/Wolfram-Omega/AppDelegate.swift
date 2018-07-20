//
//  AppDelegate.swift
//  Wolfram-Omega
//
//  Created by Ayesha Nabiha on 7/16/18.
//  Copyright © 2018 Ayesha Nabiha. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        handleInitialScreen()
        
        return true
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


    func handleInitialScreen() {
        let launchedBefore = UserDefaults.standard.bool(forKey: "launchedBefore")
        if launchedBefore  {
            window = UIWindow(frame: UIScreen.main.bounds)
            print("Not first launch.")
            
            print ("line 1")
            //            let mainStoryboard: UIStoryboard = UIStoryboard(name: "/Users/yash/Library/Developer/CoreSimulator/Devices/3BE9A0BF-D217-4A4A-9BC6-8FBF186AC97F/data/Containers/Bundle/Application/B11B5FD4-CBA8-4AB4-8B1A-395C81C17FD1/Wolfram-Omega.appBase.lproj/Main.storyboardc", bundle: nil)
            //let storyboard = UIStoryboard(name: "Main.storyboard", bundle: nil)
            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            let viewController = storyboard.instantiateViewController(withIdentifier: "addVariablesViewController")
//            UIApplication.shared.keyWindow?.rootViewController = viewController
            window?.rootViewController = viewController
            window?.makeKeyAndVisible()
        } else {
            print("First launch, setting UserDefault.")
            UserDefaults.standard.set(true, forKey: "launchedBefore")
        }
    }
    
}

