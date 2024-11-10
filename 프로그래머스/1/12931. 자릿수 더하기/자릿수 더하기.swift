import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    for char in String(n) {
        result += char.wholeNumberValue ?? 0
    }
    return result 
}