let parser2 = pure(curry { string([$0, $1, $2]) }) <*> aOrB 
              <*> aOrB <*> token(b)
testParser(parser2, "abb")