//
//  HomeViewModel.swift
//  AuthApp-MVVM
//
//  Created by ugur-pc on 6.07.2022.
//

import Foundation


protocol HomeViewProtocol {
    func userLogout()
}

final class HomeViewModel: BaseViewModel<HomeRouter>, HomeViewProtocol {
    var didSuccesLogout: VoidClosure?
    func pushLoginScreen(){
        router.placeOnLogin()
    }
    
}
extension HomeViewModel {
    

    func userLogout(){
       showActivityIndicatorView?()
        let request = LogoutRequest()
        dataProvider.request(for: request) { [weak self] (result) in
            guard let self = self else { return }
            self.showActivityIndicatorView?()
            switch result {
            case .success(_ ):
                SnackHelper.showSnack(message: "Successfully logout.")
                self.didSuccesLogout?()
                self.pushLoginScreen()
            case .failure(let error):
                SnackHelper.showSnack(message: error.localizedDescription )
            }
        }
    }
    
    
}
