//: [Brackets](@previous)

import Foundation

//: # FizzBuzz

func fizzBuzz(numbers: [Int]) -> [String] {
    
    func fizzTest(number: Int) -> Bool {
        return number % 3 == 0
    }
    
    func buzzTest(number: Int) -> Bool {
        return number % 5 == 0
    }
    
    var strings: [String] = []
    for i in numbers {
        var replacementString = ""
        if fizzTest(i) || buzzTest(i) {
            if fizzTest(i) {
                replacementString += "Fizz"
            }
            if buzzTest(i) {
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
