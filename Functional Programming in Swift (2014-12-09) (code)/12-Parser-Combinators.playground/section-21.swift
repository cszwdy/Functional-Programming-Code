func satisfy<Token>(condition: Token -> Bool) 
        -> Parser<Token, Token> {
        
    return Parser { x in
        if let (head, tail) = x.decompose {
            if condition(head) { 
                return one((head, tail)) 
            }
        }
        return none()
    }
}