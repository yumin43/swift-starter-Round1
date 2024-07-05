//func printPocky(pockyBody: Int, pockyStick: Int, pockyBodyType: String, pockyTopping: Character) -> Void {
//    for _ in 1...pockyBody {
//        print("\(pockyTopping)\(pockyBodyType)\(pockyTopping)")
//    }
//    for _ in 1...pockyStick {
//        print(" | |")
//    }
//}
//var pockyBody: Int = 6
//var pockyStick: Int = 4
//var pockyBodyType: String = "|0|"
//var pockyTopping: Character = " "
//// 출력할 포키의 정보 입력
//
//print("""
//<정보>
//길이: \(pockyBody)
//몸통: \(pockyBodyType)
//토핑: \(pockyTopping)
//막대길이: \(pockyStick)
//
//""")
//
//printPocky(pockyBody: pockyBody, pockyStick: pockyStick, pockyBodyType: pockyBodyType, pockyTopping: pockyTopping)
// 이전 빼빼로 출력 스텝

// 새로운 빼빼로 출력 스텝


func printPepero(peperoHeight: Int, peperoStickHeight: Int, peperoTopping: Character, peperoBodyType: String) {
    print("""
<정보>
길이: \(peperoHeight)
몸통: \(peperoBodyType)
토핑: \(peperoTopping)
막대길이: \(peperoStickHeight)

""")
    for _ in 1...peperoHeight {
        print("\(peperoTopping)\(peperoBodyType)\(peperoTopping)")
    }
    for _ in 1...peperoStickHeight {
        print(" | |")
    }
}
printPepero(peperoHeight: 6, peperoStickHeight: 4, peperoTopping: " ", peperoBodyType: "|0|")
