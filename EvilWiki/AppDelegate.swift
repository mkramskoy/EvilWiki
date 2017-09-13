//
//  AppDelegate.swift
//  EvilWiki
//
//  Created by Michael Kramskoy on 13/09/2017.
//  Copyright © 2017 Michael Kramskoy. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let nc = storyboard.instantiateInitialViewController() as! UINavigationController
        let vc = nc.topViewController as! SupervilianEditViewController
        
        let presenter = SupervilianEditPresenter()
        presenter.view = vc
        vc.presenter = presenter
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = nc
        window?.makeKeyAndVisible()
        
        return true
    }
}

