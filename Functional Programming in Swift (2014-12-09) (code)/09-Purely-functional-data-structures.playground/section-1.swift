class Box<T> {
    let unbox: T
    init(_ value: T) { self.unbox = value }
}
func all<T> (xs : [T], predicate : T -> Bool) -> Bool {
    for x in xs {
        if !predicate(x) {
            return false
        }
    }
    return true
}