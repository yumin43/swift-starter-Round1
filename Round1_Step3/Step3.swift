import Foundation

// 빼빼로 그리기 함수
func drawPepero(length: Int, body: String, topping: String, stickLength: Int) {
    // 빼빼로 몸통 그리기 함수
    func drawBody(length: Int, body: String, topping: String) {
        for _ in 0..<length {
            if !topping.isEmpty {
                print("\(topping)\(body)\(topping)")
            } else {
                print(" \(body)")
            }
        }
    }
    
    // 막대 그리기 함수
    func drawStick(stickLength: Int) {
        for _ in 0..<stickLength {
            print(" | |")
        }
    }
    
    // 정보 출력
    print("<정보>")
    print("길이: \(length)")
    print("몸통: \(body)")
    print("토핑: \(topping)")
    print("막대길이: \(stickLength)")
    print()
    
    // 빼빼로 그리기
    drawBody(length: length, body: body, topping: topping)
    drawStick(stickLength: stickLength)
}

// 실행 예시 1
drawPepero(length: 10, body: "***", topping: "", stickLength: 4)
print()
// 실행 예시 2
drawPepero(length: 12, body: "***", topping: "&", stickLength: 4)
print()
// 실행 예시 3
drawPepero(length: 12, body: "***", topping: "#", stickLength: 6)
print()
// 실행 예시 4
drawPepero(length: 6, body: "|0|", topping: "", stickLength: 4)
