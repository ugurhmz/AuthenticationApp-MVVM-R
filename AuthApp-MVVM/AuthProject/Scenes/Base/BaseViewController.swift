//
//  BaseViewController.swift
//  ChallengeApp
//
//  Created by ugur-pc on 6.05.2022.
//

import UIKit

class BaseViewController<V: BaseViewModelProtocol>: UIViewController, BaseViewController.LoadingProtocols {
    
    typealias LoadingProtocols = LoadingProtocol  & ActivityIndicatorProtocol

    var viewModel: V
    
    init(viewModel: V) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    // swiftlint:disable fatal_error unavailable_function
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // swiftlint:enable fatal_error unavailable_function
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        self.showActivityIndicator()
    }
    
    #if DEBUG
    deinit {
        debugPrint("deinit \(self)")
    }
    #endif
    
}

// MARK: - NavigationBar Logo
extension BaseViewController {
    func addNavigationBarLogo() {
        let iv = UIImageView()
        iv.image = UIImage(named: "logoImage")
        iv.contentMode = .scaleAspectFit
        navigationItem.titleView?.backgroundColor = .systemOrange
        navigationItem.titleView = iv
        
    }
}
