//
//  TravelDayVC.swift
//  TravelPP
//
//  Created by Pursuit on 12/11/19.
//  Copyright © 2019 Neema Philippe. All rights reserved.
//

import UIKit

class TravelDayVC: UIViewController {
    
    //MARK: UI OBJECTS
    
    lazy var parkingLabel : UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Used airport parking? Enter information below."
        label.font = UIFont(name: "Times New Roman", size: 18)
        label.textColor = .black
        label.backgroundColor =  #colorLiteral(red: 0.599193275, green: 0.7987571359, blue: 0.9307624698, alpha: 1)
        label.textAlignment = .left
        return label
    }()
    
    lazy var parkingInfoTextField : UITextField = {
        let tf = UITextField()
        tf.placeholder = "Enter Parking Lot Information Here"
        tf.font = UIFont(name: "Times New Roman", size: 14)
        tf.textColor = .black
        tf.backgroundColor = .white
        tf.borderStyle = .bezel
        tf.autocorrectionType = .no
        return tf
    }()
    
    lazy var addBoardingPassLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Upload Boarding Pass:"
        label.font = UIFont(name: "Times New Roman", size: 18)
        label.textColor = .black
        label.backgroundColor =  #colorLiteral(red: 0.599193275, green: 0.7987571359, blue: 0.9307624698, alpha: 1)
        label.textAlignment = .left
        return label
    }()
    
    lazy var boardingPassImage : UIImageView = {
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissFullscreenImage))
        let image = UIImageView()
        image.contentMode = .scaleAspectFit
        image.backgroundColor = #colorLiteral(red: 0.599193275, green: 0.7987571359, blue: 0.9307624698, alpha: 1)
        image.image = UIImage(named: "boardingPass")
        image.frame = UIScreen.main.bounds
        image.contentMode = .scaleAspectFit
        image.isUserInteractionEnabled = true
        image.addGestureRecognizer(tap)
        return image
        
    }()
    
    lazy var addBoardingPassButton : UIButton = {
        let button = UIButton()
        button.setTitle("Add Pass", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "Times New Roman", size: 16)
        button.backgroundColor = #colorLiteral(red: 0.9724547267, green: 0.9954997897, blue: 1, alpha: 1)
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(boardingPassButtonPressed), for: .touchUpInside)
        button.isEnabled = true
        return button
    }()
    
    lazy var addReminderButton : UIButton = {
           let button = UIButton()
           button.setTitle("Add Reminder", for: .normal)
           button.setTitleColor(.black, for: .normal)
           button.titleLabel?.font = UIFont(name: "Times New Roman", size: 16)
           button.backgroundColor = #colorLiteral(red: 0.9724547267, green: 0.9954997897, blue: 1, alpha: 1)
           button.layer.cornerRadius = 5
           button.addTarget(self, action: #selector(newReminderButtonPressed), for: .touchUpInside)
           button.isEnabled = true
           return button
       }()
    
    lazy var thingsToDoButton : UIButton = {
        let button = UIButton()
        button.setTitle("Check out things to do in this city!", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.titleLabel?.font = UIFont(name: "Times New Roman", size: 16)
        button.backgroundColor = #colorLiteral(red: 0.9724547267, green: 0.9954997897, blue: 1, alpha: 1)
        button.layer.cornerRadius = 5
        button.isEnabled = false
        return button
        
    }()
    
    //MARK: PRIVATE FUNCTIONS
    
    private func addViews() {
        view.addSubview(parkingLabel)
        view.addSubview(parkingInfoTextField)
        view.addSubview(boardingPassImage)
        view.addSubview(addBoardingPassButton)
        view.addSubview(addReminderButton)
        view.addSubview(thingsToDoButton)
        view.addSubview(addBoardingPassLabel)
    }
    
    
    private func setUpParkingLabel(){
        parkingLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            parkingLabel.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 50),
            parkingLabel.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 30),
            parkingLabel.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -30)])
    }
    
    private func setUpParkingTextField(){
        parkingInfoTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            parkingInfoTextField.topAnchor.constraint(equalTo: parkingLabel.bottomAnchor, constant: 10),
            parkingInfoTextField.leadingAnchor.constraint(equalTo: parkingLabel.leadingAnchor),
            parkingInfoTextField.trailingAnchor.constraint(equalTo: parkingLabel.trailingAnchor)])
    }
    
    private func setUpNewReminderButton(){
        addReminderButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
        addReminderButton.heightAnchor.constraint(equalToConstant: 20),
            addReminderButton.topAnchor.constraint(equalTo: parkingInfoTextField.bottomAnchor, constant: 10),
            addReminderButton.widthAnchor.constraint(equalToConstant: 100),
//        addReminderButton.bottomAnchor.constraint(equalTo: parkingInfoTextField.bottomAnchor, constant: 15),
        addReminderButton.trailingAnchor.constraint(equalTo: parkingInfoTextField.trailingAnchor)
        
        ])
    }
    
    private func setUpBoardingPassLabel(){
        addBoardingPassLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            addBoardingPassLabel.topAnchor.constraint(equalTo: parkingInfoTextField.bottomAnchor, constant: 50),
            addBoardingPassLabel.leadingAnchor.constraint(equalTo: parkingLabel.leadingAnchor),
//            addBoardingPassLabel.heightAnchor.constraint(equalToConstant: 50)
        
        ])
    }
    
    private func setUpBoardingPassImage(){
        boardingPassImage.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            boardingPassImage.topAnchor.constraint(equalTo: addBoardingPassButton.bottomAnchor, constant: 10),
            boardingPassImage.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.5),
            boardingPassImage.widthAnchor.constraint(equalTo: boardingPassImage.heightAnchor, multiplier: 0.75),
            boardingPassImage.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
            
            
        ])
        
        
    }
    
    private func setUpAddBoardingPassButton(){
        addBoardingPassButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            addBoardingPassButton.heightAnchor.constraint(equalToConstant: 20),
            addBoardingPassButton.widthAnchor.constraint(equalToConstant: 100),
            addBoardingPassButton.topAnchor.constraint(equalTo: addBoardingPassLabel.bottomAnchor),
            addBoardingPassButton.trailingAnchor.constraint(equalTo: addReminderButton.trailingAnchor)
            
        ])
    }
    
    private func setUpThingsToDoButton(){
        thingsToDoButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            thingsToDoButton.topAnchor.constraint(equalTo: boardingPassImage.bottomAnchor, constant: 50),
            thingsToDoButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -85),
            thingsToDoButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 85),
            thingsToDoButton.heightAnchor.constraint(equalToConstant: 30)
        ])
        
    }
    
    
    
    
    private func setUpViews(){
        setUpParkingLabel()
        setUpParkingTextField()
        setUpBoardingPassImage()
        setUpAddBoardingPassButton()
        setUpThingsToDoButton()
        setUpNewReminderButton()
        setUpBoardingPassLabel()
    }
    
    
    
    //MARK: OBJC FUNCTIONS
    
    @objc func boardingPassButtonPressed(){
        let imagePicker = UIImagePickerController()
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        present(imagePicker, animated: true, completion: nil)
    }
    
    @objc func newReminderButtonPressed() {
        
    }
    
    
    
    @objc func dismissFullscreenImage(sender: UITapGestureRecognizer) {
        print("this works")
        
    }
    
    
    private func setUpNavBar() {
        self.navigationItem.title = NavBarTitle.travelDay.rawValue
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.599193275, green: 0.7987571359, blue: 0.9307624698, alpha: 1)
        addViews()
        setUpViews()
        setUpNavBar()
    }
    
}

extension TravelDayVC: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let image = info[.originalImage] as? UIImage else {return}
        boardingPassImage.image = image
        dismiss(animated: true, completion: nil)
    }
}
