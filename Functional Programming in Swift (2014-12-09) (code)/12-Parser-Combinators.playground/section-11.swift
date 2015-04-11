func parseA() -> Parser<Character, Character> {
    let a: Character = "a"
    return Parser { x in
        if let (head, tail) = x.decompose {
            if head == a { 
                return one((a, tail)) 
            }
        }
        return none()
    }
}