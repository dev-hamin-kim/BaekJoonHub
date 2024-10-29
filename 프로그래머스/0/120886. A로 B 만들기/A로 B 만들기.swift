import Foundation

func solution(_ before:String, _ after:String) -> Int {
    
    guard before != after else { return 1 }
    
    let letterCountA = before.reduce(into: [:]) { counts, letter in
        counts[letter, default: 0] += 1
    }
    
    let letterCountB = after.reduce(into: [:]) { counts, letter in
        counts[letter, default: 0] += 1
    }

    if letterCountA == letterCountB {
        return 1
    } else {
        return 0
    }
}