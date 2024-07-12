코드 스타터 캠프 1주차 미션을 위한 저장소입니다.

1.  닉네임: Riu
    
2.  자기소개: 안녕하십니까 야곰아카데미 코드스타터 18기에 참여하게 된 Riu, 엄재웅이라고 합니다. iOS를 통한 프로젝트를 진행한 경험이 있으나 코드에 대한 깊은 이해도가 높지 않아 신청하게 되었습니다. Swift를 온전히 알게 됨으로써 알고리즘 문제도 해결하며 직접 만든 함수를 활용하여 iOS 개발에 힘쓰고 싶습니다!
    
3.  담당 멘토에게 전하고 싶은 한마디: 조금은 느리더라도 포기하지 않고 끝까지 따라가도록 하겠습니다. 최일선에서 항상 힘써주셔서 너무나 감사합니다!

4. step 2 순서도입니다.
<img width="309" alt="스크린샷 2024-07-11 오후 6 51 50" src="https://github.com/yagom-academy/swift-starter-Round1/assets/98391474/803baef2-8788-4419-84dd-34a533bf59a9">

5. step 3에 관한 설명입니다.
## 주문에 따른 빼빼로 그리기주문에 따른 빼빼로 그리기

## 순서도
<img width="407" alt="스크린샷 2024-07-12 오후 7 21 31" src="https://github.com/user-attachments/assets/1b8077a9-7567-4402-bed3-47709ac07229">

## 기능구현
### makePeperoInfo 구조체
- 빼빼로를 만들기 위한 정보를 미리 정의 해두었습니다.(길이, 몸통, 토핑, 막대길이)
- 구조체 초기 실행 시 각 정보를 입력받을 수 있도록 readLine을 활용하였습니다. 
- 길이와 막대길이는 정수이기에 입력과 동시에 정수로 변환하여 저장하였습니다.
- 입력받은 값을 생성한 구조체 변수에 저장하고 빼빼로 몸통을 만들기 위한  makePeperoBody()와 바를 만들기 위한 makePeperoBar()를 실행하여 줍니다.
```swift
struct makePeperoInfo {
    var body_length: Int
    var body: String
    var topping: String
    var bar_length: Int
    
    init() {
        print("<정보>")
        print("길이: ", terminator: "")
        if let body_length_str = readLine(), let body_length = Int(body_length_str) {
            self.body_length = body_length
        } else {
            self.body_length = 0
        }
        
        print("몸통: ", terminator: "")
        self.body = readLine() ?? ""
        
        print("토핑: ", terminator: "")
        self.topping = readLine() ?? ""
        
        print("막대길이: ", terminator: "")
        if let bar_length_str = readLine(), let bar_length = Int(bar_length_str) {
            self.bar_length = bar_length
        } else {
            self.bar_length = 0
        }
        
        makePeperoBody(topping: topping, body: body, body_length: body_length)
        makePeperoBar(body_count:body.count + (topping.count * 2), bar_length: bar_length)
    }
}
```

### makePeperoBody 함수
- isEmpty를 활용하여 토핑이 없을 경우 길이에 받게 몸통을 출력합니다.
- 토핑이 있을 경우 토핑으로 몸통을 감싸고 출력하게 됩니다.
```swift
func makePeperoBody(topping: String, body: String, body_length: Int) {
    if topping.isEmpty {
        for _ in 1...body_length {
            print("\(body)")
        }
    }
    else {
        for _ in 1...body_length {
            print("\(topping)\(body)\(topping)")
        }

    }
}
```
### makePeperoBar 함수
- 막대같은 경우에는 토핑을 포함한 몸통의 갯수가 짝수인지 홀수 인지에 따라 적절하게 출력하게 만들어보았습니다.
```swift
func makePeperoBar(body_count: Int, bar_length: Int) {
    let even = checkEven(num: body_count)
    
    if even {
        makeBarIfBodyEven(body_count: body_count, bar_length: bar_length)
    } else {
        makeBarIfBodyOdd(body_count: body_count, bar_length: bar_length)
    }
}
```

### checkEven 함수
- 몸통의 갯수가 짝수이면 true 홀수이면 false 반환으로 짝수 홀수를 판별합니다.
```swift
func checkEven(num: Int) -> Bool {
    if num % 2 == 0 {
        return true
    }else {
        return false
    }
}
```
### makeBarIfBodyEven 함수
- 입력받은 막대의 길이는 반복문을 통해서 표현하엿습니다.
- swifth문을 통해 몸통의 전체 갯수가 2개일 경우 막대를 가운데 배치하기 위해 띄워쓰기 없이 바로 ||출력하게 만들었습니다.
- 나머지 같은경우 몸통의 전체 갯수를 2로 나눈 값으로 반복문을 돌려 막대가 가운데로 배치 하기 위해 적절한  띄워쓰기와 출력하도록 만들었습니다.
```swift
func makeBarIfBodyEven(body_count: Int, bar_length: Int) {
    for _ in 1...bar_length {
        switch body_count {
        case 2:
            print("||")
            break
        default:
            for _ in 1..<body_count/2 {
                print(" ", terminator: "")
            }
            print("||")
            break
        }
    }
}
```

### makeBarIfBodyOdd 함수
- 입력받은 막대의 길이는 반복문을 통해서 표현하엿습니다.
- swifth문을 통해 몸통의 전체 갯수가 1개일 경우 막대를 가운데 배치하기 위해 가운데 띄워쓰기하여 |출력하게 만들었습니다.
- 몸통의 전체 갯수가 3개일 경우 막대를 가운데 배치하기 위해 가운데 띄워쓰기하여 | |출력하게 만들었습니다.
- 나머지 같은경우 몸통의 전체 갯수를 3로 나눈 값으로 반복문을 돌려 막대가 가운데로 배치 하기 위해 적절한  띄워쓰기와 출력하도록 만들었습니다.
```swift
func makeBarIfBodyOdd(body_count: Int, bar_length: Int) {
    for _ in 1...bar_length {
        switch body_count {
        case 1:
            print("|")
            break
        case 3:
            print("| |")
            break
        default:
            for _ in 1...body_count/3 {
                print(" ", terminator: "")
            }
            print("| |")
            break
        }
    }
}
```

## 결과물

![스크린샷 2024-07-12 오후 6 45 52](https://github.com/user-attachments/assets/cba4c175-1ba0-47c1-8ea0-2f17cb671d6f) |![스크린샷 2024-07-12 오후 6 46 18](https://github.com/user-attachments/assets/ce65436c-7a4b-4d58-967f-096da6dc52a3) |![스크린샷 2024-07-12 오후 6 46 40](https://github.com/user-attachments/assets/f3d94aa6-1388-4e6f-aa5c-ea1a2a7cee42)
--- | --- | --- |

![스크린샷 2024-07-12 오후 6 47 05](https://github.com/user-attachments/assets/615d0bec-8359-4abe-a975-55ba635d9a3e) |![스크린샷 2024-07-12 오후 6 47 25](https://github.com/user-attachments/assets/f937d9b6-7da5-41e0-83e9-b85dce6e15c9)  |![스크린샷 2024-07-12 오후 6 48 21](https://github.com/user-attachments/assets/daff8c45-9706-4b9e-97d7-8463674c918f)
--- | --- | --- |


