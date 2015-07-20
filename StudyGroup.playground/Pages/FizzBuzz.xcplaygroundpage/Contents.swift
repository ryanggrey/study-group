//: [Brackets](@previous)

import Foundation

//: # FizzBuzz

func fizzBuzz(numbers: [Int]) -> [String] {
    
    typealias fizzTestType = (Int) -> Bool
    func innerFizzBuzz(fizz fizzTest: fizzTestType, buzz buzzTest: fizzTestType, i: Int) -> String {
        let fizzBuzzTest = { fizzTest($0) || buzzTest($0) }
        
        var replacementString = ""
        if fizzBuzzTest(i) {
            if fizzTest(i) {
                replacementString += "Fizz"
            }
            if buzzTest(i) {
                replacementString += "Buzz"
            }
        } else {
            replacementString = String(i)
        }
        
        return replacementString
    }
    
    let fizzTest = { $0 % 3 == 0 }
    let buzzTest = { $0 % 5 == 0 }
    
    let strings = numbers.map { innerFizzBuzz(fizz: fizzTest, buzz: buzzTest, i: $0) }
    
    return strings
}

if let path = NSBundle.mainBundle().pathForResource("fizzbuzz-expected", ofType: "txt") {
    let expectedFizzBuzzOutputString = try String(contentsOfFile: path, encoding: NSUTF8StringEncoding)
    let expectedFizzBuzzArray = split(expectedFizzBuzzOutputString.characters) { $0 == "\n" }.map{ String($0) }
    
    let isFizzBuzzCorrect = fizzBuzz(Array(1...100)) == expectedFizzBuzzArray
}
