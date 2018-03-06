//: Playground - noun: a place where people can play

import UIKit

let age = 18

if age >= 18 {
    
    print (true)
    
} else {
    
    print (false)
    
}

// check username

let username = "Alexhenri"

if username == "Alexhenri" {
    print("Username correct")
} else {
    print("Username incorrect")
}

if username == "Alexhenri" && age >= 18 {
    print("You can play, username and age ok!")
} else if age >= 18 {
    print("Sorry \(username), you need more age to play")
} else {
    print("Username incorrect")
}

let numberOfFingers = arc4random_uniform(6)

