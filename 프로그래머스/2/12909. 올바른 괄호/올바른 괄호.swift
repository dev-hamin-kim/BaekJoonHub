import Foundation

func solution(_ s:String) -> Bool {
    
    // 첫 문자가 ")"일 경우, 무조건 닫히지 않은 괄호이니, false를 리턴
    guard s.first == "(" || s.last == ")" else { return false }
    
    var answer = false
    var stack: [Character] = []

    for char in s {
        
        
        switch char {
        case "(": stack.append(char)
        case ")": if stack.popLast() == nil { return false }
        default: // 문자열 중 괄호 외의 문자를 발견 시 false를 리턴하도록 하는
            return false
        }
    }

    if stack.isEmpty {
        answer = true
    }

    return answer
}