//
//  AppDelegate.swift
//
//  Created by Jorge Murillo on 09/14/2020.
//  Copyright (c) 2020 Jorge Murillo. All rights reserved.
//

import UIKit
import TPCSDKSwift

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let tpcIssuerId = "BCOCREPERU"
        let tpcsdkConfigureResult = TPCSDK.configure(variant: .PPROD,
                                                     issuerId: tpcIssuerId)
        switch tpcsdkConfigureResult {
        case .OK:
          print("Apple Pay and provisioning is supported")
          break
        case .Error:
          print("Ha sucedido un error con Apple Pay")
        default:
          print("Apple Pay is not available")
          break
        }
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }
}
