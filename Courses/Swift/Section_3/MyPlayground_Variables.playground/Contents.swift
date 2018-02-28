//: Playground - noun: a place where people can play

// Learning variables and variables types in Swift

import UIKit

// Difference between var and let

var strVar = "Hello, playground"
    strVar = "Hi, playground" // can be changed

let strLet = "Hi, playground" // cannot be changed

// Strings

let name = "Alexandre Henrique"

// Concatenate
print("Hi " + name)

// Integers

let myInt = 13
print(myInt * 100)

print("myInt has value \(myInt)")

let myAge = 27
//////////////////////////


print("My name is \(name) and my age is \(myAge)")
print("My name is " + name + " and my age is \(myAge)")


// Doubles and Floats

let a: Double = 13.13

let b: Float  = 3.13

let c = 1.13

let d = 13

print(a / c)

// print(a / b) cannot combine two different types, the same for above
print(a + Double(d))


// Boolean

let falseBoolean = false
print(String(falseBoolean))


// Arrays

var array = [13, 7, 2]

print(array[0])

print (array.count)

array.append(27)

array.remove(at: 2)

array.sort()

print(array)

let stringArray = [String]()

let mixedArray  = ["Alex", 27, true] as [Any]


// Dictionary

var myDictionary = ["Zelda" : "Best game ever created", "Monster Hunter" : "Now playing"]

print(myDictionary["Zelda"]!)
print(myDictionary.count)

myDictionary["Billie"] = "Jean"
print(myDictionary)

myDictionary.removeValue(forKey: "Billie")

print(myDictionary)




































