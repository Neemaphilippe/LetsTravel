//
//  NewTripEntry.swift
//  TravelPP
//
//  Created by Neema on 11/30/20.
//  Copyright © 2020 Neema Philippe. All rights reserved.
//

import UIKit

class NewTripEntryVC: UIViewController {
    
    //MARK: UI Objects
    
    lazy var contentStackView: UIStackView = {
        let sv = UIStackView()
        sv.axis = .vertical
        sv.spacing = 50
        sv.alignment = .center
        sv.distribution = .equalSpacing
        return sv
    }()
    
    lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Times New Roman", size: 30)
        label.text = "Enter New Trip"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        label.backgroundColor = .clear
        return label
    }()
    
    lazy var newlocationLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Times New Roman", size: 20)
        label.text = "Where to next?"
//        label.textAlignment = .left
        label.numberOfLines = 0
//        label.sizeToFit()
        return label
    }()
    
    
    lazy var newLocationText : UITextField = {
        let tf = UITextField()
        tf.font = UIFont(name: "Times New Roman", size: 14)
        tf.backgroundColor = .white
        tf.borderStyle = .bezel
        tf.autocorrectionType = .no
        return tf
    }()
    
    lazy var newDateLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Times New Roman", size: 20)
        label.text = "Select Departure Date"
        label.textAlignment = .left
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    lazy var newDatePicker: UIDatePicker = {
        let date = UIDatePicker()
        date.timeZone = NSTimeZone.local
        date.backgroundColor = UIColor.green
        return date
    }()
    
    lazy var submitButton: UIButton = {
        let button = UIButton()
        button.setTitle("Submit Entry", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Times New Roman", size: 16)
        button.backgroundColor = #colorLiteral(red: 0.599193275, green: 0.7987571359, blue: 0.9307624698, alpha: 1)
        button.layer.cornerRadius = 5
        button.isEnabled = false
        button.addTarget(self, action: #selector(submitButtonPressed), for: .touchUpInside)
        return button
    }()
    
    
    //MARK: Functions
    
    func addViews(){
        self.view.addSubview(welcomeLabel)
        self.view.addSubview(contentStackView)
        self.contentStackView.addArrangedSubview(newlocationLabel)
        self.contentStackView.addArrangedSubview(newLocationText)
        self.contentStackView.addArrangedSubview(newDateLabel)
        self.contentStackView.addArrangedSubview(newDatePicker)
        self.view.addSubview(submitButton)
    }
    
    func constrainWelcomeLabel(){
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            welcomeLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
//            welcomeLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            welcomeLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            welcomeLabel.heightAnchor.constraint(equalToConstant: 50),
            welcomeLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor)
        ])
    }
    
    func constrainNewLocationLabel(){
        newlocationLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            newlocationLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 10),
            newlocationLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
//            newlocationLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            newlocationLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
        ])
    }
    
    func constrainNewLocationText(){
        newLocationText.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            newLocationText.widthAnchor.constraint(equalToConstant: 150),
            newLocationText.heightAnchor.constraint(equalToConstant: 40),
            newLocationText.centerYAnchor.constraint(equalTo: newlocationLabel.centerYAnchor),
            newLocationText.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30)
        ])
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        addViews()
        constrainWelcomeLabel()
        constrainStackView()
//        constrainNewLocationLabel()
//        constrainNewLocationText()
//        constrainDatePicker()
       
    }
//
//    func constrainNewDateLabel(){
//        newDateLabel.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            newDateLabel.topAnchor.constraint(equalTo: <#T##NSLayoutAnchor<NSLayoutYAxisAnchor>#>, constant: <#T##CGFloat#>)
//        ])
//
//
//
//    }
    
    @objc func submitButtonPressed(){
        if self.newlocationLabel.text != "" {
            print("It's getting saved!")
        }
    }
    
    func constrainDatePicker(){
        newDatePicker.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
//            newDatePicker.leadingAnchor.constraint(equalTo: newLocationText.leadingAnchor),
            newDatePicker.trailingAnchor.constraint(equalTo: newLocationText.trailingAnchor),
            newDatePicker.topAnchor.constraint(equalTo: newLocationText.bottomAnchor, constant: 10),
            newDatePicker.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -30)
//            newDatePicker.widthAnchor.constraint(equalTo: newLocationText.widthAnchor)
        
        ])
    }
    
    func constrainStackView(){
        contentStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contentStackView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor),
            contentStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            contentStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30),
            contentStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        
        ])
    }

}
