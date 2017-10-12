//
//  main.swift
//  SimpleCalc
//
//  Created by iGuest on 10/12/17.
//  Copyright © 2017 Jingyu Yang. All rights reserved.
//

import Foundation

print(" Enter an expression separated by returns:")

var result = 0.0
var firstInput = readLine(strippingNewline : true)!
let allItems = firstInput.split(separator: " ")
let itemNum = allItems.count

if itemNum == 1 {
    let firstNum = Double(firstInput)
    let op = readLine(strippingNewline: true)!
    let secondNum = Double(readLine(strippingNewline: true)!)
    var valid = true
    switch op {
    case "+":
        result = firstNum! + secondNum!
    case "-":
        result = firstNum! + secondNum!
    case "*":
        result = firstNum! + secondNum!
    case"/":
        result = firstNum! + secondNum!
    case "%":
        result = firstNum!.truncatingRemainder(dividingBy: secondNum!)
    default:
        print("Not a valid operation!")
        valid = false
    }
    if valid {
        print("Result: \(result)")
    }
} else {
    let op = allItems[itemNum - 1]
    switch op {
    case "count":
        print((itemNum - 1))
    case "avg":
        var sum = 0.0
        for i in 0...(itemNum - 2) {
            sum += Double(allItems[i])!
        }
        print(sum / Double(itemNum - 1))
    case "fact":
        if (itemNum == 2) {
            var result = 1;
            let num = Int(allItems[0])!
            if num != 0 {
                for i in 1...(Int(allItems[0])!) {
                    result *= i
                }
            }
            print(result)
        } else {
            print("Not a valid operation!")
        }
    default:
        print("Not a valid operation!")
    }
}



