//: [Brackets](@previous)

import Foundation

//: # FizzBuzz

func fizzBuzz(numbers: [Int]) -> [String] {
    
    var strings: [String] = []
    for i in numbers {
        if i % 3 == 0 && i % 5 == 0 {
            strings.append("FizzBuzz")
        } else if i % 3 == 0 {
            strings.append("Fizz")
        } else if i % 5 == 0 {
            strings.append("Buzz")
        } else {
            strings.append(String(i))
        }
    }
    
    return strings
}

if let path = NSBundle.mainBundle().pathForResource("fizzbuzz-expected", ofType: "txt") {
    let expectedFizzBuzzOutputString = try String(contentsOfFile: path, encoding: NSUTF8StringEncoding)
    let expectedFizzBuzzArray = split(expectedFizzBuzzOutputString.characters) { $0 == "\n" }.map{ String($0) }
    
    let isFizzBuzzCorrect = fizzBuzz(Array(1...100)) == expectedFizzBuzzArray

}
