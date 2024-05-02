//
//  main.swift
//  Step3-Print_Pepero
//
//  Created by 이재영 on 2024/05/01.
//

import Foundation

func formPartOfChocolate(bodyOfPepero: String, topping: String) -> String {
    return topping + bodyOfPepero + String(topping.reversed())
}

func printPartOfChocolate(length: Int, form: String) {
    for _ in 1...length {
        print(form)
    }
}

func printPartOfStick(lengthOfStick: Int, topping: String, bodyOfPepero: String) {
    let formOfStick: String =  String(repeating: " ", count: topping.count) + "|" + String(repeating: " ", count: bodyOfPepero.count > 2 ? bodyOfPepero.count-2 : 0 ) + "|" + String(repeating: " ", count: topping.count)
   
    for _ in 1...lengthOfStick {
        print(formOfStick)
    }
}

func printPepero(길이 length: Int, 막대길이 lengthOfStick: Int, 몸통 bodyOfPepero: String = "***", 토핑 topping: String = " ") {
    print("<정보>", "길이: \(length)", "몸통: \(bodyOfPepero)", "토핑: \(topping)", "막대길이: \(lengthOfStick)", "" , separator: "\n")
    
    let form = formPartOfChocolate(bodyOfPepero: bodyOfPepero, topping: topping)
    
    printPartOfChocolate(length: length, form: form)
    
    printPartOfStick(lengthOfStick: lengthOfStick, topping: topping, bodyOfPepero: bodyOfPepero)
}

printPepero(길이: 12, 막대길이: 4, 몸통: "***", 토핑: "&")
