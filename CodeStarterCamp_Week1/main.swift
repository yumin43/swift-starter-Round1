func printInfomation(totalLength length : Int, peperoBody body : String, peperoTopping topping : String, peperoHandle handle : Int) {
    print("길이 : \(length)")
    print("몸통 : \(body)")
    print("토핑 : \(topping)")
    print("막대길이 : \(handle)")
    print("")
}

func drawPepero(totalLength length : Int, peperoBody body : String, peperoTopping topping : String, peperoHandle handle : Int) {
    for _ in 1...length {
        print(" ", topping, body, topping, separator: "")
    }
    for _ in 1...handle {
        if (topping == "") {
            print(" | |")
        } else {
            print("  | |")
        }
    }
}

printInfomation(totalLength: 12, peperoBody: "|0|", peperoTopping: "", peperoHandle: 6)
drawPepero(totalLength: 12, peperoBody: "|0|", peperoTopping: "", peperoHandle: 6)

