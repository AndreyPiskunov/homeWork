//
//  main.swift
//  6
//
//  Created by User on 05.05.2022.
//
import Foundation

//1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
//
//2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)

struct People {
    var name: String
    var year: Int
}

extension People: CustomStringConvertible {
    var description : String {
        return "Name: \(name), year: \(year)"
    }
}

struct Queue <T> {
    
   private var elements:[T] = []
     
    public mutating func enqueue(_ value: T) {
                 elements.append(value)
    }
        public mutating func decueue() -> T? {
                guard !elements.isEmpty else {
                    return nil
                    }
                        return elements.removeFirst()
                        }

                        var head: T? {
                            return elements.first
                            }
    
                            var tail: T? {
                    return elements.last
                    }
        }

extension Queue {
    func filter(array: [T], predicate: (T) -> Bool ) -> [T] {
        var newArray = [T]()
            for element in array {
                if predicate(element) {
                    newArray.append(element)
                }
        
    }
        return newArray

    }
}

var info = Queue <People>()


 info.enqueue (_: .init(name: "Andrey", year: 1991))
 info.enqueue (_: .init(name: "Irina", year: 1994))
 info.enqueue (_: .init(name: "Darya", year: 2000))
 info.enqueue (_: .init(name: "Sasha", year: 2014))

var serving = info.decueue()

print(info)
   
let peopleFiltr = info.filter (array: [], predicate: {$0.name == "Irina"})
print(peopleFiltr)
