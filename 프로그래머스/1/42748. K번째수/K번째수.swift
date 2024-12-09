import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var result: [Int] = []
    
    // result가 commands의 숫자만큼만 들어올 것이기 때문에,
    // reserveCapacity를 해줌으로써, result의 크기를 늘이면서 오는 오버헤드를 줄임.
    result.reserveCapacity(commands.count)
    
    for command in commands {
        let (i, j, k) = (command[0] - 1, command[1] - 1, command[2] - 1)
        result.append(array[i...j].sorted(by: <)[k])
    }
    
    return result
}