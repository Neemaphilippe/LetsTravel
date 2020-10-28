//
//  BeforeTravelVC.swift
//  TravelPP
//
//  Created by Neema on 10/20/20.
//  Copyright © 2020 Neema Philippe. All rights reserved.
//

import UIKit

class BeforeTravelVC: UIViewController {
    
    lazy var beforeTravelCV: UICollectionView = {
        let collectionView: UICollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.register(BeforeTravelCell.self, forCellWithReuseIdentifier: "beforeTravelCell")
        collectionView.backgroundColor = #colorLiteral(red: 0.599193275, green: 0.7987571359, blue: 0.9307624698, alpha: 1)
        collectionView.delegate = self
        collectionView.dataSource = self
        return collectionView
    }()
    
    
    
    
    override func viewDidLoad(){
        addViews()
        setUpBeforeTravelCV()
        view.backgroundColor = .white
        
        
        
    }
    
    
    private func addViews(){
        view.addSubview(beforeTravelCV)
    }
   
    
}

extension BeforeTravelVC: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = beforeTravelCV.dequeueReusableCell(withReuseIdentifier: "beforeTravelCell", for: indexPath) as! BeforeTravelCell
        cell.upcomingTripsLabel.text = "Upcoming Trips:"
        return cell 

    }
    
    
}
