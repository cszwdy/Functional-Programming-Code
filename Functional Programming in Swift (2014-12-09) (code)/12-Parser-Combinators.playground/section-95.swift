let multiply: Character = "*"
let parseMultiplication = curry(*) </> number <* token(multiply) 
                          <*> number
testParser(parseMultiplication, "8*8")