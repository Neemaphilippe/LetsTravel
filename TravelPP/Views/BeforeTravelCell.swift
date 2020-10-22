//
//  BeforeTravelCell.swift
//  TravelPP
//
//  Created by Neema on 10/20/20.
//  Copyright © 2020 Neema Philippe. All rights reserved.
//

import UIKit

class BeforeTravelCell: UICollectionViewCell {
    
    //MARK: UI Objects
    
    lazy var upcomingTripsLabel: UILabel = {
        let label = UILabel()
        label.text = "Upcoming Trips:"
        label.font = UIFont(name: "Times New Roman-Bold", size: 15)
        label.textColor = .black
        label.textAlignment = .left
        return label 
        
    }()
    
    // MARK: - Initializers
       override init(frame: CGRect) {
           super.init(frame: frame)
        addViews()
        setUpUpcomingTripsLabel()
           
       }
       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }

    
    
    
}
