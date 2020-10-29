//
//  TabVC.swift
//  TravelPP
//
//  Created by Neema on 10/28/20.
//  Copyright © 2020 Neema Philippe. All rights reserved.
//

import UIKit

class TabVC: UITabBarController {
    
    // MARK: UI Objects
    
    let beforeTravelVC = NavigationController(rootViewController: BeforeTravelVC())
    
    let travelDayVC = NavigationController(rootViewController: TravelDayVC())
    
    let postTravelVC = NavigationController(rootViewController: PostTravelVC())
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabBarController()
        setTabBarStyle()

      
    }
    

   private func setUpTabBarController() {
    beforeTravelVC.tabBarItem = UITabBarItem(title: "Before", image: UIImage(systemName: "calendar.circle"), tag: 0)
    travelDayVC.tabBarItem = UITabBarItem(title: "Travel", image: UIImage(systemName: "airplane"), tag: 1)
    postTravelVC.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house.fill"), tag: 2)
    self.viewControllers = [beforeTravelVC, travelDayVC, postTravelVC]
   }

    private func setTabBarStyle(){
        tabBar.barTintColor = #colorLiteral(red: 0.599193275, green: 0.7987571359, blue: 0.9307624698, alpha: 1)
        tabBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        tabBar.unselectedItemTintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
}
