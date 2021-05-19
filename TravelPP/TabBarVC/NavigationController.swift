//
//  NavigationController.swift
//  TravelPP
//
//  Created by Neema on 10/28/20.
//  Copyright © 2020 Neema Philippe. All rights reserved.
//

import UIKit

class NavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpNavBar()

        
    }
    

    private func setUpNavBar(){
        navigationBar.tintColor = .lightGray
        navigationBar.barTintColor = #colorLiteral(red: 0.599193275, green: 0.7987571359, blue: 0.9307624698, alpha: 1)
        let textAttributes = [
            NSAttributedString.Key.foregroundColor : UIColor.white,
            NSAttributedString.Key.font : UIFont(name: "Times New Roman", size: 15)!] as [NSAttributedString.Key : Any]
        navigationBar.titleTextAttributes = textAttributes
    }

}
