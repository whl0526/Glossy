//
//  LoginViewController.swift
//  Glossy
//
//  Created by Hyesung Jeon on 2023/04/19.
//

import UIKit
import SnapKit

class LoginViewController: UIViewController {
    
    let appleLoginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Apple 로그인", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .black
        button.layer.borderColor = UIColor.black.cgColor
        return button
    }()
    
    let googleLoginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Google 로그인", for: .normal)
        button.tintColor = .white
        button.backgroundColor = .black
        button.layer.borderColor = UIColor.black.cgColor
        return button
    }()
    
    let logoView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "person.fill")
        return view
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addSubView()
        configureView()
        
        
    }
    
    func addSubView() {
        self.view.addSubview(appleLoginButton)
        self.view.addSubview(googleLoginButton)
        self.view.addSubview(logoView)
    }
    
    func configureView() {
        
        logoView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalToSuperview().inset(180)
            $0.width.height.equalTo(150)
        }
        
        appleLoginButton.snp.makeConstraints {
            $0.centerX.equalTo(logoView)
            $0.top.equalTo(logoView.snp.bottom).inset(-200)
            $0.width.equalTo(200)
            $0.height.equalTo(44)
        }
        
        googleLoginButton.snp.makeConstraints {
            $0.top.equalTo(appleLoginButton.snp.bottom).inset(-10)
            $0.centerX.equalTo(appleLoginButton)
            $0.width.equalTo(200)
            $0.height.equalTo(44)
        }
    }
    
}


#if DEBUG
import SwiftUI
struct LoginViewControllerRepresentable: UIViewControllerRepresentable {
    
    func updateUIViewController(_ uiView: UIViewController,context: Context) {
        // leave this empty
    }
    @available(iOS 13.0.0, *)
    func makeUIViewController(context: Context) -> UIViewController{
        LoginViewController()
    }
}
@available(iOS 13.0, *)
struct LoginViewControllerRepresentable_PreviewProvider: PreviewProvider {
    static var previews: some View {
        Group {
            LoginViewControllerRepresentable()
                .ignoresSafeArea()
                .previewDisplayName(/*@START_MENU_TOKEN@*/"Preview"/*@END_MENU_TOKEN@*/)
                .previewDevice(PreviewDevice(rawValue: "iPhone 14"))
        }
        
    }
} #endif
