//
//  BeforeTravelConstraints.swift
//  TravelPP
//
//  Created by Neema on 10/20/20.
//  Copyright © 2020 Neema Philippe. All rights reserved.
//

import UIKit

extension BeforeTravelVC {
    
    public func setUpBeforeTravelCV(){
        beforeTravelCV.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            beforeTravelCV.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            beforeTravelCV.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            beforeTravelCV.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            beforeTravelCV.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        
        ])
    }
    
}

