//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var number = 5

print(number % 3)

func isItPrime(number: Int) -> Bool {
    var i = number - 1
    while i > 1 {
        if number % i == 0 {
            return false
        }
        i = i - 1
    }
    return true
}

print(isItPrime(number: 11))

