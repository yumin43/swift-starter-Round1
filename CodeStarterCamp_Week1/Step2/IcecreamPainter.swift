//
//  IcecreamPainter.swift
//  CodeStarterCamp_Week1
//
//  Created by 김기현 on 5/30/24.
//

import Foundation


func paintIcecreamBody(height: Int){
    for _ in 1...height {
        print("***********")
    }
}

func printIcecreamBar(height: Int){
    for _ in 1...height {
        print("    | |")
    }
}

func paintIceCream(bodyHeight: Int, barHeight: Int) {
    paintIcecreamBody(height: bodyHeight);
    printIcecreamBar(height: barHeight);
}
