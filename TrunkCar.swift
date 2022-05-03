//
//  TrunkCar.swift
//  DZ_5_AndreyPiskunov
//
//  Created by User on 01.05.2022.

import Foundation

class TrunkCar: Car {
    var brand : String
    var year : Int
    var trunkSize : Double
    var window : Bool
    var engine: Bool
    
    var dischargeCistern: Bool
    
    init (brand: String, year: Int, trunkSize: Double, engine: Bool, window: Bool, dischargeCisten: Bool){
        self.brand = brand
        self.year = year
        self.trunkSize = trunkSize
        self.engine = engine
        self.window = window
        self.dischargeCistern = dischargeCisten
    }
    
    func doAction (action: Actions){
        switch action {
        case .onDischarge:
            onDischarge()
        case .offDischarge:
            offDischarge()
        default:
            possibleActions(action: action)
        }
    }
        private func onDischarge(){
            self.dischargeCistern = true
        }
        private func offDischarge(){
            self.dischargeCistern = false
        }
}

extension TrunkCar: CustomStringConvertible {
    var description: String {
    return "Information about cistern trunk: brand: \(brand), year: \(year), trunkSize: \(trunkSize), engine is \(engine), window: \(window), discharge cistern status: \(dischargeCistern)."
    }
}

