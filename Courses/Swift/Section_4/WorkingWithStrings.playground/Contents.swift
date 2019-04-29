//: Playground - noun: a place where people can play

import UIKit

var str = "Hello"

var myStr = str + " Alexandre!"

let newTypeStr = NSString(string: myStr)

newTypeStr.substring(to: 5)

newTypeStr.substring(from: 5)

//challenge: get onyly your name

NSString(string: newTypeStr.substring(from: 6)).substring(to: 9)

newTypeStr.substring(with: NSRange(location: 6, length: 9))

if newTypeStr.contains("Alexandre") {
    print("Works")
}

newTypeStr.components(separatedBy: " ")


//myStr.substring(to: 5)

