func tabulate<A>(times: Int, f: Int -> A) -> [A] {
    return Array(0..<times).map(f)
}

func random(#from: Int, #to: Int) -> Int {
    return from + (Int(arc4random()) % (to-from))
}

extension String: Arbitrary {
    static func arbitrary() -> String {
        let randomLength = random(from: 0, to: 40)
        let randomCharacters = tabulate(randomLength) { _ in 
            Character.arbitrary() 
        }
        return reduce(randomCharacters, "") { $0 + String($1) }
    }
}