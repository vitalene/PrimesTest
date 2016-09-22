func sumSquaredifference(UpperNumber: Int) -> Int {
    
    var squaredSum = 0
    for number in 1...UpperNumber {
        let square = number*number
        squaredSum = squaredSum + square
    }
    
    var squareOfSum = 0
    for number in 1...UpperNumber {
        squareOfSum = squareOfSum + number
    }
    squareOfSum = squareOfSum*squareOfSum
    
    let difference = squareOfSum - squaredSum
    
    
    return difference
}

sumSquaredifference(UpperNumber: 10)
