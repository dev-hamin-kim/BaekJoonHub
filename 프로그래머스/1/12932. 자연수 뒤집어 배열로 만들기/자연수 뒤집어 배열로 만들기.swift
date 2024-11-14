func solution(_ n:Int64) -> [Int] {
    var result: [Int] = []
    var temp = n
    
    while temp > 9 {
        result.append(Int(temp) % 10)
        temp /= Int64(10)
    }
    
    result.append(Int(temp))
    
    return result
}