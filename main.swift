//
//  main.swift
//  DZ_L2_AndreyPiskunov
//
//  Created by User on 22.04.2022.
//

import Foundation


// 1. Написать функцию, которая определяет, четное число или нет.

let number = 11

if number % 2 == 0 {
    print ("Even number")
} else {
    print ("No even number")
}

// ВАРИАНТ 2

func number (value: Int) {
    let x1 = value
    let x2 = x1 % 2
    _ = x2 == 0 ? print("Even number") : print("No even number")
}
number(value: 10)

// 2. Написать функцию, которая определяет, делится ли число без остатка на 3.

let number1:Float = 11
let number2:Float = 3

if number1.truncatingRemainder(dividingBy:number2) == 0 {
    print("Number divisible on 3")
} else {
    print("Number no divisible on 3")
}

// ВАРИАНТ 2

func number3 (value: Int){
    let a = value
    let b = a % 3
    _ = b == 0 ? print ("Number divisible on 3"): print ("Number no divisible on 3")
}
number3 (value: 12)

// 3. Создать возрастающий массив из 100 чисел.

var digitsArray: [Int] = []
var i = 0

while i < 100 {
    digitsArray.append(i + 1)
    i += 1
}
print(digitsArray)

// 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

for element in digitsArray where (element % 2 == 0)||(element % 3 != 0){
    digitsArray.remove (at: digitsArray.firstIndex(of: element) ?? 0)
}
print(digitsArray)
