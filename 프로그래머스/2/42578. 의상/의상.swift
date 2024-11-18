import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var hashMap: [String: Int] = [:]
    
    for item in clothes {
        hashMap[item[1], default: 0] += 1
    }
    
    let combinations = hashMap.values.reduce(1) { result, count in
        result * (count + 1)                
    }
    
    return combinations - 1
}
