//
//  main.swift
//  CodeStarterCamp_Week1
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

struct PeperoInfo {
    var barHeight: Int
    var topping: String?
    var body: String
    var bodyHeight: Int
}

var samplePepero = PeperoInfo(barHeight: 4, topping: "#", body: "***", bodyHeight: 10)

func drawingBody(topping: String?, bodyHeigt: Int, body: String) {
    let iceCreamBody = (topping ?? " ") + body + (topping ?? "")
    for _ in 1...bodyHeigt {
        print(iceCreamBody)
    }
}

func drawingBar(peperoInfo: PeperoInfo) {
    var body: [String] = Array(repeating: " ", count: peperoInfo.body.count + ((peperoInfo.topping?.count ?? 1)*2))
    body[(peperoInfo.topping?.count ?? 0)] = "|"
    body[(body.count) - (peperoInfo.topping?.count ?? 0) - 1] = "|"
    for _ in 1...peperoInfo.barHeight {
        print(body.joined())
    }
}

func printInfo(peperoInfo: PeperoInfo) {
    print("<정보>")
    print("길이: \(peperoInfo.bodyHeight)")
    print("몸통: \(peperoInfo.body)")
    print("토핑: \(peperoInfo.topping ?? "")")
    print("막대길이: \(peperoInfo.barHeight)")
}

func checkPepero(with peperoInfo: PeperoInfo) -> Bool {
    if peperoInfo.barHeight > 0 && peperoInfo.bodyHeight > 0  && peperoInfo.body.count >= 1 {
        return true
    } else {
        return false
    }
}

func makePepero(with peperoInfo: PeperoInfo) {
    printInfo(peperoInfo: peperoInfo)
    if checkPepero(with: peperoInfo) {
        drawingBody(topping: peperoInfo.topping, bodyHeigt: peperoInfo.bodyHeight, body: peperoInfo.body)
        drawingBar(peperoInfo: peperoInfo)
    } else {
        print("잘못된 정보를 입력하셨습니다.")
    }
}

makePepero(with: samplePepero)

