/*
 1. 아이스크림 부분을 그리는 함수를 정의한다.
 2. for-in 반복문을 이용하여 아이스크림 부분을 작성&호출 한다.
 3. 아이스크림의 막대기 부분을 그리는 함수를 정의한다.
 4. for-in 반복문을 이용하여 아이스크림 막대기 부분을 작성&호출 한다.
 5. 코드 실행 후 아이스크림의 모양을 조절하며 완성한다.
 */

func printIcecream(count: Int) {
    for i in 1...count {
        print("***********")
    }
}
printIcecream(count: 8)
// 아이스크림 부분을 만드는 코드

func printIcecreamBody(count: Int) {
    for i in 1...count {
        print("    | |     ")
    }
}
printIcecreamBody(count: 4)
// 아이스크림 막대기를 만드는 코드
