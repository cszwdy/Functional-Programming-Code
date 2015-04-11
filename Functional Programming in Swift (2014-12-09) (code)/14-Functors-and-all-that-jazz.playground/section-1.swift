import Foundation
typealias Position = CGPoint

infix operator <*> { associativity left precedence 150 }

func curry<A, B, C>(f: (A, B) -> C) -> A -> B -> C {
    return { x in { y in f(x, y) } }
}

func flatten<T>(xss: [[T]]) -> [T] {
    return xss.reduce([]) { result, xs in result + xs }
}