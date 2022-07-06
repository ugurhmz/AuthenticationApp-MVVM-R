//
//  HomeVC.swift
//  AuthApp-MVVM
//
//  Created by ugur-pc on 6.07.2022.
//

import UIKit
import KeychainSwift

class HomeVC: BaseViewController<HomeViewModel>{
    private let keychain = KeychainSwift()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .white
        viewModel.didSuccesLogout = { [weak self] in
            guard let self = self else { return }
            self.keychain.clear()
            self.navigationItem.rightBarButtonItem = .none
        }
    }
    
    private func customNavigateBar(){
         if #available(iOS 13.0, *) {
               let navBarAppearance = UINavigationBarAppearance()
                navBarAppearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black,NSAttributedString.Key.font: UIFont(name: "Charter-Black", size: 15)!]
              
                navigationController?.navigationBar.barStyle = .black
               navigationController?.navigationBar.standardAppearance = navBarAppearance
               navigationController?.navigationBar.compactAppearance = navBarAppearance
               navigationController?.navigationBar.scrollEdgeAppearance = navBarAppearance

               navigationController?.navigationBar.prefersLargeTitles = false
          
             //navigationItem.title = user.email
                   
           }
     }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        checkIsUserLogin()
    }
    
}
extension HomeVC {
    
    private func setupLogoutRightBarButton() {
        
        let logOutImage = UIImage(systemName: "person.fill.xmark")?.withRenderingMode(.alwaysOriginal)
           let logoutBarButton = UIBarButtonItem(image: logOutImage, style: .done, target: self, action: #selector(logoutBarButtonDidTap))
           navigationItem.rightBarButtonItem = logoutBarButton
    }
    
    private func checkIsUserLogin(){
        if keychain.get(Keychain.token) != nil {
                  setupLogoutRightBarButton()
         } else {
                  navigationItem.rightBarButtonItem = .none
             viewModel.userLogout()
         }
    }
    
    @objc func logoutBarButtonDidTap() {
        viewModel.userLogout()
    }
}
