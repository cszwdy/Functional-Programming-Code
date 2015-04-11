func lazy<Token, A>(f: @autoclosure () -> Parser<Token, A>) 
        -> Parser<Token, A> {
        
    return Parser { x in f().p(x) }
}