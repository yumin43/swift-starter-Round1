//
//  IcecreamPainter.swift
//  CodeStarterCamp_Week1
//
//  Created by 김기현 on 5/30/24.
//

import Foundation

// Used Swift’s dialect of Markdown.
/**
 콘솔에 아이스크림의 몸통을 출력하는 함수
 
 - parameters:
 - height: 아이스크림 몸통의 높이("\*\*\*\*\*\*\*\*\*\*\*" 이 몇 번 반복되어 그려질 것인가)

 */
func paintIceCreamBody(height: Int){
    for _ in 1...height {
        print("***********")
    }
}

/**
 콘솔에 아이스크림의 막대기를 출력하는 함수
 
 - parameters:
    - height: 아이스크림 막대기의 높이("    | |" 이 몇 번 반복되어 그려질 것인가)
 
 */
func paintIceCreamBar(height: Int){
    for _ in 1...height {
        print("    | |")
    }
}

/**
 콘솔에 아이스크림을 출력하는 함수
 
 - parameters:
    - bodyHeight: 아이스크림 몸통의 높이("\*\*\*\*\*\*\*\*\*\*\*" 이 몇 번 반복되어 그려질 것인가)
    - barHeight: 아이스크림 막대기의 높이("    | |" 이 몇 번 반복되어 그려질 것인가)
 
 */
func paintIceCream(bodyHeight: Int, barHeight: Int) {
    paintIceCreamBody(height: bodyHeight);
    paintIceCreamBar(height: barHeight);
}
