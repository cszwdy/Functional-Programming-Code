let p: Parser<Character, (Character, Character)> = 
        sequence(token(x), token(y))
testParser(p, "xyz")