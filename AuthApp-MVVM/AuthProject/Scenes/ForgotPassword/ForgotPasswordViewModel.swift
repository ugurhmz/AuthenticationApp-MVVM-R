//
//  ForgotPasswordViewModel.swift
//  AuthApp-MVVM
//
//  Created by ugur-pc on 6.07.2022.
//

import Foundation

final class ForgotPasswordViewModel: BaseViewModel<ForgotPasswordRouter> {
    
    func showLoginScreen() {
        router.close()
    }
}
