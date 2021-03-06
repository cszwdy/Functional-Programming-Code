func parseCharacter(character: Character) 
        -> Parser<Character, Character> {
        
    return Parser { x in
        if let (head, tail) = x.decompose {
            if head == character { 
                return one((character, tail)) 
            }
        }
        return none()
    }
}