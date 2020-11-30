//
//  TravelInfoModel.swift
//  TravelPP
//
//  Created by Neema on 10/29/20.
//  Copyright © 2020 Neema Philippe. All rights reserved.
//

import Foundation

let traveljson = """
[
  {
    "location": "New York",
"departureDate": "10/20/10",
"currentDate": "10/21/10"
  },  {

}
]
""".data(using: .utf8)!


struct TravelInfo: Decodable {
 let location: String
 let departureDate: String
 let currentDate: String
    
   
}

