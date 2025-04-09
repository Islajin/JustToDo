import UIKit

var greeting = "Hello, playground"

greeting.count.description
//체이닝 Chaining

//옵셔널 체이닝

var optionalGreeting: String? = "Hello, playground"

let a = optionalGreeting!.count //XXX사용 지양
let b = optionalGreeting?.count
//nil을 강제추출하면 크래쉬가 발생함
//? 는 옵셔널 체이닝, !는 강제 추출 바인딩
// 옵셔널 표현식일때만 느낌표나 물음표를 붙이면 됨





