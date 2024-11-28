import Foundation

func solution(_ tickets:[[String]]) -> [String] {
    var graph: [String: [String]] = [:]
    var result: [String] = []
    
    func DFS(from airport: String) {
        while let destination = graph[airport], !destination.isEmpty {
            let next = graph[airport]!.removeLast()
            DFS(from: next)
        }
        result.append(airport)
    }
    
    for ticket in tickets {
        graph[ticket[0], default: []] .append(ticket[1])
    }
    
    for key in graph.keys {
        graph[key]?.sort(by: >)
    }

    DFS(from: "ICN")

    return result.reversed()
}