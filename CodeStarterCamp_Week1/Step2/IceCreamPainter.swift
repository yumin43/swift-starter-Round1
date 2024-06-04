//
//  IcecreamPainter.swift
//  CodeStarterCamp_Week1
//
//  Created by 김기현 on 5/30/24.
//

import Foundation


/*
    FEEDBACK1 (20240531)
        - 한 문자열을 반복해서 넣기(자바에서의 "*" * 11) String(repeating: "*", count: 11)
                참고 : https://developer.apple.com/documentation/swift/string/init(repeating:count:)-23xjt
        - 접근제한자는 객체지향의 은닉화와 캡슐화에 대한 부분이기 때문에 여기서는 중요하지 않음
 */

/**
 콘솔에 아이스크림의 몸통을 출력하는 함수
 
 - parameters:
 - height: 아이스크림 몸통의 높이("\*\*\*\*\*\*\*\*\*\*\*" 이 몇 번 반복되어 그려질 것인가)
 */
func paintIceCreamBody(height: Int){
    for _ in 1...height {
        print(String(repeating: "*", count: 11))
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
