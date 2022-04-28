//
//  main.swift
//  DZ_L4_AndreyPiskunov
//
//  Created by User on 27.04.2022.
//
import Foundation

//1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
//
//2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
//
//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.
//
//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
//
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//
//6. Вывести значения свойств экземпляров в консоль.

enum EngineStatus {
    case on, off
}

enum WindowState {
    case open, close
}
enum TransmissionSportMode {
    case basic, medium, hard
}

enum SpoilerStatus {
    case up, down
}

enum PositionDumpTruck {
    case loading, unloading
}

enum RoadModeStatus {
    case withTrailer, offRoad, standart
}

class Car {
    let brand : String
    let year : Int
    var trunkSize : Double
    var engine: EngineStatus
    var window : WindowState
    var trunkVolumeOccup : Int
    init (brand: String, year: Int, trunkSize:Double, engine: EngineStatus, window: WindowState, trunkVolumeOccup: Int) {
        self.brand = brand
        self.year = year
        self.trunkSize = trunkSize
        self.engine = engine
        self.window = window
        self.trunkVolumeOccup = trunkVolumeOccup
    
    }
        func carSharing () { // Booking carshering
    }
}

class SportCar: Car {
    var sportTransmissionMode: TransmissionSportMode
    var spoiler: SpoilerStatus
    var speed:Int = 0
    
    init (brand: String, year: Int, trunkSize: Double, engine: EngineStatus, window: WindowState, trunkVolumeOccup: Int, sportTransmissionMode: TransmissionSportMode, spoiler: SpoilerStatus) {
        self.sportTransmissionMode = sportTransmissionMode
        self.spoiler = spoiler
        super.init (brand: brand, year: year, trunkSize: trunkSize, engine: engine, window:.close, trunkVolumeOccup: trunkVolumeOccup)
    }
    func reachedSpeed (speed: Int) {
        print("Sport car reached speed \(speed) km/h.")
    }
    override func carSharing () {
        print("You booked a sport car \(brand).")
    }

        func basicSportTransmission () {
           sportTransmissionMode = .basic
        }
    
        func spoilerUp() {
            spoiler = .up
        }
    
        func spoilerDown() {
            spoiler = .down
        }
}
class TrunkCar: Car {
    var dumpTruck: PositionDumpTruck
    var roadMoad: RoadModeStatus
    var brick: Int = 0
    init(brand: String, year: Int, trunkSize: Double, engine: EngineStatus, window: WindowState, trunkVolumeOccup: Int, dumpTruck: PositionDumpTruck, roadMoad: RoadModeStatus) {
        self.dumpTruck = dumpTruck
        self.roadMoad = roadMoad
        super.init(brand: brand, year: year, trunkSize: trunkSize, engine: engine, window: window, trunkVolumeOccup: trunkVolumeOccup)
    }
    func deliveredBricks(brick: Int){
        print ("TrunkCar delivered \(brick) pieces.")
    }
    
    override func carSharing() {
        print ("You booked a trunk car \(brand).")
    }
        func dumpTruckLoading () {
            dumpTruck = .loading
        }
        func dumpTruckUnloading () {
            dumpTruck = .unloading
        }
        func roadMoadWithTrailer () {
            roadMoad = .withTrailer
        }
        func windowClose (){
            window = .close
        }
}
var car1 = SportCar(brand:"Ferrary", year: 2021, trunkSize: 400, engine: .off, window: .close, trunkVolumeOccup: 0, sportTransmissionMode:.hard, spoiler: .down)
var car2 = SportCar(brand: "Lotus", year: 2000 , trunkSize: 230, engine: .off, window: .close, trunkVolumeOccup: 0, sportTransmissionMode: .medium, spoiler: .up)

var trunk1 = TrunkCar (brand: "Kamaz", year: 2013, trunkSize: 560000, engine: .on, window: .open, trunkVolumeOccup: 0, dumpTruck: .loading, roadMoad: .standart)
var trunk2 = TrunkCar (brand: "Ural", year: 2002, trunkSize: 456000, engine: .on, window: .close, trunkVolumeOccup: 0, dumpTruck: .unloading, roadMoad: .offRoad)

car1.basicSportTransmission()
car1.engine = .on
car1.window = .open
car1.reachedSpeed(speed: 300)
car1.carSharing()


trunk1.roadMoadWithTrailer()
trunk2.dumpTruckLoading()
trunk1.windowClose()
trunk2.deliveredBricks(brick: 1000)
trunk2.carSharing()


print ("Information about Car 1: brand: \(car1.brand), year: \(car1.year), trunkSize: \(car1.trunkSize), engine is \(car1.engine), window: \(car1.window), occupied trunk volume: \(car1.trunkVolumeOccup), transmission mode: \(car1.sportTransmissionMode), spoiler status: \(car1.spoiler).")
print ("Information about Car 2: brand: \(car2.brand), year: \(car2.year), trunkSize: \(car2.trunkSize), engine is \(car2.engine), window: \(car1.window), occupied trunk volume: \(car2.trunkVolumeOccup),transmission mode: \(car1.sportTransmissionMode), spoiler status: \(car1.spoiler).")
print ("Information about Trunk 1: brand: \(trunk1.brand), year: \(trunk1.year), trunkSize: \(trunk1.trunkSize), engine is \(trunk1.engine), window: \(trunk1.window), occupied trunk volume: \(trunk1.trunkVolumeOccup), dumpTruck status: \(trunk1.dumpTruck), roadMoad: \(trunk1.roadMoad).")

print ("Information about Trank 2: brand: \(trunk2.brand), year: \(trunk2.year), trunkSize: \(trunk2.trunkSize), engine is \(trunk2.engine), window: \(trunk2.window), occupied trunk volume: \(trunk2.trunkVolumeOccup), dumpTruck status: \(trunk2.dumpTruck), roadMoad: \(trunk2.roadMoad).")








//SportCar (brand: "Ferrary", year: 1990, trunkSize:400, engine: .off, window: .close, trunkVolumeOccup: 0)
//var trank1 = TrunkCar (brand: "Kamaz", year: 2013, trunkSize: 560000, engine: .on, window: .close, trunkVolumeOccup: 0)
//var car2 = SportCar (brand: "Lotus", year: 2000, trunkSize: 230, engine: .on, window: .open, trunkVolumeOccup: 0)
//var trank2 = TrunkCar (brand: "Ural", year: 2002, trunkSize: 456000, engine: .off, window: .open, trunkVolumeOccup: 0)
//print ("Information about Car 1: brand: \(car1.brand), year: \(car1.year), trunkSize: \(car1.trunkSize), engine is \(car1.engine), window: \(car1.window), occupied trunk volume: \(car1.trunkVolumeOccup).")
