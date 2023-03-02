//
//  AppApp.swift
//  App
//
//  Created by Javier Oskar Murillo Cota on 23/02/23.
//
    
import SwiftUI

@main
struct AppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            //ContentView().environmentObject(login)
            SplashView()
        }
    }
}
