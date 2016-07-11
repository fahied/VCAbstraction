//
//  AppDelegate.swift
//  VCAbstraction
//
//  Created by Fahied on 11/07/2016.
//  Copyright © 2016 OLX PK. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var app: App?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        if let window = window {
            app = App(window: window)
        }
        return true
    }
}

