//
//  TravelPersistenceHelper.swift
//  TravelPP
//
//  Created by Neema on 12/9/20.
//  Copyright © 2020 Neema Philippe. All rights reserved.
//

import Foundation

struct TravelPersistenceHelper {
    
    static let manager = TravelPersistenceHelper()
    
    func save(newEntry: TravelInfo) throws {
        try persistenceHelper.save(newObject: newEntry)
    }
    
    func getTravelDetails() throws -> [TravelInfo] {
        return try persistenceHelper.getObjects()
    }
    
    func updateDestination(newData: TravelInfo, index: Int) throws {
        do {
            try persistenceHelper.update(updatedObject: newData, indexToUpdate: index)
        }
    }
    
    public let persistenceHelper = PersistenceManager<TravelInfo>(fileName: "travel.plist")
    
    private init() {}
}
