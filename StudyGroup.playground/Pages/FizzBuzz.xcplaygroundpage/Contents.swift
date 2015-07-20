//: [Brackets](@previous)

import Foundation

//: # FizzBuzz

func fizzBuzz(numbers: [Int]) -> [String] {
    
    var strings: [String] = []
    for i in numbers {
        var replacementString = ""
        if i % 3 == 0 || i % 5 == 0 {
            if i % 3 == 0 {
                replacementString += "Fizz"
            }
            if i % 5 == 0 {
                replacementString += "Buzz"
            }
        } else {
            replacementString = String(i)
        }
        
        strings.append(replacementString)
    }
    
    return strings
}

if let path = NSBundle.mainBundle().pathForResource("fizzbuzz-expected", ofType: "txt") {
    let expectedFizzBuzzOutputString = try String(contentsOfFile: path, encoding: NSUTF8StringEncoding)
    let expectedFizzBuzzArray = split(expectedFizzBuzzOutputString.characters) { $0 == "\n" }.map{ String($0) }
    
    let isFizzBuzzCorrect = fizzBuzz(Array(1...100)) == expectedFizzBuzzArray

}
