func solution(_ n:Int) -> String {
    var result: String = ""
    
    for i in 1...n {
        result.append(i % 2 != 0 ? "수" : "박")
    }
    
    return result
}