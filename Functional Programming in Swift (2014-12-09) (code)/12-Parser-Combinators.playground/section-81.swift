func oneOrMore<Token, A>(p: Parser<Token, A>) -> Parser<Token, [A]> {
    return pure(prepend) <*> p <*> zeroOrMore(p)
}