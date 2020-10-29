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
//     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: UIScreen.main.bounds.size.width, height: 200)
//    }
    
    
}
