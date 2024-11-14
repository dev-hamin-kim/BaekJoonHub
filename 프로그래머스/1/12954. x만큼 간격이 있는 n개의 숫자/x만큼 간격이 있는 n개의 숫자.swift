func solution(_ x:Int, _ n:Int) -> [Int] {
    var result: [Int] = []
    
    for i in 1...n {
        result.append(x * i)
    }
    
    return result
}