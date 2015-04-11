func op(character: Character, 
        evaluate: (Int, Int) -> Int, 
        operand: Calculator) -> Calculator {
        
    let withOperator = curry(flip(evaluate)) </ token(character) 
                       <*> operand
    return optionallyFollowed(operand, withOperator)
}