//
//  CreateAccountVC.swift
//  TravelPP
//
//  Created by Pursuit on 12/11/19.
//  Copyright © 2019 Neema Philippe. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    //MARK: UI OBJECTS
    
    lazy var createLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Create An Account"
        label.font = UIFont(name: "Times New Roman", size: 50)
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
    
    lazy var submitButton: UIButton = {
        let button = UIButton()
        button.setTitle("Submit", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Times New Roman", size: 16)
        button.backgroundColor = #colorLiteral(red: 0.599193275, green: 0.7987571359, blue: 0.9307624698, alpha: 1)
        button.layer.cornerRadius = 5
        button.isEnabled = false
        return button
    }()
    
    
    
    
    //MARK: PRIVATE FUNCTIONS
    
    private func addViews() {
        view.addSubview(createLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(submitButton)
        
    }
    
    
    private func setUpCreateLabel() {
        createLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            createLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 60),
            createLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            createLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -16)])
    }
    
    
    private func setupSignInStackView() {
        let stackView = UIStackView(arrangedSubviews: [emailTextField, passwordTextField, submitButton])
        stackView.axis = .vertical
        stackView.spacing = 15
        stackView.distribution = .fillEqually
        self.view.addSubview(stackView)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            stackView.heightAnchor.constraint(equalToConstant: 130)])
    }
    
    
    private func setUpViews(){
        setUpCreateLabel()
        setupSignInStackView()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addViews()
        setUpViews()
        view.backgroundColor = #colorLiteral(red: 0.4419714212, green: 0.5883228183, blue: 0.8935868144, alpha: 1)
        
        
    }
    
    
    
    
}
