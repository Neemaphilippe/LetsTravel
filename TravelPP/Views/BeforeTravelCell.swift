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
        label.font = UIFont(name: "Times New Roman", size: 40)
        label.textAlignment = .left
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        label.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        label.backgroundColor = #colorLiteral(red: 0.7067151666, green: 0.8777987361, blue: 1, alpha: 1)
        return label
        
    }()
    
    lazy var locationImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    lazy var countdownLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Times New Roman", size: 50)
        label.textAlignment = .left
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        label.textColor = .black
        label.backgroundColor = #colorLiteral(red: 0.599193275, green: 0.7987571359, blue: 0.9307624698, alpha: 1)
        return label
        
    }()
    // MARK: - Initializers
       override init(frame: CGRect) {
           super.init(frame: frame)
        addSubviews()
        setUpUpcomingTripsLabelConstraints()
        setUpImageViewConstraints()
        setUpCountdownLabelConstraints()
        self.backgroundColor = .clear
       }
    

       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }

    
    
    
}
