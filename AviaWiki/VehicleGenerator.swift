//
//  VehicleGenerator.swift
//  AviaWiki
//
//  Created by Андрей Сергиенко on 06.09.18.
//  Copyright © 2018 Андрей Сергиенко. All rights reserved.
//

import Foundation

struct VehicleGenerator {
    static func generateVehicle() -> [Vehicle] {
        var vehicle: [Vehicle] = []
        
        let plain = Vehicle(name: "Самолет", image: #imageLiteral(resourceName: "самолет"), amountModels: 3, models: ["Airbus A220", "Boeing 777", "Breguet 14"] )
        vehicle.append(plain)
        
        let helicopter = Vehicle(name: "Вертолет", image: #imageLiteral(resourceName: "вертолет"), amountModels: 2, models: ["AeroDreams Chi-7", "DF Helicopters DF334"])
        vehicle.append(helicopter)
        
        let deltaplan = Vehicle(name: "Дельтаплан", image: #imageLiteral(resourceName: "дельтаплан"), amountModels: 2, models: ["Aeros Combat L", "Stealth"])
        vehicle.append(deltaplan)
        
        return vehicle
    }
    var vehicle: [Vehicle] = []
    
}
