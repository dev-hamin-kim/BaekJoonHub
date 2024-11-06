import Foundation

func solution(_ n:Int) -> Int {
    
    var result: Int = 0
    
    for i in 0...n {
        if i % 2 == 0 {
            result += i
        }
    }
    
    return result
}