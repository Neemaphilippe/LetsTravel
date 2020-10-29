//
//  BeforeTravelVC.swift
//  TravelPP
//
//  Created by Neema on 10/20/20.
//  Copyright © 2020 Neema Philippe. All rights reserved.
//

import UIKit

class BeforeTravelVC: UIViewController {
    
    let cellReuseIdentifier = "beforeTravelCell"
    
    var locations = ["Tokyo", "Paris", "New York", "Colorado"]
    
    lazy var beforeTravelCV: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.itemSize = .init(width: self.view.frame.width, height: 250)
        layout.scrollDirection = .vertical 
        let collectionView: UICollectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(BeforeTravelCell.self, forCellWithReuseIdentifier: cellReuseIdentifier)
        collectionView.backgroundColor = #colorLiteral(red: 0.599193275, green: 0.7987571359, blue: 0.9307624698, alpha: 1)
        collectionView.delegate = self
        collectionView.dataSource = self
        return collectionView
    }()
    
    
    
    
    override func viewDidLoad(){
        addViews()
        setUpBeforeTravelCV()
        setTitle()
        view.backgroundColor = .white
        
        
        
    }
    
    
    private func addViews(){
        view.addSubview(beforeTravelCV)
    }
   
    private func setTitle() {
        self.navigationItem.title = NavBarTitle.before.rawValue
    }
}

extension BeforeTravelVC: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return locations.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = beforeTravelCV.dequeueReusableCell(withReuseIdentifier: cellReuseIdentifier, for: indexPath) as? BeforeTravelCell else {return UICollectionViewCell()}
        let singleLocation = locations[indexPath.row]
        cell.upcomingTripsLabel.text = "Upcoming Trip: " + singleLocation
        cell.locationImageView.image = UIImage(named: singleLocation)
        return cell

    }
    
    
}
