//
//  SportCar.swift
//  DZ_5_AndreyPiskunov
//
//  Created by User on 01.05.2022.

import Foundation

class SportCar: Car {
    var brand : String
    var year : Int
    var trunkSize : Double
    var window : Bool
    var engine: Bool
    
    var spoiler: Bool
    
    init(brand: String, year: Int, trunkSize: Double, engine: Bool, window: Bool, spoiler: Bool) {
        self.brand = brand
        self.year = year
        self.trunkSize = trunkSize
        self.engine = engine
        self.window = window
        self.spoiler = spoiler
    }
    
    func doAction (action: Actions){
        switch action {
        case .upSpoiler:
            upSpoiler()
        case .downSpoiler:
            downSpoiler()
        default:
            possibleActions(action: action)
        }
            
    }
        private func upSpoiler() {
            self.spoiler = true
        }
        private func downSpoiler() {
            self.spoiler = false
        }
    
}
extension SportCar: CustomStringConvertible {
    var description: String {
        return "Information about sport car: brand: \(brand), year: \(year), trunkSize: \(trunkSize), engine is \(engine), window: \(window), spoiler status: \(spoiler)."
    }
}

