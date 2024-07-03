//var pokyBody: Int = Int()
//var pokyBodyType: String = String()
//var pokyTopping: String = String()
//var pokyStick: Int = Int()

func printPoky(pokyBody: Int, pokyStick: Int, pokyBodyType: String, pokyTopping: String) -> Void {
    for _ in 1...pokyBody {
        print(pokyBodyType)
    }
    for _ in 1...pokyStick {
        print(" | |")
    }
}

printPoky(pokyBody: 5, pokyStick: 2, pokyBodyType: " |0|", pokyTopping: "")
