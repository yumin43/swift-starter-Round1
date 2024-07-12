//
//  main.swift
//  CodeStarterCamp_Week1
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

//MARK: - Step 2: 아이스크림 그리기
//MARK: 아이스크림 그리기 함수 호출
drawIceCream()


//MARK: - Step 3: 빼빼로 그리기
//MARK: 빼빼로 그리기 함수 호출
// 실행 예시 1 (일반 빼빼로의 좌측에는 빈칸이 하나 추가되어있습니다.)
drawPepero(length: 10, body: "***", topping: " ", stickLength: 4)
// 실행 예시 2
drawPepero(length: 12, body: "***", topping: "&", stickLength: 4)
// 실행 예시 3
drawPepero(length: 12, body: "***", topping: "#", stickLength: 6)
// 실행 예시 4 (누드 빼빼로의 좌측에는 빈칸이 하나 추가되어있습니다.)
drawPepero(length: 6, body: "|0|", topping: " ", stickLength: 4)
// 실행 예시 5 (나만의 뺴빼로)
drawPepero(length: 7, body: "^0^", topping: "&", stickLength: 3)
