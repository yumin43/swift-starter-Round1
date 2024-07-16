//
//  step3.swift
//  CodeStarterCamp_Week1
//
//  Created by wodnd on 7/12/24.
//

import Foundation

func makePeperoBody(topping: String, body: String, bodyLength: Int) {
    if topping.isEmpty {
        for _ in 1...bodyLength {
            print("\(body)")
        }
    }
    else {
        for _ in 1...bodyLength {
            print("\(topping)\(body)\(topping)")
        }
    }
}

func checkEven(num: Int) -> Bool {
    if num % 2 == 0 {
        return true
    } else {
        return false
    }
}

func makeBarIfBodyEven(bodyCount: Int, barLength: Int) {
    for _ in 1...barLength {
        switch bodyCount {
        case 2:
            print("||")
            break
        default:
            for _ in 1..<bodyCount/2 {
                print(" ", terminator: "")
            }
            print("||")
            break
        }
    }
}

func makeBarIfBodyOdd(bodyCount: Int, barLength: Int) {
    for _ in 1...barLength {
        switch bodyCount {
        case 1:
            print("|")
            break
        case 3:
            print("| |")
            break
        default:
            for _ in 1...bodyCount/3 {
                print(" ", terminator: "")
            }
            print("| |")
            break
        }
    }
}

func makePeperoBar(bodyCount: Int, barLength: Int) {
    let even = checkEven(num: bodyCount)
    
    if even {
        makeBarIfBodyEven(bodyCount: bodyCount, barLength: barLength)
    } else {
        makeBarIfBodyOdd(bodyCount: bodyCount, barLength: barLength)
    }
}

struct makePeperoInfo {
    var bodyLength: Int
    var body: String
    var topping: String
    var barLength: Int
    
    init() {
        print("<정보>")
        print("길이: ", terminator: "")
        if let bodyLengthStr = readLine(), let bodyLength = Int(bodyLengthStr) {
            self.bodyLength = bodyLength
        } else {
            self.bodyLength = 0
        }
        
        print("몸통: ", terminator: "")
        self.body = readLine() ?? ""
        
        print("토핑: ", terminator: "")
        self.topping = readLine() ?? ""
        
        print("막대길이: ", terminator: "")
        if let barLengthStr = readLine(), let barLength = Int(barLengthStr) {
            self.barLength = barLength
        } else {
            self.barLength = 0
        }
        
        makePeperoBody(topping: topping, body: body, bodyLength: bodyLength)
        makePeperoBar(bodyCount:body.count + (topping.count * 2), barLength: barLength)
    }
}
