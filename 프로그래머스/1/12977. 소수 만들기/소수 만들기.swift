import Foundation

func solution(_ nums:[Int]) -> Int {
    let evenNumbers: [Int] = nums.filter { $0 % 2 == 0 }
    let oddNumbers: [Int] = nums.filter { $0 % 2 != 0 }
    var result = 0
    
    // 홀수 3개
    for x in 0..<oddNumbers.count {
        for y in x + 1..<oddNumbers.count {
            for z in y + 1..<oddNumbers.count {
                let sum = oddNumbers[x] + oddNumbers[y] + oddNumbers[z]
                if sum.isPrime {
                    result += 1
                }
            }
        }
    }
    
    // 짝수 2개 + 홀수 1개
    for x in 0..<oddNumbers.count {
        for y in 0..<evenNumbers.count {
            for z in y + 1..<evenNumbers.count {
                let sum = oddNumbers[x] + evenNumbers[y] + evenNumbers[z]
                if sum.isPrime {
                    result += 1
                }
            }
        }
    }
    return result
}

extension Int {
    var isPrime: Bool {
        guard self >= 2     else { return false }
        guard self != 2     else { return true  }
        guard self % 2 != 0 else { return false }
        return !stride(from: 3, through: Int(sqrt(Double(self))), by: 2).contains { self % $0 == 0 }
    }
}
