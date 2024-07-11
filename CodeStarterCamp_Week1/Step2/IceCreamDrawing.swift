//
//  IceCreamDrawing.swift
//  CodeStarterCamp_Week1
//
//  Created by 배정길 on 7/11/24.
//

import Foundation
/**
 이 파일은 아이스크림을 그리기 위한 함수들을 포함
 각 함수는 아이스크림의 다양한 부분을 그리기 위해 사용됨
 */

// 아이스크림 부분을 그리는 함수
func drawIceCream(count: Int) {
    for _ in 1...count {
        print("***********")
    }
}

// 막대기(손잡이) 부분을 그리는 함수
func drawStick(count: Int) {
    for _ in 1...count {
        print("    | |")
    }
}

// 전체 아이스크림을 그리는 함수
func drawIceCreamWithStick() {
    drawIceCream(count: 8)
    drawStick(count: 4)
}
