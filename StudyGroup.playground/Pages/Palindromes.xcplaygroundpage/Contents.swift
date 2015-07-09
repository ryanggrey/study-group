//: # Palindromes

import Foundation

func isPalindrome(string: String) -> Bool {
    
    let allowedChars = NSCharacterSet.alphanumericCharacterSet()
    let ignoredChars = allowedChars.invertedSet
    
    let strippedStringComponents: [String] = string.componentsSeparatedByCharactersInSet(ignoredChars)
    let strippedString: String = strippedStringComponents.reduce("", combine: {$0 + $1})
    
    let lowercaseString = strippedString.lowercaseString
    let reversedString = String(lowercaseString.characters.reverse())
    
    return lowercaseString == reversedString
}

//: Expect `true`

isPalindrome("Animal loots foliated detail of stool lamina.")
isPalindrome("Anna")
isPalindrome("Anne, I vote more cars race Rome to Vienna.")
isPalindrome("Are Mac ‘n’ Oliver ever evil on camera?")
isPalindrome("Are we not drawn onward to new era?")
isPalindrome("Are we not drawn onward, we few, drawn onward to new era?")
isPalindrome("Are we not pure? “No sir!” Panama’s moody Noriega brags. “It is garbage!” Irony dooms a man; a prisoner up to new era.")
isPalindrome("Art, name no tub time. Emit but one mantra.")
isPalindrome("As I pee, sir, I see Pisa!")
isPalindrome("Avid diva.")

//: Weird `true` cases
isPalindrome("")
isPalindrome("     ")
isPalindrome("b")
isPalindrome("bbb")
isPalindrome(".")
isPalindrome("...")
isPalindrome("      !")
isPalindrome("!     !     ")
isPalindrome("  !  ?  ")

//: Expect `false`
isPalindrome("Not a palindome!")
isPalindrome("Ryan")
isPalindrome("123")