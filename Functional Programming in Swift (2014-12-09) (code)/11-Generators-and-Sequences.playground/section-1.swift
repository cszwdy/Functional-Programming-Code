import Foundation

func one<X>(x: X?) -> GeneratorOf<X> {
    return GeneratorOf(GeneratorOfOne(x))
}

func map<A, B>(var g: GeneratorOf<A>, f: A -> B) -> GeneratorOf<B> {
    return GeneratorOf {
        g.next().map(f)
    }
}

protocol Smaller {
    func smaller() -> GeneratorOf<Self>
}

extension Array {
    var decompose : (head: T, tail: [T])? {
      return (count > 0) ? (self[0], Array(self[1..<count])) : nil
    }
}

class Box<T> {
    let unbox: T
    init(_ value: T) { self.unbox = value }
}