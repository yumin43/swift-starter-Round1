import Foundation

func makePepero(peperoSize: Int, pepero: String,  topping: String = " ", stickLength: Int) {
    printInformation(peperoSize: peperoSize, pepero: pepero, topping: topping, stickLength: stickLength)
    printPepero(peperoSize: peperoSize, pepero: pepero, topping: topping)
    printStick(stickLength: stickLength)
}

func printInformation(peperoSize: Int, pepero: String, topping: String, stickLength: Int) {
    print("<정보>\n길이: \(peperoSize)\n몸통: \(pepero)\n토핑: \(topping)\n막대길이: \(stickLength)\n")
}

func printPepero(peperoSize: Int, pepero: String, topping: String) {
    for _ in 1...peperoSize {
        print(getPeperoBody(pepero: pepero, topping: topping))
    }
}

func getPeperoBody(pepero: String, topping: String) -> String {
    return "\(topping)\(pepero)\(topping)"
}

func printStick(stickLength: Int) {
    for _ in 1...stickLength {
        print(" | | ")
    }
}
