func none<A>() -> SequenceOf<A> {
    return SequenceOf(GeneratorOf { nil } )
}
func one<A>(x: A) -> SequenceOf<A> {
    return SequenceOf(GeneratorOfOne(x))
}

struct JoinedGenerator<A>: GeneratorType {
    typealias Element = A
    
    var generator: GeneratorOf<GeneratorOf<A>>
    var current: GeneratorOf<A>?
    
    init(_ g: GeneratorOf<GeneratorOf<A>>) {
        generator = g
        current = generator.next()
    }
    
    mutating func next() -> A? {
        if var c = current {
            if let x = c.next() {
                return x
            } else {
                current = generator.next()
                return next()
            }
        }
        return nil
    }
}

func flatMap<A, B>(ls: SequenceOf<A>, 
                   f: A -> SequenceOf<B>) -> SequenceOf<B> {
                  
    return join(map(ls, f))
}

func map<A, B>(var g: GeneratorOf<A>, f: A -> B) -> GeneratorOf<B> {
    return GeneratorOf { map(g.next(), f) }
}

func map<A, B>(var s: SequenceOf<A>, f: A -> B) -> SequenceOf<B> {
    return SequenceOf {  map(s.generate(), f) }
}

func join<A>(s: SequenceOf<SequenceOf<A>>) -> SequenceOf<A> {
    return SequenceOf { 
        JoinedGenerator(map(s.generate()) { 
            $0.generate() 
        }) 
    }
}

func +<A>(l: SequenceOf<A>, r: SequenceOf<A>) -> SequenceOf<A> {
    return join(SequenceOf([l, r]))
}

func const<A, B>(x: A) -> B -> A {
    return { _ in x }
}

func prepend<A>(l: A) -> [A] -> [A] {
    return { (x: [A]) in [l] + x }
}

extension String {
    var characters: [Character] {
        var result: [Character] = []
        for c in self {
            result += [c]
        }
        return result
    }
    var slice: Slice<Character> {
        let res = self.characters
        return res[0..<res.count]
    }
}

extension Slice {
    var head: T? {
        return self.isEmpty ? nil : self[0]
    }
    
    var tail: Slice<T> {
        if (self.isEmpty) {
            return self
        }
        return self[(self.startIndex+1)..<self.endIndex]
    }
    
    var decompose: (head: T, tail: Slice<T>)? {
        return self.isEmpty ? nil 
                            : (self[self.startIndex], self.tail)
    }
}

extension Character: Printable {
    public var description: String {
       return "\"(self)\""
    }
}

func string(characters: [Character]) -> String {
    var s = ""
    s.extend(characters)
    return s
}

func member(set: NSCharacterSet, character: Character) -> Bool {
    let unichar = (String(character) as NSString).characterAtIndex(0)
    return set.characterIsMember(unichar)
}