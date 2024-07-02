/*
 1. 아이스크림 부분을 그리는 함수를 정의한다.
 2. for-in 반복문을 이용하여 아이스크림 부분을 작성&호출 한다.
 3. 아이스크림의 막대기 부분을 그리는 함수를 정의한다.
 4. for-in 반복문을 이용하여 아이스크림 막대기 부분을 작성&호출 한다.
 5. 코드 실행 후 아이스크림의 모양을 조절하며 완성한다.
 */



func printIcecream(count: Int) {
    print("***********")
}
// 아이스크림의 부분을 정의

for count in 1...8 {
    printIcecream(count: count)
}
// 반복을 통해 아이스크림 부분을 형성

func printIcecreamBody(count: Int) {
    print("    | |     ")
}
// 아이스크림 막대 부분을 정의

for count in 1...4 {
    printIcecreamBody(count: count)
}
// 아이스크림 막대기 부분을 형성
