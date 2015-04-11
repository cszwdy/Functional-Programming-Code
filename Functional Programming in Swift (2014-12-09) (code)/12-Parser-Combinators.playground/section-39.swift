let p2 = sequence(sequence(token(x), token(y)), token(z))
testParser(p2, "xyz")