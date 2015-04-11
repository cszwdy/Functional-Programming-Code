let number = pure { characters in string(characters).toInt()! }
             <*> oneOrMore(decimalDigit)