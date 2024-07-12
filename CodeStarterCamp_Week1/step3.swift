//
//  step3.swift
//  CodeStarterCamp_Week1
//
//  Created by wodnd on 7/12/24.
//

import Foundation

func makePeperoBody(topping: String, body: String, body_length: Int) {
    if topping.isEmpty {
        for _ in 1...body_length {
            print("\(body)")
        }
    }
    else {
        for _ in 1...body_length {
            print("\(topping)\(body)\(topping)")
        }

    }
}

func checkEven(num: Int) -> Bool {
    if num % 2 == 0 {
        return true
    }else {
        return false
    }
}

func makeBarIfBodyEven(body_count: Int, bar_length: Int) {
    for _ in 1...bar_length {
        switch body_count {
        case 2:
            print("||")
            break
        default:
            for _ in 1..<body_count/2 {
                print(" ", terminator: "")
            }
            print("||")
            break
        }
    }
}

func makeBarIfBodyOdd(body_count: Int, bar_length: Int) {
    for _ in 1...bar_length {
        switch body_count {
        case 1:
            print("|")
            break
        case 3:
            print("| |")
            break
        default:
            for _ in 1...body_count/3 {
                print(" ", terminator: "")
            }
            print("| |")
            break
        }
    }
}

func makePeperoBar(body_count: Int, bar_length: Int) {
    let even = checkEven(num: body_count)
    
    if even {
        makeBarIfBodyEven(body_count: body_count, bar_length: bar_length)
    } else {
        makeBarIfBodyOdd(body_count: body_count, bar_length: bar_length)
    }
}

struct makePeperoInfo {
    var body_length: Int
    var body: String
    var topping: String
    var bar_length: Int
    
    init() {
        print("<정보>")
        print("길이: ", terminator: "")
        if let body_length_str = readLine(), let body_length = Int(body_length_str) {
            self.body_length = body_length
        } else {
            self.body_length = 0
        }
        
        print("몸통: ", terminator: "")
        self.body = readLine() ?? ""
        
        print("토핑: ", terminator: "")
        self.topping = readLine() ?? ""
        
        print("막대길이: ", terminator: "")
        if let bar_length_str = readLine(), let bar_length = Int(bar_length_str) {
            self.bar_length = bar_length
        } else {
            self.bar_length = 0
        }
        
        makePeperoBody(topping: topping, body: body, body_length: body_length)
        makePeperoBar(body_count:body.count + (topping.count * 2), bar_length: bar_length)
    }
}
