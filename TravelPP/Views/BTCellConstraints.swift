//
//  BTCellConstraints.swift
//  TravelPP
//
//  Created by Neema on 10/21/20.
//  Copyright © 2020 Neema Philippe. All rights reserved.
//

import UIKit

extension BeforeTravelCell {
    
    func addViews(){
        self.addSubview(upcomingTripsLabel)
    }
    
    func setUpUpcomingTripsLabel(){
        upcomingTripsLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        upcomingTripsLabel.topAnchor.constraint(equalToSystemSpacingBelow: self.topAnchor, multiplier: 0.5),
            upcomingTripsLabel.leftAnchor.constraint(equalTo: self.leftAnchor),
            upcomingTripsLabel.rightAnchor.constraint(equalTo: self.rightAnchor),
            upcomingTripsLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.2)
            
        ])
    
        
    }
    
    
}
