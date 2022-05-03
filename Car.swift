//
//  Car.swift
//  DZ_5_AndreyPiskunov
//
//  Created by User on 01.05.2022.

import Foundation

protocol Car : AnyObject {
    var brand : String { get }
    var year : Int { get }
    var trunkSize : Double { get }
    var window : Bool { get set }
    var engine: Bool { get set }
    
    func doAction (action: Actions)
}

extension Car {
       func possibleActions(action: Actions) {
            switch action {
            case.closeWindow:
                closeWindow()
            case.openWindow:
                openWindow()
            case.onEngine:
                onEngine()
            case.offEngine:
                offEngine()
            default:
                print("No action")
                }
            }
        private func closeWindow(){
            self.window = false
        }
        private func openWindow(){
            self.window = true
        }
        private func onEngine(){
            self.engine = true
        }
        private func offEngine(){
            self.engine = false
        }
}
