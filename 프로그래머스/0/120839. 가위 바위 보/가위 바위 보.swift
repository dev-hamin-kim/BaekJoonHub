import Foundation

func solution(_ rsp:String) -> String {
    var result: String = ""
    
    for char in rsp {
        switch char {
            case "0": result.append("5")
            case "2": result.append("0")
            case "5": result.append("2")
            default: result.append(char)
        }
        
    }
    
    return result
}