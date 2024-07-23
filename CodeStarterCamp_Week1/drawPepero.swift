import Foundation

func drawPeperoHandle(stickHeight: Int) {
    for _ in 1...stickHeight {
        print(" | |")
    }
}

func drawPeperoBodyAndTopping(body: String, topping: String) {
    let blank: String = " "
    if (topping.isEmpty) {
        print(blank, body, separator: "")
    } else {
        print(topping, body, topping, separator: "")
    }
}

func drawTotalPeperoBody(bodyHeight: Int, body: String, topping: String) {
    for _ in 1...bodyHeight {
        drawPeperoBodyAndTopping(body: body, topping: topping)
    }
}

func drawEntirePepero(bodyHeight: Int, body: String, topping: String, stickHeight: Int) {
    
    drawTotalPeperoBody(bodyHeight: bodyHeight, body: body, topping: topping)
    drawPeperoHandle(stickHeight: stickHeight)
    
}

func printPeperoInfo(bodyHeight: Int, body: String, topping: String, stickHeight: Int) {
    print("\n<정보>\n길이: \(bodyHeight)\n몸통: \(body)\n토핑: \(topping)\n막대길이: \(stickHeight)\n")
}

func printPeperoAndInfo(bodyHeight: Int, body: String, topping: String, stickHeight: Int) {
    printPeperoInfo(bodyHeight: bodyHeight, body: body, topping: topping, stickHeight: stickHeight)
    drawEntirePepero(bodyHeight: bodyHeight, body: body, topping: topping, stickHeight: stickHeight)
    print("\n")
    
}
