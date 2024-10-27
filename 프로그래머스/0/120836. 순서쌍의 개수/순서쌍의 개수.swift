import Foundation

func solution(_ n:Int) -> Int {
    guard n != 1 else { return 1 }
    
    var result = 0
    var nHaveIntegerSquareRoot = false
    
    for i in 1...n {
        guard i * i <= n else { break }
        
        if n % i == 0 {
            result += 1
        }
        
        if i * i == n {
            nHaveIntegerSquareRoot = true
        }
    }
    
    if nHaveIntegerSquareRoot {
        result -= 1
        result *= 2
        result += 1
    } else {
        result *= 2
    }
    
    return result
}