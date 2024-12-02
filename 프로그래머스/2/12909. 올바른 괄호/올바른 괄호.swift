import Foundation

func solution(_ s:String) -> Bool {
    
    // 첫 문자가 ")" 경우 false를 리턴
    guard s.first == "(" else { return false }
    
    var answer = false
    var stack: [Character] = []

    for char in s {
        
        // 문자열 중
        switch char {
        case "(": stack.append(char)
        case ")": stack.popLast()
        default:
            answer = false
            break
        }
    }

    if stack.isEmpty {
        answer = true
    }

    return answer
}