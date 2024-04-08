func orderPepero(totalLength length : Int, peperoBody body : String, peperoTopping topping : String, peperoHandle handle : Int) {
    print("길이: \(length)\n몸통: \(body)\n토핑: \(topping)\n막대길이: \(handle)\n")
    makePepero(totalLength: length, peperoBody: body, peperoTopping: topping, peperoHandle: handle)
}

func makePepero(totalLength length : Int, peperoBody body : String, peperoTopping topping : String, peperoHandle handle : Int) {
    let totalChars = topping.count * 2 + body.count
    
    for _ in 1...length {
        print(" ", topping, body, topping, separator: "")
    }
    for _ in 1...handle {
        for _ in 1...(totalChars / 2) {
            print(" ", terminator: "")
        }
        if totalChars % 2 == 0 {
            print(" | |")
        } else {
            print("| |")
        }
    }
}

orderPepero(totalLength: 8, peperoBody: "|0|", peperoTopping: "***", peperoHandle: 4)

