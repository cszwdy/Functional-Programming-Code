func operator1(character: Character, 
               evaluate: (Int, Int) -> Int, 
               operand: Calculator) -> Calculator {
               
   let withOperator = curry { evaluate($0, $1) } </> operand 
                      <* token(character) <*> operand
   return withOperator <|> operand
}