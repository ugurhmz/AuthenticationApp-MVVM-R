//
//  LoginRoute.swift
//  AuthApp-MVVM
//
//  Created by ugur-pc on 5.07.2022.
//

import UIKit

protocol LoginRoute {
    func placeOnWindowHome()
}

extension LoginRoute where Self: RouterProtocol {
    
    func placeOnWindowHome() {
           let router = LoginRouter()
          // let viewModel = HomeViewModel(router: router)
           let viewController = LoginVC()
           let navigationController = MainNavigationController(rootViewController: viewController)
           
           let transition = PlaceOnWindowTransition()
           router.viewController = viewController
           router.openTransition = transition
           
           open(navigationController, transition: transition)
       }
}

