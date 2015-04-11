func combine(a: Character)(b: Character)(c: Character) -> String {
    return string([a, b, c])
}
let parser = pure(combine) <*> aOrB <*> aOrB <*> token(b)
testParser(parser, "abb")