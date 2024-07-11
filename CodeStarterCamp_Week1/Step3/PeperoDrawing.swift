//
//  PeperoDrawing.swift
//  CodeStarterCamp_Week1
//
//  Created by 배정길 on 7/11/24.
//

import Foundation

/**
 이 파일은 빼빼로를 그리기 위한 함수들을 포함
 각 함수는 빼빼로의 몸통과 막대기를 그리기 위해 사용됨
 */

// 길이(Int)에 따른 막대(빼빼로 손잡이)를 그리는 함수
func drawStick(length: Int) {
    for _ in 1...length {
        print(" | |")
    }
}

// 몸통(String), 토핑(String)을 매개변수로 받아 토핑과 몸통을 그리는 함수
func drawBody(body: String, topping: String) {
    print("\(topping)\(body)\(topping)")
}

// 길이(Int)에 따라 몸통을 그리는 함수
func drawBody(length: Int, body: String, topping: String) {
    for _ in 1...length {
        drawBody(body: body, topping: topping)
    }
}

// 전체 빼빼로를 그리는 함수
func drawPepero(length: Int, body: String, topping: String, stickLength: Int) {
    print("<정보>")
    print("길이: \(length)")
    print("몸통: \(body)")
    print("토핑: \(topping)")
    print("막대길이: \(stickLength)")
    print("")
    
    drawBody(length: length, body: body, topping: topping)
    drawStick(length: stickLength)
}


