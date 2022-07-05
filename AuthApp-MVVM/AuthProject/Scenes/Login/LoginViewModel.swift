//
//  LoginViewModel.swift
//  AuthApp-MVVM
//
//  Created by ugur-pc on 6.07.2022.
//

import Foundation


final class LoginViewModel: BaseViewModel<LoginRouter> {
    
    init(router: LoginRouter){
        super.init(router: router)
    }
}

extension LoginViewModel {
    
    func sendLoginRequest(email: String, password: String ){
        let request = LoginRequest(email: email, password: password)
        dataProvider.request(for: request) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
               case .success(let response):
                print(response?.name)
               case .failure(let error):
                print(error.localizedDescription)
           }
        }
    }
}
