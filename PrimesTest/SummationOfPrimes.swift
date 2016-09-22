//: [Previous](@previous)
func primes(upperBound: Int) -> [Int] {
    upperBound
    var possibilities = Array(2..<upperBound)
    var listOfPrimes: [Int] = []
    while !possibilities.isEmpty {
        let thisPrime = possibilities.first!
        listOfPrimes.append(possibilities.first!)
        possibilities.remove(at: possibilities.startIndex)
        possibilities = possibilities.filter {
            item in item % thisPrime != 0
        }
    }
    return listOfPrimes
}


func summationOfPrimes(PrimeArray: [Int]) -> Int {
    var myAnswer = 0
    for i in PrimeArray {
        myAnswer = myAnswer + i
    }
    
    
    return myAnswer
    
}

let thePrimes = primes(upperBound: 2000000)

summationOfPrimes(PrimeArray: thePrimes)


