//
//  main.swift
//  Hero Fight
//
//  Created by Alexandre Henrique Silva on 21/08/18.
//  Copyright © 2018 Alexhenri. All rights reserved.
//

import Foundation
import UIKit

struct Hero {
    let name:   String
    let life:   Int
    let power:  Int
}

func getInputEntry() {
    
    print("Entre a primeira personagem:")
    var firstHeroString = Array(readLine(strippingNewline: true)!.characters)
    print("Entre a segunda personagem:")
    var secondHeroString = Array(readLine(strippingNewline: true)!.characters)
    
}
//errorMsg("Hero input does not match with the 'name life power' format.")

func heroStringFormat( heroString: String) -> Hero? {
    
    guard let heroNsString = NSString(string: heroString) else {
        return nil
    }

    let heroComponents = 
    guard let hero = Hero(her
    
    
}
var tempDelArr = [Character]()
var tempIndexArr = [Int]()

func printMinimumCount(_ str1: inout [Character], _ str2: inout  [Character])
{
    for i in 0..<str1.count {
        
        if str2.contains(str1[i])
        {
            tempIndexArr.append(str2.index(of: str1[i])!)
            str2.remove(at: str2.index(of: str1[i])!)
        }
        else
        {
            tempDelArr.append(str1[i])
        }
    }
    
    // result
    print(tempDelArr.count + str2.count)
    
}

if str1.count <= str2.count {
    printMinimumCount(&str1, &str2)
}
else {
    printMinimumCount(&str2, &str1)
}
