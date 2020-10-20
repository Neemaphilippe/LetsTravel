//
//  BeforeTravelVC.swift
//  TravelPP
//
//  Created by Neema on 10/20/20.
//  Copyright © 2020 Neema Philippe. All rights reserved.
//

import UIKit

class BeforeTravelVC: UIViewController {
    
    //MARK: UI OBJECTS
    
    lazy var upcomingTripsLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Upcoming Trips:"
        label.font = UIFont(name: "Times New Roman", size: 18)
        label.textColor = .black
        label.backgroundColor = .clear
        return label
    }()
    
    
    override func viewDidLoad(){
        addViews()
        
        
    }
    
    private func addViews(){
        view.addSubview(upcomingTripsLabel)
    }
}
