import Foundation

func solution(_ babbling:[String]) -> Int {
    let speakableWords = ["aya", "ye", "woo", "ma"]
    let restrictedCombo = ["00", "11", "22", "33"]
    var result = babbling
    
    for (index, word) in speakableWords.enumerated() {
        result = result.map { $0.replacingOccurrences(of: word, with: String(index)) }
    }
    
    for word in restrictedCombo {
        result = result.map { $0.replacingOccurrences(of: word, with: "/") }
    }
    
    result = result.map { $0.omitNumerics }
    
    return result.filter { $0 == "" }.count
}

extension String {
    var omitNumerics: String {
        components(separatedBy: CharacterSet.decimalDigits)
            .joined()
    }
}