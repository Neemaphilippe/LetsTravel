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
    "locationName": "New York",
"departureDate": "12/20/20",
"currentDate": "12/03/20"
  }, {
 "locationName": "Colorado",
"departureDate": "01/20/21",
"currentDate": "12/03/20"
}, {
 "locationName": "Paris",
"departureDate": "06/08/21",
"currentDate": "12/03/10"
}, {
 "locationName": "Tokyo",
"departureDate": "10/20/21",
"currentDate": "12/03/20"
}
]
""".data(using: .utf8)!


struct TravelInfo: Codable {
    let locationName: String
    let departureDate: String
    let currentDate: String
    
    
}

