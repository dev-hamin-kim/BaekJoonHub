func solution(_ num:Int) -> Int {
    guard num > 1 else { return 0 }
    
    var count: Int = 0
    var temp = num
    
    while count <= 500 && temp > 1 {
        
        if temp % 2 == 0 {
            temp /= 2
        } else {
            temp *= 3
            temp += 1
        }
        count += 1
    }
    
    return count <= 500 ? count : -1
}