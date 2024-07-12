//
//  PeperoDrawing.swift
//  CodeStarterCamp_Week1
//
//  Created by 배정길 on 7/11/24.
//

import Foundation

// 길이(Int)에 따른 막대(빼빼로 손잡이)를 그리는 함수
func drawPeperoStick(length: Int) {
    for _ in 1...length {
        print(" | |")
    }
}

/*!
// 몸통(String), 토핑(String)을 매개변수로 받아 토핑과 몸통을 그리는 함수
func drawPeperoBody(body: String, topping: String) {
    print("\(topping)\(body)\(topping)")
}
 */

// 길이(Int)에 따라 몸통을 그리는 함수
func drawPeperoBody(length: Int, body: String, topping: String) {
    for _ in 1...length {
//        drawPeperoBody(body: body, topping: topping)
        print("\(topping)\(body)\(topping)")
    }
}

// 빼빼로 정보를 출력하는 함수
func printPeperoInfo(length: Int, body: String, topping: String, stickLength: Int) {
    print("<정보>")
    print("길이: \(length)")
    print("몸통: \(body)")
    print("토핑: \(topping)")
    print("막대길이: \(stickLength)")
    print("")
}

// 전체 빼빼로를 그리는 함수
func drawPepero(length: Int, body: String, topping: String, stickLength: Int) {
    
    printPeperoInfo(length: length, body: body, topping: topping, stickLength: stickLength)
    drawPeperoBody(length: length, body: body, topping: topping)
    drawPeperoStick(length: stickLength)
    print("")
}


