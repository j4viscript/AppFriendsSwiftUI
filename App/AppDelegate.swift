//
//  AppDelegate.swift
//  App
//
//  Created by Javier Oskar Murillo Cota on 23/02/23.
//

import UIKit
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate{
    internal func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions:
                     [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool{
        FirebaseApp.configure()
        return true
    }
}
