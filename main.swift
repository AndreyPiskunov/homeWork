//
//  main.swift
//  L1_Andrey_Piskunov
//
//  Created by User on 14.04.2022.
//

import Foundation

/* Решить квадратное уравнение: a*pow(x,2)+(a*b)+c=0 где,
 подставил произвольные числа
  а = 4
  b = 5
  c = 1
*/

let a:Float = 4
let b:Float = 5
let c:Float = 1

var x:Float? = nil
var x1:Float? = nil
var x2:Float? = nil

let diskrim = pow(b, 2)-4*a*c //Формула вычисления дискриминанта

if (diskrim < 0) { // Если дискриминант меньше нуля
    print ("no roots") // Нет корней
    
} else if (diskrim == 0) { // Если дискриминант равен нулю
    x = -b/2*a
    print(x ?? 0)
    
} else if (diskrim > 0){ // Если дискриминант больше нуля
    x1 = (-b + sqrt(diskrim))/2*a // Вычисляем x1
    x2 = (-b - sqrt(diskrim))/2*a // Вычисляем x2
}
print("X1 =",x1 ?? 0)
print("X2 =",x2 ?? 0)

/* Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника, где
катет АС = 4;  катет ВС = 5
 */

let cathetAC:Float = 4
let cathetCB:Float = 5

let squareCathetAC = pow(cathetAC, 2)
let squareCathetCB = pow(cathetCB, 2)
let sumCathet = squareCathetAC + squareCathetCB

let hypot = sqrt(sumCathet) // ГИПОТЕНУЗА
print("Hptn triangle =",hypot)

let perimet = cathetAC + cathetCB + hypot // ПЕРИМЕТР
print("P triangle =",perimet)

let area = (cathetAC*cathetCB)/2 // ПЛОЩАДЬ
print ("S triangle =",area)




