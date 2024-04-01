//
//  main.swift
//  step3
//
//  Created by 최대성 on 3/24/24.
//

import Foundation


var boxOfLengthOfBar = 0
var width = 0
var blank: String = " "

func chocoSnack(lengthOfChoco: Int, shapeOfbody: String, toping: String, lengthOfBar: Int) {
    for _ in 1...lengthOfChoco {
        print(" ", toping, shapeOfbody, toping, separator: "")
    }
    boxOfLengthOfBar = lengthOfBar
    width = shapeOfbody.count
}
func chocoBar(lengthOfBar: Int) {
    
    if width >= 4 {
        for _ in 1...width/2 - 1  {
            blank.append(" ")
        }
    }
    if width % 2 != 0 {
        for _ in 1...lengthOfBar {
            print("\(blank) | |")
        }
    } else{
        for _ in 1...lengthOfBar {
            print("\(blank) ||")
        }
    }
}
chocoSnack(lengthOfChoco: 6, shapeOfbody: "|0|", toping: " ", lengthOfBar: 4)
chocoBar(lengthOfBar: boxOfLengthOfBar)

