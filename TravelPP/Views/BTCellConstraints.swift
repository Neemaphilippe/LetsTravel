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
    }
    
    func setUpUpcomingTripsLabel(){
        upcomingTripsLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            upcomingTripsLabel.leftAnchor.constraint(equalTo: self.leftAnchor),
            upcomingTripsLabel.rightAnchor.constraint(equalTo: self.rightAnchor),
            upcomingTripsLabel.heightAnchor.constraint(equalToConstant: 50)
            
        ])
    
        
    }
//     func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: UIScreen.main.bounds.size.width, height: 200)
//    }
    
    
}
