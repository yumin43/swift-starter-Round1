func drawIcecream(size: Int) {
    for count in 1...size {
        for count in 1...11 {
            print("*", terminator: "")
        }
        print()
    }
}

func drawHandle(size: Int) {
    for count in 1...size {
        for count in 1...11 {
            if count == 5 || count == 7 {
                print("|", terminator: "")
            }
            else {
                print(" ", terminator: "")
            }
        }
        print()
    }
}

drawIcecream(size: 8)
drawHandle(size: 4)
