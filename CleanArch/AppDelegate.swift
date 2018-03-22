//
//  AppDelegate.swift
//  CleanArch
//
//  Created by Matteo Comisso on 22/03/2018.
//  Copyright © 2018 ReatailMeNot UK Ltd. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        func injectVC(_ vc: UIViewController) {
            window = UIWindow(frame: UIScreen.main.bounds)
            window?.rootViewController = vc
            window?.makeKeyAndVisible()
        }


        let storyboardName = "Main"
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)

        if let viewController = storyboard.instantiateInitialViewController() as? UINavigationController {

            let programmersViewController = viewController.topViewController as! ProgrammersListTableViewController

            let gateway = ProgrammersRepository()
            let useCase = ShowProgrammerListUseCase.init(entityGateway: gateway)
            let presenter = ProgrammerListPresenter(useCase: useCase)
            useCase.presenter = presenter // Connect backwards

            programmersViewController.presenter = presenter

            injectVC(viewController)

        }


        return true
    }

}

