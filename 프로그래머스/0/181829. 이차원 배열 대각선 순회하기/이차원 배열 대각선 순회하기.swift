import Foundation

func solution(_ board:[[Int]], _ k:Int) -> Int {
    var result: Int = 0
    let (rowCount, columnCount): (Int, Int) = (board.count, board[0].count)
    
    for i in 0..<rowCount {
        for j in 0..<columnCount {
            if (i + j) <= k {
                result += board[i][j]
            }
        }
    }
    
    return result
}