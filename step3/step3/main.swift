//
//  main.swift
//  step3
//
//  Created by 최대성 on 3/24/24.
//

import Foundation




func chocoSnack(lengthOfChoco: Int, shapeOfbody: String, toping: String, lengthOfBar: Int) {
    for _ in 1...lengthOfChoco {
        print(" ", toping, shapeOfbody, toping, separator: "")
    }
    for _ in 1...lengthOfBar {
        print("  | |")
    }
}

chocoSnack(lengthOfChoco: 4, shapeOfbody: "|0|", toping: "&", lengthOfBar: 2)
