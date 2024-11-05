import Foundation

func solution(_ babbling:[String]) -> Int {
    let speakableWords = ["aya", "ye", "woo", "ma"]
    var result = babbling
    
    speakableWords.forEach { word in
        result = result.map { $0.replacingOccurrences(of: word, with: "1")}
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