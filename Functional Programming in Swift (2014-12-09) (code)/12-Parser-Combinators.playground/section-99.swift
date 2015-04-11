func operator0(character: Character, 
               evaluate: (Int, Int) -> Int, 
               operand: Calculator) -> Calculator {
               
   return curry { evaluate($0, $1) } </> operand 
          <* token(character) <*> operand
}

func pAtom0() -> Calculator { return number }
func pMultiply0() -> Calculator { return operator0("*", *, pAtom0()) }
func pAdd0() -> Calculator { return operator0("+", +, pMultiply0()) }
func pExpression0() -> Calculator { return pAdd0() }

testParser(pExpression0(), "1+3*3")