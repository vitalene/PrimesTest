func multiples (upperBound: Int) -> Int {
    var sumNumber = 0
    var listOfMultiples: [Int] = []
    
    let potentials = Array(2..<upperBound)
    
    for number in potentials {
        if (number % 3 == 0 || number % 5 == 0) {
            listOfMultiples.append(number)
        }
    }
    for theNumber in listOfMultiples {
        sumNumber = sumNumber + theNumber
    }
    return sumNumber
}


var theAnswer = multiples(upperBound: 1000)

print("\(theAnswer)")


//: [Next Page](@next)
