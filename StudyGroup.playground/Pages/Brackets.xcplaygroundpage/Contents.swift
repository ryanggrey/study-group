//: [Palindromes](@previous)

/*: 
# Brackets

Test if a `String` has well formed brackets. i.e. `([])` is valid and `(((((}` is invalid.
*/


import Foundation

//: ## Implementation

class Bracket {
    
    let character: Character
    
    init?(potentialBracket: Character) {
        character = potentialBracket
        if !isBracket(potentialBracket) {
            return nil
        }
    }
    
    private func isBracket(potentialBracket: Character) -> Bool {
        switch potentialBracket {
            case "{", "}", "(", ")", "[", "]":
                return true
            default:
                return false
        }
    }
    
    func isOpen() -> Bool {
        switch self.character {
            case "{", "(", "[":
                return true
            default:
                return false
        }
    }
    
    func isClosedBy(potentialClose: Bracket) -> Bool {
        if self.character == "{" && potentialClose.character == "}" {
            return true
        }
        
        if self.character == "[" && potentialClose.character == "]" {
            return true
        }
        
        if self.character == "(" && potentialClose.character == ")" {
            return true
        }
        
        return false
    }
}

func hasWellFormedBrackets(string: String) -> Bool {
    
    var stack = [Bracket]()
    
    for char in string.characters {
        if let bracket = Bracket(potentialBracket: char) {
            if let lastBracket = stack.last {
                if lastBracket.isClosedBy(bracket) {
                    stack.removeLast()
                    
                    continue
                }
            }
            stack.append(bracket)
        }
    }
    
    if stack.isEmpty {
        return true
    }
    
    return false
}

//: ## Testing

//: ### Expect `true`
hasWellFormedBrackets("")
hasWellFormedBrackets(" ")
hasWellFormedBrackets("a")
hasWellFormedBrackets(" a ")
hasWellFormedBrackets("()")
hasWellFormedBrackets("{}")
hasWellFormedBrackets("()")
hasWellFormedBrackets("(hello)")
hasWellFormedBrackets(" (hi)")
hasWellFormedBrackets("([])")
hasWellFormedBrackets("([{}])")
hasWellFormedBrackets("{[()]}")
hasWellFormedBrackets("  { hello (world [ goodbye { world } . ] ! ) ? } end ")

//: ### Expect `false`
hasWellFormedBrackets("(")
hasWellFormedBrackets(")")
hasWellFormedBrackets("[")
hasWellFormedBrackets("]")
hasWellFormedBrackets("{")
hasWellFormedBrackets("}")
hasWellFormedBrackets("(]")
hasWellFormedBrackets("(}")
hasWellFormedBrackets("[)")
hasWellFormedBrackets("[}")
hasWellFormedBrackets("{)")
hasWellFormedBrackets("{]")
hasWellFormedBrackets("hello {(}")
hasWellFormedBrackets("((((} goodbye")


