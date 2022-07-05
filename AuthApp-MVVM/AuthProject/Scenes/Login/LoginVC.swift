//
//  ViewController.swift
//  AuthApp-MVVM
//
//  Created by ugur-pc on 4.07.2022.
//

import UIKit

class LoginVC: UIViewController {
    
    private let txtEmail: CustomTextField = {
           let txt = CustomTextField(padding: 24, height: 60)
           txt.backgroundColor = .white
           txt.keyboardType = .emailAddress
           txt.placeholder = "Email address"
           txt.layer.borderWidth = 0.7
           return txt
       }()
       
    private let txtPassword: CustomTextField = {
       let txt = CustomTextField(padding: 24, height: 60)
       txt.backgroundColor = .white
       txt.isSecureTextEntry = true
       txt.placeholder = "Password"
        txt.layer.borderWidth = 0.7
       return txt
    }()
   
    private lazy var stackView: UIStackView = {
       let stackView = UIStackView(arrangedSubviews: [txtEmail, txtPassword, forgetPwTxtLabel, loginBtn, registerBtn])
       stackView.axis = .vertical
       stackView.spacing = 16
        stackView.layer.zPosition = 1
       return stackView
    }()

    private let topRightShapeImgView: UIImageView = {
       let iv = UIImageView()
        iv.image = UIImage(named:"shape2")
       iv.tintColor = .white
        iv.alpha = 0.6
       return iv
    }()
    
    private let bottomLeftShapeImgView: UIImageView = {
       let iv = UIImageView()
        iv.image = UIImage(named:"shape3")
        iv.alpha = 0.6
      
       return iv
    }()

    private let loginTxtLabel: UILabel = {
       let label = UILabel()
        label.font =  .systemFont(ofSize: 53, weight: .bold)
       label.text = "Login"
       label.textColor = .black
       return label
    }()

    private let forgetPwTxtLabel: UILabel = {
       let label = UILabel()
       label.font = .systemFont(ofSize: 24, weight: .medium)
       label.text = "Forgot password?"
       label.textColor = .black
       return label
    }()

    private let loginBtn: UIButton = {
       let btn = UIButton(type: .system)
       btn.setTitle("Login", for: .normal)
       btn.setTitleColor(.black, for: .normal)
       btn.layer.cornerRadius = 15
       btn.backgroundColor = .white
        btn.layer.borderWidth = 0.7
        btn.layer.borderColor = UIColor.black.cgColor
       btn.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .medium)
       //btn.addTarget(self, action: #selector(clickLoginBtn), for: .touchUpInside)
       return btn
    }()

    private let registerBtn: UIButton = {
       let btn = UIButton(type: .system)
       btn.setTitle("Register", for: .normal)
       btn.setTitleColor(UIColor(red: 16/255, green: 129/255, blue: 49/255, alpha: 1), for: .normal)
       btn.layer.cornerRadius = 15
       btn.backgroundColor = .white
       btn.layer.borderWidth = 1
       btn.layer.borderColor = UIColor(red: 16/255, green: 129/255, blue: 49/255, alpha: 1).cgColor
       btn.titleLabel?.font = UIFont.systemFont(ofSize: 28, weight: .medium)
       //btn.addTarget(self, action: #selector(goRegisterVC), for: .touchUpInside)
       return btn
    }()


    override func viewDidLoad() {
       super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
        setConstraints()
        navigationController?.navigationBar.isHidden = true
       
    }
    private func setupViews() {
       view.addSubview(stackView)
       view.addSubview(topRightShapeImgView)
       view.addSubview(bottomLeftShapeImgView)
       view.addSubview(loginTxtLabel)
       forgetPwTxtLabel.textAlignment = .right
       
       //view.backgroundColor = .blue.withAlphaComponent(0.7)
       view.bringSubviewToFront(stackView)
      
      
       stackView.setCustomSpacing(40, after: forgetPwTxtLabel)
       
       
       // forgot pw click handle
       forgetPwTxtLabel.isUserInteractionEnabled = true
      // let guestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(clickForgotPw(_:)))
       //forgetPwTxtLabel.addGestureRecognizer(guestureRecognizer)
    }
}
extension LoginVC {
    private func setConstraints(){
        
        stackView.anchor(top: nil,
                               leading: view.leadingAnchor,
                               bottom: nil,
                               trailing: view.trailingAnchor,
                               padding: .init(top: 0, left: 30, bottom: 0, right: 30))
        stackView.centerYInSuperview()
              
              
              
       topRightShapeImgView.anchor(top: view.topAnchor,
                           leading: nil,
                           bottom: nil,
                           trailing: view.trailingAnchor,
                           padding: .init(top: 55, left: 0, bottom: 0, right: 6),
                           size: .init(width: 200, height: 200))
      
       loginTxtLabel.anchor(top: view.topAnchor,
                           leading: view.leadingAnchor,
                           bottom: nil,
                           trailing: nil,
                           padding: .init(top: 200, left: 46, bottom: 30, right: 10))
        
        
       
        bottomLeftShapeImgView.anchor(top: nil,
                                      leading: view.leadingAnchor,
                                      bottom: view.bottomAnchor,
                                      trailing: view.trailingAnchor,
                                      padding: .init(top: 0, left: 2, bottom: 112, right: 0),
                                      size: .init(width: 0, height: 380))
       
        
        
    }
}

