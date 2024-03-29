//
//  AppDelegate.swift
//  checkInternetReachability
//
//  Created by Anh vũ on 7/14/19.
//  Copyright © 2019 anh vu. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    static var shared = {
        return UIApplication.shared.delegate as! AppDelegate
    }()
    
    var reachablity: Reachability?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        setupReachablity() KHI DUNG TAT CA MAN HINH
       
        return true
        
        
        //        khi dung mot so man hinh .callback: ((Reachability) ->())?.  if callback != nil {   reachablity?.whenUnreachable = callback
//    }
     
    }
    func setupReachablity(callback: ((Reachability) ->())? = nil){
        reachablity?.stopNotifier()
        reachablity = try? Reachability(hostname: "www.google.com")
        do {
            if callback != nil {
                reachablity?.whenUnreachable = callback
            } else {
                reachablity?.whenUnreachable = { reachablity in
//                    if reachablity.connection == .cellular {
                        showAlertToOpenSetting(title: "Mở mạng cho tôi", message: "chúng tôi cần dữ liệu 3g")
//                    }
            }
            }
            try reachablity?.startNotifier()
            //  MARK: KHI DUNG TAT CA MAN HINH
            
//            DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
//                self.setupReachablity()
//            }
        } catch {
            print(error.localizedDescription)
        }
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

