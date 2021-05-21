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
        sv.spacing = 30
        sv.alignment = .center
        sv.distribution = .equalSpacing
        return sv
    }()
    
    lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Times New Roman", size: 20)
        label.text = "Enter New Trip"
        label.textAlignment = .center
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        label.backgroundColor = .clear
        return label
    }()
    
    lazy var newlocationLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Times New Roman", size: 15)
        label.text = "Where to next?"
        label.numberOfLines = 0
        return label
    }()
    
    lazy var newLocationText : UITextField = {
        let tf = UITextField()
        tf.font = UIFont(name: "Times New Roman", size: 14)
        tf.borderStyle = .bezel
        return tf
    }()
    
    lazy var newDateLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Times New Roman", size: 15)
        label.text = "Select Departure Date"
        label.textAlignment = .left
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        return label
    }()
    
    lazy var newDatePicker: UIDatePicker = {
        let date = UIDatePicker()
        date.timeZone = NSTimeZone.local
        return date
    }()
    
    lazy var submitButton: UIButton = {
        let button = UIButton()
        button.setTitle("Submit Entry", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = UIFont(name: "Times New Roman", size: 16)
        button.backgroundColor = #colorLiteral(red: 0.599193275, green: 0.7987571359, blue: 0.9307624698, alpha: 1)
        button.layer.cornerRadius = 25
        button.addTarget(self, action: #selector(handleSubmitButtonPressed), for: .touchUpInside)
        return button
    }()
    
    
    //MARK: Functions
    
    func addAlert(){
        let alert = UIAlertController(title: "Do you know if there are restrictions?", message: "It's recommended you check the CDC website for latest updates on COVID-19 before continuing.", preferredStyle: .alert)

        alert.addAction(UIAlertAction(title: "Yes", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "No", style: .cancel, handler: nil))

        self.present(alert, animated: true)
    }
    
    func addViews(){
        self.view.addSubview(welcomeLabel)
        self.view.addSubview(contentStackView)
        self.contentStackView.addArrangedSubview(newlocationLabel)
        self.contentStackView.addArrangedSubview(newLocationText)
        self.contentStackView.addArrangedSubview(newDateLabel)
        self.contentStackView.addArrangedSubview(newDatePicker)
        self.view.addSubview(self.submitButton)
    }
    
    func constrainWelcomeLabel(){
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            welcomeLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            welcomeLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            welcomeLabel.heightAnchor.constraint(equalToConstant: 50),
            welcomeLabel.widthAnchor.constraint(equalTo: self.view.widthAnchor)
        ])
    }
    
    func constrainStackView(){
        contentStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            contentStackView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 30),
            contentStackView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 30),
            contentStackView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -30),
        ])
    }
    
    func constrainSubmitButton() {
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            submitButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            submitButton.topAnchor.constraint(equalTo: self.contentStackView.bottomAnchor, constant: 30),
            submitButton.widthAnchor.constraint(equalToConstant: 350),
            submitButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc private func handleSubmitButtonPressed() {
        guard let location = newLocationText.text,
            !location.isEmpty  else {
                
                let alertVC = UIAlertController(title: "Please enter all information", message: nil, preferredStyle: .alert)
                alertVC.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alertVC, animated: true, completion: nil)
                
                return
                // some kind of check to make sure entry was submitted or segue to main cv
        }
        
        let newTravelInfo = TravelInfo(locationName: location, departureDate: newDatePicker.date, currentDate: Date())
        do {
            try TravelPersistenceHelper.manager.save(newEntry: newTravelInfo)
        } catch {
            let alertVC = UIAlertController(title: "Oops! Error saving destination", message: nil, preferredStyle: .alert)
            alertVC.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alertVC, animated: true, completion: nil)
        }
        
        
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.900858283, green: 0.900858283, blue: 0.900858283, alpha: 1)
        addViews()
        addAlert()
        constrainWelcomeLabel()
        constrainStackView()
        constrainSubmitButton()
        newLocationText.widthAnchor.constraint(equalToConstant: 240).isActive = true
    }
}
