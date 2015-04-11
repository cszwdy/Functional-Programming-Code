import Foundation

func curry<A, B, C>(f: (A, B) -> C) -> A -> B -> C {
    return { x in { y in f(x, y) } }
}

func flip<A, B, C>(f: (B, A) -> C) -> (A, B) -> C {
    return { (x, y) in f(y, x) }
}