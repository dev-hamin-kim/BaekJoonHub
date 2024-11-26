import Foundation

typealias Genre = String

struct GenreDetails {
    private(set) var songs: [Song] = []
    private(set) var totalPlays: Int = 0
    
    mutating func addSong(_ song: Song) {
        songs.append(song)
        totalPlays += song.played
    }
    
    func getTwoMaxValues() -> [Int] {
        var first = Song()
        var second = Song()
        
        for song in songs {
            if song.played > first.played {
                second = first
                first = song
            } else if song.played > second.played {
                second = song
            }
        }
        
        if first.played == second.played && first.index! > second.index! {
            return [second.index!, first.index!]
        } else {
            return [first.index!, second.index!]
        }
    }
}

struct Song {
    let played: Int
    let index: Int?
    
    init() {
        self.played = 0
        self.index = nil
    }
    
    init(played: Int, index: Int?) {
        self.played = played
        self.index = index
    }
}

func solution(_ genres:[String], _ plays:[Int]) -> [Int] {
    var hashMap: [Genre: GenreDetails] = [:]
    var result: [Int] = []
    
    for index in 0..<genres.count {
        let song = Song(played: plays[index], index: index)
        hashMap[genres[index], default: GenreDetails()] .addSong(song)
    }
    
    let sortedByTotalPlays = hashMap.sorted { (first, second) in
        return first.value.totalPlays > second.value.totalPlays
    }
    
    for genre in sortedByTotalPlays {
        
        if genre.value.songs.count == 1 {
            result.append(genre.value.songs[0].index!)
        } else if genre.value.songs.count >= 2 {
            result.append(contentsOf: genre.value.getTwoMaxValues())
        }
    }

    return result
}