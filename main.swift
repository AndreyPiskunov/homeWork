//  main.swift
//  DZ_7_AndreyPiskunov
//  Created by User on 14.05.2022.

import Foundation

//1. Придумать класс, методы которого могут завершаться неудачей и возвращать либо значение, либо ошибку Error?. Реализовать их вызов и обработать результат метода при помощи конструкции if let, или guard let.
//2. Придумать класс, методы которого могут выбрасывать ошибки. Реализуйте несколько throws-функций. Вызовите их и обработайте результат вызова при помощи конструкции try/catch.

enum AirTicketOfficeError: Error {
    case notNeedMoney (moneyNeed:Int)
    case outOfStock
    case nonExistentDirection
}

struct Item {
    var price: Int
    var count: Int
    let destination: Ticket
}

struct Ticket {
    let name:String
}

class AirTicketOffice {
    var tickets = [
        "Moscow": Item(price: 10000, count: 3, destination: Ticket(name: "Moscow")),
        "Barcelona": Item(price: 20000, count: 1, destination: Ticket(name: "Barcelona")),
        "Madrid": Item(price: 25000, count: 0, destination: Ticket(name: "Madrid"))
    ]

var moneyDeposited = 50000

    func sell(itemNamed name: String) -> (Ticket?, AirTicketOfficeError?) {

        guard let item = tickets[name] else {
            return (nil, AirTicketOfficeError.nonExistentDirection)
        }
        guard tickets.count > 0 else {
            return (nil, AirTicketOfficeError.outOfStock)
        }
        guard item.price <= moneyDeposited else {
            return (nil, AirTicketOfficeError.notNeedMoney(moneyNeed: item.price - moneyDeposited))
        }
        moneyDeposited -= item.price
        var newItem = item
        newItem.count -= 1
        tickets[name] = newItem
        return (newItem.destination, nil)
    }
}

let airTicketOffice = AirTicketOffice()

let sell1 = airTicketOffice.sell(itemNamed: "Moscow")
let sell2 = airTicketOffice.sell(itemNamed: "Barcelona")
let sell3 = airTicketOffice.sell(itemNamed: "Madrid")

if let ticket = sell1.0 {
    print("Buy ticket \(ticket.name)")
} else if let error = sell1.1 {
    print("Error buy ticket: \(error.localizedDescription)")
}

if let ticket = sell2.0 {
    print("Buy ticket \(ticket.name)")
} else if let error = sell2.1 {
    print("Error buy ticket: \(error.localizedDescription)")
}


class AirTicketOffice2 {
    var tickets = [
        "Moscow": Item(price: 10000, count: 3, destination: Ticket(name: "Moscow")),
        "Barcelona": Item(price: 20000, count: 1, destination: Ticket(name: "Barcelona")),
        "Madrid": Item(price: 25000, count: 0, destination: Ticket(name: "Madrid"))
    ]

var moneyDeposited = 10000

    func sell(itemNamed name: String) throws -> Ticket {

        guard let item = tickets[name] else {
            throw AirTicketOfficeError.nonExistentDirection
        }
        guard tickets.count > 0 else {
            throw AirTicketOfficeError.outOfStock
        }
        guard item.price <= moneyDeposited else {
            throw AirTicketOfficeError.notNeedMoney(moneyNeed: item.price - moneyDeposited)
        }

        moneyDeposited -= item.price
        var newItem = item
        newItem.count -= 1
        tickets[name] = newItem
        return (newItem.destination)
    }
}

let airTicketOffice2 = AirTicketOffice2()

do {
    let sell1 = try airTicketOffice2.sell(itemNamed: "Moscow")

} catch AirTicketOfficeError.nonExistentDirection {
    print("The ticket doesn't exist.")
} catch AirTicketOfficeError.outOfStock {
    print("The ticket out of stock.")
} catch AirTicketOfficeError.notNeedMoney(let moneyNeed){
    print("There is not need money.Money need \(moneyNeed).")
} catch let error {
    print(error.localizedDescription)
}
