func printPoky(pokyBody: Int, pokyStick: Int, pokyBodyType: String, pokyTopping: Character) -> Void {
    for _ in 1...pokyBody {
        print("\(pokyTopping)\(pokyBodyType)\(pokyTopping)")
    }
    for _ in 1...pokyStick {
        print(" | |")
    }
}
var pokyBody: Int = 10
var pokyStick: Int = 6
var pokyBodyType: String = "| |"
var pokyTopping: Character = "+"
// 출력할 포키의 정보 입력

print("""
<정보>
길이: \(pokyBody)
몸통: \(pokyBodyType)
토핑: \(pokyTopping)
막대길이: \(pokyStick)

""")

printPoky(pokyBody: pokyBody, pokyStick: pokyStick, pokyBodyType: pokyBodyType, pokyTopping: pokyTopping)
