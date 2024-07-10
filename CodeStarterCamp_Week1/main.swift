//
//  main.swift
//  CodeStarterCamp_Week1
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

print("Hello, World!")

//MARK: - Step 2: 아이스크림 그리기

//MARK: 아이스크림 부분을 그리는 함수
func drawIceCream(count: Int) {
    for _ in 1...count {
        print("***********")
    }
}

//MARK: 막대기(손잡이) 부분을 그리는 함수
func drawStick(count: Int) {
    for _ in 1...count {
        print("    | |")
    }
}

//MARK: 전체 아이스크림을 그리는 함수
func drawIceCreamWithStick() {
    drawIceCream(count: 8)
    drawStick(count: 4)
}

drawIceCreamWithStick()


