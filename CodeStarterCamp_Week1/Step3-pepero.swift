//
//  main.swift
//  Step3-Print_Pepero
//
//  Created by 이재영 on 2024/05/01.
//

import Foundation

func printPepero(길이 length: Int, 막대길이 lengthOfStick: Int, 몸통 styleOfPepero: String = "***", 토핑 topping: String = " ") {
    
    print("<정보>", "길이: \(length)", "몸통: \(styleOfPepero)", "토핑: \(topping)", "막대길이: \(lengthOfStick)" , separator: "\n", terminator: "\n\n")
    
    var topping = topping
    let formOfPepero: String = topping + styleOfPepero + topping.reversed()
        
    for _ in 1...length {
        print(formOfPepero)
    }
    
    let formOfStick: String =  String(repeating: " ", count: topping.count) + "|" + String(repeating: " ", count: styleOfPepero.count-2 ) + "|" + String(repeating: " ", count: topping.count)
   
    for _ in 1...lengthOfStick {
        print(formOfStick)
    }
}

printPepero(길이: 10, 막대길이: 4, 몸통: "***", 토핑: "&B")
