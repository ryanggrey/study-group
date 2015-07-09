//: [Palindromes](@previous)

/*: 
# Brackets

Test if a `String` has well formed brackets. i.e. `([])` is valid and `(((((}` is invalid.
*/


import Foundation

//: ## Implementation

func hasWellFormedBrackets(string: String) -> Bool {
    return true
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

