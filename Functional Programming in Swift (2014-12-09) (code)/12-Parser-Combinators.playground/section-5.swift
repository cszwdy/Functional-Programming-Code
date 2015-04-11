struct Parser<Token, Result> {
    let p: Slice<Token> -> SequenceOf<(Result, Slice<Token>)>
}

infix operator <*> { associativity left precedence 150 }
func <*><Token, A, B>(l: Parser<Token, A -> B>,
                      r: Parser<Token, A>) -> Parser<Token, B> {
                      
    return Parser { input in                                          
        let leftResults = l.p(input)
        return flatMap(leftResults) { f, leftRemainder in
            let rightResults = r.p(leftRemainder)
            return map(rightResults) { x, y in (f(x), y) }
        }
    }
}

func pure<Token, A>(value: A) -> Parser<Token, A> {
    return Parser { one((value, $0)) }
}

infix operator </> { precedence 170 }
func </> <Token, A, B>(l: A -> B, 
                       r: Parser<Token, A>) -> Parser<Token, B> {
                       
    return pure(l) <*> r
}

infix operator <*  { associativity left precedence 150 }
func <* <Token, A, B>(p: Parser<Token, A>, 
                      q: Parser<Token, B>) -> Parser<Token, A> {
                      
    return {x in {_ in x} } </> p <*> q
}

infix operator  *> { associativity left precedence 150 }
func *> <Token, A, B>(p: Parser<Token, A>, 
                      q: Parser<Token, B>) -> Parser<Token, B> {
                      
    return {_ in {y in y} } </> p <*> q
}