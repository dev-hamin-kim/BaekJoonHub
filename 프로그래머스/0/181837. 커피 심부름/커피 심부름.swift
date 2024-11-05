import Foundation

func solution(_ order:[String]) -> Int {
    var result: Int = 0
    
    order.forEach { drink in 
        if drink.contains("latte") {
            result += 5
        }
        result += 45
    }
    
    return result * 100
}