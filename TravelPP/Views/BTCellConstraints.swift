//
//  BTCellConstraints.swift
//  TravelPP
//
//  Created by Neema on 10/21/20.
//  Copyright © 2020 Neema Philippe. All rights reserved.
//

import UIKit

extension BeforeTravelCell: UICollectionViewDelegateFlowLayout {
    
     func addSubviews(){
        self.addSubview(upcomingTripsLabel)
        self.addSubview(locationImageView)
        self.addSubview(countdownLabel)
        self.addSubview(addNewTripButton)
        
    }
    
     func setUpUpcomingTripsLabelConstraints(){
        upcomingTripsLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            upcomingTripsLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            upcomingTripsLabel.topAnchor.constraint(equalTo: self.topAnchor),

            upcomingTripsLabel.heightAnchor.constraint(equalToConstant: 50),
            upcomingTripsLabel.widthAnchor.constraint(equalTo: self.widthAnchor)
            
        ])
    
        
    }
    
     func setUpImageViewConstraints(){
        locationImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            locationImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            locationImageView.topAnchor.constraint(equalTo: upcomingTripsLabel.bottomAnchor),
            locationImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            locationImageView.widthAnchor.constraint(equalToConstant: self.frame.width / 2)
        
        
        ])
        
    }
    
    func setUpCountdownLabelConstraints(){
        countdownLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            countdownLabel.centerYAnchor.constraint(equalTo: self.locationImageView.centerYAnchor),
            countdownLabel.heightAnchor.constraint(equalToConstant: 50),
            countdownLabel.leadingAnchor.constraint(equalTo: self.locationImageView.trailingAnchor, constant: 5),
            countdownLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5)
        ])
    }


    
    
}
