//
//  main.swift
//  DZ_3_AndreyPiskunov
//
//  Created by User on 23.04.2022.
//
import Foundation
/*1. Описать несколько структур – любой легковой автомобиль SportCar и любой грузовик TrunkCar.

2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.

3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.

4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.

5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.

6. Вывести значения свойств экземпляров в консоль.*/

enum EngineStatus {
    case on, off
}

enum WindowState {
    case open, close
}

struct SportCar {
    let brand : String
    let year : Int
    var trunkSize : Double
    var engine: EngineStatus
    
        mutating func engineStatus () {
        switch engine {
            case.on:
            print("Engine start")
            case.off:
            print("Engine stop")
        }
    }
    var window : WindowState
    
        mutating func windowState () {
        switch window {
            case.open:
            print("Window open")
            case.close:
            print("Window close")
        }
    }
    var trunkVolumeOccup : Int = 0
        var loadingTrunk: Int { // Loading into the trunk
        get {
            return trunkVolumeOccup
        } set {
            trunkVolumeOccup = trunkVolumeOccup + newValue
            trunkVolumeOccup = newValue
        }
    }
        var unloadingTrunk: Int { // Unloading from the trunk
        get {
        return trunkVolumeOccup
        } set {
            trunkVolumeOccup = trunkVolumeOccup - newValue
        }
    }
}
struct TrunkCar {
    let brand : String
    let year : Int
    let trunkSize : Double
    var engine : EngineStatus
    
    mutating func engineStatus() {
        switch engine {
        case.on:
            print("Engine on")
        case.off:
            print("Engine off")
        }
    }
    var window : WindowState
    var trunkVolumeOccup : Int = 0
    
        var loadingTrunk: Int { // Loading into the trunk
    get {
        return trunkVolumeOccup
    } set {
        trunkVolumeOccup = trunkVolumeOccup + newValue
        trunkVolumeOccup = newValue
    }
}
    var unloadingTrunk: Int { // Unloading into the trunk
    get {
        return trunkVolumeOccup
    } set {
        trunkVolumeOccup = trunkVolumeOccup - newValue
    }
}
}

var car1 = SportCar (brand: "Ferrary", year: 1990, trunkSize:400, engine: .off, window: .close, trunkVolumeOccup: 0)
var car2 = SportCar (brand: "Lotus", year: 2000, trunkSize: 230, engine: .on, window: .open, trunkVolumeOccup: 0)

var trank1 = TrunkCar (brand: "Kamaz", year: 2013, trunkSize: 560000, engine: .on, window: .close, trunkVolumeOccup: 0)
var trank2 = TrunkCar (brand: "Ural", year: 2002, trunkSize: 456000, engine: .off, window: .open, trunkVolumeOccup: 0)

car1.loadingTrunk = 200
car1.unloadingTrunk = 60
car1.window = .open
car2.engine = .off

trank1.engine = .off
trank1.loadingTrunk = 160000
trank1.unloadingTrunk = 8000
trank2.window = .open

print ("Information about Car 1: brand: \(car1.brand), year: \(car1.year), trunkSize: \(car1.trunkSize), engine is \(car1.engine), window: \(car1.window), occupied trunk volume: \(car1.trunkVolumeOccup).")

print ("Information about Car 2: brand: \(car2.brand), year: \(car2.year), trunkSize: \(car2.trunkSize), engine is \(car2.engine), window: \(car1.window), occupied trunk volume: \(car2.trunkVolumeOccup).")

print ("Information about Trank 1: brand: \(trank1.brand), year: \(trank1.year), trunkSize: \(trank1.trunkSize), engine is \(trank1.engine), window: \(trank1.window), occupied trunk volume: \(trank1.trunkVolumeOccup).")

print ("Information about Trank 2: brand: \(trank2.brand), year: \(trank2.year), trunkSize: \(trank2.trunkSize), engine is \(trank2.engine), window: \(trank2.window), occupied trunk volume: \(trank2.trunkVolumeOccup).")
