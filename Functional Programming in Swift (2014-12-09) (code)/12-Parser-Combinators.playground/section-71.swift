func characterFromSet(set: NSCharacterSet) 
        -> Parser<Character, Character> {
        
    return satisfy { return member(set, $0) }
}

let decimals = NSCharacterSet.decimalDigitCharacterSet()
let decimalDigit = characterFromSet(decimals)