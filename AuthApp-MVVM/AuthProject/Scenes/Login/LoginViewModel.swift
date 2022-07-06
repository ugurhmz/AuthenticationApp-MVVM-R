//
//  LoginViewModel.swift
//  AuthApp-MVVM
//
//  Created by ugur-pc on 6.07.2022.
//

import Foundation
import SwiftEntryKit
import KeychainSwift

final class LoginViewModel: BaseViewModel<LoginRouter> {
    
    let keychain = KeychainSwift()
    var currentUser: LoginResponseModel?
    var reloadDataClosure: VoidClosure?
    
    func pushLogin() {
        router.placeOnWindowHome()
    }
}

extension LoginViewModel {
    
    func sendLoginRequest(email: String, password: String ){
        let request = LoginRequest(email: email, password: password)
        dataProvider.request(for: request) { [weak self] result in
            guard let self = self else { return }
            print("result",result)
            switch result {
                
                
            case .success(let response):
               
               
                if let myres = response?.msg {
                    SnackHelper.showSnack(message: myres )
                    return
                }
                
                if let oter = response?.error {
                    SnackHelper.showSnack(message: oter )
                    return
                }
                if let loginToken = response?.loginToken {
                    print(loginToken)
                    self.keychain.set(loginToken, forKey: Keychain.token)
                    self.currentUser = response
                    self.reloadDataClosure?()
                    self.pushLogin()
                }
                
                
               case .failure(let error):
                SnackHelper.showSnack(message: error.localizedDescription )
           }
        }
    }
}

