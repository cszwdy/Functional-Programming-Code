func zeroOrMore<Token, A>(p: Parser<Token, A>) -> Parser<Token, [A]> {
    return (pure(prepend) <*> p <*> lazy(zeroOrMore(p))) <|> pure([])
}