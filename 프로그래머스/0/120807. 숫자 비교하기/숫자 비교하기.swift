import Foundation

func solution(_ num1:Int, _ num2:Int) -> Int {
    guard (0...10000 ~= num1) , (0...10000 ~= num2) else { return 0 }
    if num1 == num2 {
        return 1
    } else {
        return -1
    }
}