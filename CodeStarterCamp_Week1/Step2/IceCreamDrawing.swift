//
//  IceCreamDrawing.swift
//  CodeStarterCamp_Week1
//
//  Created by 배정길 on 7/11/24.
//

import Foundation

// 아이스크림 부분을 그리는 함수
func drawIceCreamBody(height: Int) {
    for _ in 1...height {
        print("***********")
    }
}

// 막대기(손잡이) 부분을 그리는 함수
func drawIceCreamStick(height: Int) {
    for _ in 1...height {
        print("    | |")
    }
}

// 전체 아이스크림을 그리는 함수
func drawIceCream() {
    drawIceCreamBody(height: 8)
    drawIceCreamStick(height: 4)
}
