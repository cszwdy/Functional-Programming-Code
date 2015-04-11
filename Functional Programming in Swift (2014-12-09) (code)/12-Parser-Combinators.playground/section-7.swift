func eof<A>() -> Parser<A, ()> {
    return Parser { stream in
        if (stream.isEmpty) {
            return one(((), stream))
        }
        return none()
    }
}

func testParser<A>(parser: Parser<Character, A>, 
                   input: String) -> String {
                   
    var result: [String] = []
    for (x, s) in parser.p(input.slice) {
        result += ["Success, found \(x), remainder: \(Array(s))"]
    }
    return result.isEmpty ? "Parsing failed." : join("\n", result)
}