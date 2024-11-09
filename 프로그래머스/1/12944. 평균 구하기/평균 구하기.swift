func solution(_ arr:[Int]) -> Double {
    let arrAdded = arr.reduce(0, +)
    
    return Double(Double(arrAdded) / Double(arr.count))
}