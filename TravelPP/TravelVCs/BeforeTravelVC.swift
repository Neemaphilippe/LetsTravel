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
        let collectionView: UICollectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewLayout())
        collectionView.backgroundColor = #colorLiteral(red: 0.6374017596, green: 0.9277371764, blue: 1, alpha: 0.9121643926)
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

