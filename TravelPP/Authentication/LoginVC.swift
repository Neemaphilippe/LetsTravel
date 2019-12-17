//
//  LoginVC.swift
//  TravelPP
//
//  Created by Pursuit on 12/10/19.
//  Copyright © 2019 Neema Philippe. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    //MARK: UI OBJECTS
    
    lazy var titleLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Let's Travel!"
        label.font = UIFont(name: "Times New Roman", size: 60)
        label.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        label.backgroundColor = .clear
        label.textAlignment = .center
        return label
    }()
    
    lazy var emailTextField : UITextField = {
        let tf = UITextField()
        tf.placeholder = "Enter Email"
        tf.font = UIFont(name: "Times New Roman", size: 14)
        tf.backgroundColor = .white
        tf.borderStyle = .bezel
        tf.autocorrectionType = .no
        return tf
    }()
    
    lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.placeholder = "Enter Password"
        tf.font = UIFont(name: "Times New Roman", size: 14)
        tf.backgroundColor = .white
        tf.borderStyle = .bezel
        tf.autocorrectionType = .no
        tf.isSecureTextEntry = true
        return tf
    }()
    
    lazy var signInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Sign In", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Times New Roman", size: 16)
        button.backgroundColor = #colorLiteral(red: 0.2918118834, green: 0.7149427533, blue: 0.7101073861, alpha: 1)
        button.layer.cornerRadius = 5
        button.isEnabled = false
        return button
    }()
    
    lazy var createAccountButton : UIButton = {
        let button = UIButton()
        let attributedTitle = NSMutableAttributedString(string: "Dont have an account?",
                                                        attributes: [
                                                            NSAttributedString.Key.font: UIFont(name: "Times New Roman", size: 14)!,
                                                            NSAttributedString.Key.foregroundColor: UIColor.white])
        attributedTitle.append(NSAttributedString(string: "Create Account",
                                                  attributes: [NSAttributedString.Key.font: UIFont(name: "Times New Roman", size: 14)!,
                                                               NSAttributedString.Key.foregroundColor:  UIColor(red: 17/255, green: 154/255, blue: 240/255, alpha: 1)]))
        button.setAttributedTitle(attributedTitle, for: .normal)
        return button
    }()
    
    
    
    //MARK: PRIVATE FUNCTIONS
    private func addViews() {
        view.addSubview(titleLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
    }
    
    private func setUpLabel() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 60),
            titleLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            titleLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -16)])
    }
    private func setupSignInStackView() {
        let stackView = UIStackView(arrangedSubviews: [emailTextField, passwordTextField,signInButton])
        stackView.axis = .vertical
        stackView.spacing = 15
        stackView.distribution = .fillEqually
        self.view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.bottomAnchor.constraint(equalTo: createAccountButton.topAnchor, constant: -50),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            stackView.heightAnchor.constraint(equalToConstant: 130)])
    }
    
    private func setupCreateAccountButton() {
        view.addSubview(createAccountButton)
        
        createAccountButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            createAccountButton.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            createAccountButton.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            createAccountButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            createAccountButton.heightAnchor.constraint(equalToConstant: 50)])
    }
    
    
    private func setUpViews(){
        setUpLabel()
        setupSignInStackView()
        setupCreateAccountButton()
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        setUpViews()
        view.backgroundColor = #colorLiteral(red: 0.4419714212, green: 0.5883228183, blue: 0.8935868144, alpha: 1)
        
    }
    
    
    
    
}
