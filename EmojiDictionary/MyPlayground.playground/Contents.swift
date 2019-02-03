import UIKit

func sum(numbers:[Int])->Int{
    //some logic
    return total
}

let sumClosure = {(numbers:[Int])->Int in
    //some logic
    return total
}

let sum = sumClosure([1,2,3,4])

let sortedTracks = tracks.sorted{(firstTrack, secondTrack)-> Bool in
    
    return firstTrack.trackNumber < secondTrack.trackNumber
}


// can be reduced to via swift syntax

let sortedTrack = tracks.sorted{return $0.trackNumber < $1.trackNumber}


// tracks.sorted() takes in a closure that tells you how to compare two things so it can sort them

func performRequest(url: String, response: (code:Int)->Void){}

func performRequest(url: "www.apple.ca"){(data) in print(data)}

let names = ["Evelyn", "Brendan", "Carol"]

var fullNames: [String] = []

for name in names{
    let fullName = name + " Miller"
    fullNames.append(fullName)
}

let fullNameC = names.map{(name)->String in
    return name + " Miller"
}

let fullNameC2 = names.map($0 + " Miller")


