//
//  main.swift
//  DZ_5_AndreyPiskunov
//
//  Created by User on 01.05.2022.
//

import Foundation

//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
//
//2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
//
//3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
//
//4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
//
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//
//6. Вывести сами объекты в консоль.
 
enum Actions {
    case onEngine, offEngine
    case openWindow, closeWindow
    case upSpoiler, downSpoiler
    case onDischarge, offDischarge
}

var car1 = SportCar(brand: "Ferrary", year: 2021, trunkSize: 400, engine: false, window: false, spoiler: false)
car1.doAction(action: .onEngine)
car1.doAction(action: .upSpoiler)

var car2 = SportCar(brand: "Lotus", year: 2000, trunkSize: 230, engine: false, window: false, spoiler: true)
car2.doAction(action: .openWindow)
car2.doAction(action: .downSpoiler)

var trunk1 = TrunkCar(brand: "Kamaz", year: 2013, trunkSize: 400000, engine: false, window: true, dischargeCisten: false)
trunk1.doAction(action: .closeWindow)
trunk1.doAction(action: .onDischarge)

var trunk2 = TrunkCar(brand: "Mersedes Benz", year: 2019, trunkSize: 600000, engine: false, window: false, dischargeCisten: true)
trunk2.doAction(action: .onEngine)
trunk2.doAction(action: .offDischarge)

print(car1)
print(car2)
print(trunk1)
print(trunk2)

