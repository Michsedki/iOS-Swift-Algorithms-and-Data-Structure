//: Playground - noun: a place where people can play

import UIKit

// assume we have a list of songs
let songs = ["a", "b", "c", "d", "e", "f", "g", "h"]

// if we select "f" song we need to return array like that ["f", "g", "h", "a", "b", "c", "d", "e"]

let selectedSong = "f"
var newSongList = [String]()
var priorSongList = [String]()

for song in songs {
    
    if song == selectedSong || newSongList.count > 0 {
        newSongList.append(song)
    } else {
        priorSongList.append(song)
    }
    
    
}
newSongList
priorSongList

newSongList + priorSongList


// second way

let index = songs.index(where : {return $0 == selectedSong})!
//let index2 = songs.index(of: "f")



let prefixArray = songs.prefix(upTo: index)
let suffixArray = songs.suffix(from: index)

let arr = suffixArray + prefixArray













