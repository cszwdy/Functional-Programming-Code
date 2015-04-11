func toInteger(c: Character) -> Int {
    return String(c).toInt()!
}
testParser(combinator(pure(toInteger), token(three)), "3")