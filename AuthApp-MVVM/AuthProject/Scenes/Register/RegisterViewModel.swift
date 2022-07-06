//
//  RegisterViewModel.swift
//  AuthApp-MVVM
//
//  Created by ugur-pc on 6.07.2022.
//

import Foundation

final class RegisterViewModel: BaseViewModel<RegisterRouter> {
    func showLoginScreen() {
        router.close()
    }
}
