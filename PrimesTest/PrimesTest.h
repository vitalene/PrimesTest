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
    
    func factors(primes: [Int], numberToCheck: Int) -> [Int] {
        let reversePrimes = primes.reversed()
        var numberToCheck = numberToCheck
        var myFactors: [Int] = []
        for number in reversePrimes {
            if numberToCheck % number == 0 {
                myFactors.append(number)
                let otherFactor = numberToCheck/number
                numberToCheck = otherFactor
                
            }
        }
        
        
        return myFactors
    }
    
    let myPrimes = primes(upperBound: 20)
    
    factors(primes: myPrimes, numberToCheck: 18)
