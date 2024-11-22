import Foundation

struct GenreDetails {
    private(set) var songs: [Song] = []
    private(set) var totalPlays: Int = 0
    
    mutating func addSong(_ song: Song) {
        songs.append(song)
        totalPlays += song.played
    }
}

struct Song {
    let played: Int
    let index: Int
}

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var hashMap: [String: GenreDetails] = [:]
    var result: [Int] = []
    
    for index in 0..<genres.count {
        let song = Song(played: plays[index], index: index)
        hashMap[genres[index], default: GenreDetails()] .addSong(song)
    }
    
    let sortedByTotalPlays = hashMap.sorted { (first, second) in
        return first.value.totalPlays > second.value.totalPlays
    }
    
    for genre in sortedByTotalPlays {
        
        switch genre.value.songs.count {
        case 1: result.append(genre.value.songs[0].index)
        case 2:
            let first = genre.value.songs[0]
            let second = genre.value.songs[1]
            
            if first.played > second.played {
                result.append(first.index)
                result.append(second.index)
            } else if first.played < second.played {
                result.append(second.index)
                result.append(first.index)
            } else if first.index < second.index {
                result.append(first.index)
                result.append(second.index)
            } else if first.index > second.index {
                result.append(second.index)
                result.append(first.index)
            }
        case 3...:
            var inOrder = genre.value.songs.sorted { $0.played < $1.played }
            
            let last = inOrder.popLast()
            let secondLast = inOrder.popLast()
            
            if last?.played == secondLast?.played && last!.index > secondLast!.index {
                result.append((secondLast?.index)!)
                result.append((last?.index)!)
            } else {
                result.append((last?.index)!)
                result.append((secondLast?.index)!)
            }

        default: print("error")
        }
    }

    return result
}