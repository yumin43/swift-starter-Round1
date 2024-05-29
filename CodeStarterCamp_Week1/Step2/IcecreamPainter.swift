//
//  IcecreamPainter.swift
//  CodeStarterCamp_Week1
//
//  Created by 김기현 on 5/30/24.
//

import Foundation

func paintIceCreamBody(height: Int){
    for _ in 1...height {
        print("***********")
    }
}

func printIceCreamBar(height: Int){
    for _ in 1...height {
        print("    | |")
    }
}

func paintIceCream(bodyHeight: Int, barHeight: Int) {
    paintIceCreamBody(height: bodyHeight);
    printIceCreamBar(height: barHeight);
}
