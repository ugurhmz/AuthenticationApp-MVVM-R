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
    
   
    
}
extension HomeViewModel {
    func userLogout() {
        
    }
}
