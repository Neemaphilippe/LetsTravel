//
//  NewTripEntry.swift
//  TravelPP
//
//  Created by Neema on 11/30/20.
//  Copyright © 2020 Neema Philippe. All rights reserved.
//

import UIKit

class NewTripEntry: UIView {
    
    //MARK: UI Objects
    
    lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Times New Roman", size: 40)
        label.text = "Enter New Trip"
        label.textAlignment = .left
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    lazy var newlocationLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Times New Roman", size: 20)
        label.text = "Where to next?"
        label.textAlignment = .left
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    
    lazy var newLocationText : UITextField = {
        let tf = UITextField()
        tf.font = UIFont(name: "Times New Roman", size: 14)
        tf.backgroundColor = .white
        tf.borderStyle = .bezel
        tf.autocorrectionType = .no
        tf.isSecureTextEntry = true
        return tf
    }()
    
    lazy var newDatePicker: UIDatePicker = {
        let date = UIDatePicker()
        date.frame = CGRect(x: 10, y: 50, width: self.frame.width, height: 200)
        date.timeZone = NSTimeZone.local
        date.backgroundColor = UIColor.black
        return date
    }()
    
    
    //MARK: Functions
    
    func addViews(){
        self.addSubview(welcomeLabel)
        self.addSubview(newlocationLabel)
        self.addSubview(newLocationText)
        self.addSubview(newDatePicker)
    }
    
    func constrainWelcomeLabel(){
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            welcomeLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            welcomeLabel.topAnchor.constraint(equalTo: self.topAnchor),
            welcomeLabel.heightAnchor.constraint(equalToConstant: 50),
            welcomeLabel.widthAnchor.constraint(equalTo: self.widthAnchor)
        ])
    }
    
    func constrainNewLocationLabel(){
        newlocationLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            newlocationLabel.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 30),
            newlocationLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            newlocationLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
//    func constrainNewLocationText(){
//        newLocationText.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            newLocationText.leadingAnchor.constraint(equalTo: newlocationLabel.trailingAnchor, constant: 10),
//            newLocationText.trailingAnchor.constraint(equalTo: newlocationLabel.trailingAnchor)
//        ])
//        
//    }
//    
//    func constrainDatePicker(){
//        
//    }
}